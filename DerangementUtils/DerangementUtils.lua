
-------------------------------
-- Dumping Functions --
-------------------------------
do
	lastDump = nil;
	lastDumpValues = nil;
	
	dump = dump or function(...)
		local dumpedValues = {...};
		
		UIParentLoadAddOn("Blizzard_DebugTools");
		DevTools_Dump( dumpedValues, 0 )
		
		lastDump = ...;
		lastDumpValues = dumpedValues;
	end
	
	
	local KEY_COLOR = "|cff88ccff";
	local OPAQUE_TYPE_COLOR = "|cff88ff88";
	
	local STRING_KEY_FORMAT = KEY_COLOR .. "%s|r=";
	local BRACKETS_KEY_FORMAT = KEY_COLOR .. "[%s]|r=";
	local OPAQUE_TYPE_FORMAT = OPAQUE_TYPE_COLOR .. "%s|r";
	
	local pairs = pairs;
	local string_format = string.format;
	local string_match = string.match;
	local string_gsub = string.gsub;
	
	
	local globalSymbolTypes = {};
	globalSymbolTypes["function"] = true;
	globalSymbolTypes["table"] = true;
	globalSymbolTypes["userdata"] = true;
	
	
	local initGlobalSymbols = function(globalSymbols)
		local needsSearch = false;
		for typename, _ in pairs(globalSymbolTypes) do
			if not globalSymbols[typename] then
				globalSymbols[typename] = {};
				needsSearch = true;
			end
		end
		
		if needsSearch then
			for k,v in pairs(getfenv(0)) do
				local typeTable = globalSymbols[type(v)]
				if ( typeTable ) then
	           		typeTable[v] = '[' .. k .. ']';
			    end
			end
		end
	end
	
	local escapeString = function( str )
		return string_gsub(str, "|","||")
	end
	
	
	local getGlobalName = function( object, globalSymbols )
		local symbolType = type(object);
		if( not globalSymbolTypes[symbolType] ) then
			return nil;
		end
		
		initGlobalSymbols( globalSymbols )
		return globalSymbols[symbolType][object];
	end
	
	
	local objectToString = function( object, globalSymbols )
		if type(object) == "nil" then
			return "nil";
		
		elseif type(object) == "boolean" then
			if( object ) then 
				return "true";
			else
				return "false";
			end
				
		elseif( type(object) == "string" ) then
			return '"' .. escapeString(object)  .. '"';
			
		elseif type(object) == "number" then
			return tostring(object);
			
		else	--TODO: get object name, if possible
			local name = getGlobalName( object, globalSymbols );
			if( name ) then
				return "<" .. type(object) .. " " .. name .. ">";
			else
				return "<" .. type(object) .. ">";
			end
		end
	end
	
	
	local keyToFormattedString = function( key, globalSymbols )
		if( type(key) == "string" ) then
			return string_format(STRING_KEY_FORMAT, escapeString(key) );
		else
			return string_format(BRACKETS_KEY_FORMAT, objectToString(key, globalSymbols) );
		end
	end
	
	local valueToFormattedString = function( object, globalSymbols )
		local objectString = objectToString( object, globalSymbols );
		
		if( type(object) == "nil" or type(object) == "boolean" or type(object) == "string" or type(object) == "number" ) then
			return objectString;
			
		else
			return string_format(OPAQUE_TYPE_FORMAT, objectString)
		end
	end
	
	
	local RunShallowDump = function( dumpedValues )
		local globalSymbols = {};
		local foundValue = false;
		local dumpedValue = nil;
		
		for index, object in pairs(dumpedValues) do
			if( not foundValue ) then
				foundValue = true;
				dumpedValue = object;
			end
      		
			if( type(object) == "table" ) then
				print( keyToFormattedString(index) .. "{" );
				for key, value in pairs(object) do
					print( "  " .. keyToFormattedString(key, globalSymbols) .. valueToFormattedString(value, globalSymbols) )
				end
				print( "}" );
				
			else
				print( keyToFormattedString(index) .. valueToFormattedString(object, globalSymbols) )
			end
		end
		if( not foundValue ) then
			print( "empty result" );
		end
		
		lastDump = dumpedValue;
		lastDumpValues = dumpedValues;
	end
	
	
	shallowDump = shallowDump or function( ... ) RunShallowDump( {...} ) end;
	sDump = sDump or function( ... ) RunShallowDump( {...} ) end;
	
	
    SLASH_DEEUTILS_SHALLOWDUMP1 = '/shallowDump';
    SLASH_DEEUTILS_SHALLOWDUMP2 = '/sDump';
    function SlashCmdList.DEEUTILS_SHALLOWDUMP(msg, editbox)
    	--dump a single variable's value
    	if (string_match(msg,"^[A-Za-z_][A-Za-z0-9_]*$")) then
	        print("shallowDump: " .. msg);
	        local val = _G[msg];
	        local args = {}
	        
	        if (val == nil) then
	            local key = keyToFormattedString(msg, {});
	            print(key .. "nil,");
	        else
	        	args[msg] = val;    
	        end
	        
	        RunShallowDump( args );
	        return;
	    end
    	
    	
    	
        print("shallowDump: value=" .. msg);
	    
	    local func,err = loadstring("return " .. msg);
	    if (not func) then
	        print("shallowDump: ERROR: " .. err);
	    
	    else
	        RunShallowDump( {func()} );
	    end
    end
end

-------------------------------
-- Pretty Printing Functions --
-------------------------------
do
    --this makes order irrelevant, and recursion possible
    local getTableInfo, toStringRecursive;
    
    
    --Returns:
    -- the number of elements in a given table
    -- whether the given table is an array (all keys are consecutive numbers, starting at 1)
    -- whether at least one of its elements is a table
    getTableInfo = function(table)
        local isArray = true;
        local hasSubtable = false;
        
        local max = 0;
        local count = 0;
        for k, v in pairs(table) do
            count = count + 1;
    
            if (type(k) == "number" and (k > 0)) then
                if k > max then max = k end
            else
                isArray = false;
            end
            
            if (type(v) == "table") then
                hasSubtable = true;
            end
    
        end
        
        return count, (isArray and max==count), hasSubtable;
    end 
    
    
    --recursively turns a given table into a human-readable string
    toStringRecursive = function(elem, lvl)
        if (lvl==nil) then lvl=0 end
        
        if (type(elem) == "table") then
            local result = "{";
            
            local tabSize, isArray, hasSubtable = getTableInfo(elem);
            
            local iterFunc;
            if (isArray) then 
                iterFunc = ipairs
            else
                iterFunc = pairs
            end
            
            local separator, separatorLast, paddingOuter, paddingInner;
            if (hasSubtable) then
                result = result .. "\n";    --add newline after opening "{"
                
                separator = ",\n";
                separatorLast = "\n";
                paddingOuter = string.rep("  ", lvl);
                paddingInner = string.rep("  ", lvl+2);
            else
                separator = ", "
                separatorLast = ""
                paddingOuter = "";
                paddingInner = "";
            end
            
            local count=1
            for k, v in iterFunc(elem) do
                result = result .. paddingInner;
                
                if (not isArray) then
                    result = result .. toStringRecursive(k, lvl+2) .. "=" 
                end            
                
                result = result .. toStringRecursive(v, lvl+2);
                
                if( count == tabSize ) then
                    result = result .. separatorLast;
                else
                    result = result .. separator;
                end
                    
                count = count+1;
            end
            
            result = result .. paddingOuter .. "}";
                    
            return result;
        
        else
            return tostring(elem);
        end
    end
    
    
    --remember default print handler
    local ph = getprinthandler();
    
    --prints a human-readable version of elem
    prettyPrint = function(elem)
        for line in string.gmatch( toStringRecursive(elem), "[^\n\r]+") do
            ph(line);
        end
    end
    
    
    --replace default print handler with our pretty printer
    setprinthandler(
    	function(...)
    		if( 1 == select("#",...) ) then
    			prettyPrint( select(1,...) );	--single arg? make it pretty, possibly over more than one line
    		else
    			ph(...);	--default back to old print behaviour for same-line printing of multiple args
		    end
    	end
    )
end



------------------------------------
-- Hiding ZoneAbilityFrame Art --
------------------------------------
do
	if( 
		ZoneAbilityFrame and 
		ZoneAbilityFrame.SpellButton and
		ZoneAbilityFrame.SpellButton.Style 
	) then
	    ZoneAbilityFrame.SpellButton.Style:Hide();
	end
end


--------------------------------
-- Chat arrow-scrolling setup --
--------------------------------
do
    local function hook_ChatEdit_OnShow(self)
    	self:SetAltArrowKeyMode(nil);
    end
    
    hooksecurefunc("ChatEdit_OnShow", hook_ChatEdit_OnShow)
end



------------------------
-- Minimap wheel-zoom --
------------------------
do
	Minimap:EnableMouseWheel(true)
	Minimap:SetScript("OnMouseWheel", function(mp, input)
		if input > 0  then
			MinimapZoomIn:Click();
    	elseif input < 0 then
			MinimapZoomOut:Click();
	    end
	end)
end


----------------------------------
-- ReloadUI slash-command setup --
----------------------------------
do
    SLASH_DEEUTILS_RELOADUI1 = '/rl';
    function SlashCmdList.DEEUTILS_RELOADUI(msg, editbox)
        ReloadUI();
    end
end

---------------------------------
-- Test code (event handling) --
---------------------------------
--[[
do
	local skippedEvents = {
		UNIT_AURA = true,
		UNIT_ABSORB_AMOUNT_CHANGED = true,
		CHAT_MSG_CHANNEL = true,
	};
	
	local function onEvent (self, event, ...)
		if not skippedEvents[event] then
			print("derangementUtils", event, ...);
		end
	end
	
	
	local f = CreateFrame("frame");
	
	--f:RegisterAllEvents();
	--f:RegisterEvent("ACTIONBAR_SLOT_CHANGED");
	--f:RegisterEvent("SPELLS_CHANGED");
	--f:RegisterEvent("UPDATE_MACROS");
	f:RegisterEvent("GET_ITEM_INFO_RECEIVED");
	
	f:SetScript("OnEvent", onEvent);

end--]]
