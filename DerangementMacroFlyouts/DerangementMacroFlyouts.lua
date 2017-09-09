
-----------------------------
-- Variables and Constants --
-----------------------------

--deeFlyoutConfig;      --our user's saved variable, defined in the TOC file

deeFlyout = {};         --where we store everything "local" to the deeFlyout addon

deeFlyout.visualsShown = false; --whether button visuals should be shown (true) or hidden (false)

deeFlyout.buttons = {};         --list of active flyout buttons
deeFlyout.deadButtons = {};     --list of "destroyed" flyout buttons

deeFlyout.slashHandlers = {};   --table of functions to handle slash commands


-------------------------------------------
-- Button Creation/Destruction functions --
-------------------------------------------
do
    --"destroys" a flyout button by disabling and hiding it. Returns true if deletion is successful.
    deeFlyout.DestroyButton = function(name)
        local btn = deeFlyout.buttons[name];
        if (btn == nil) then return end
        
        btn:Hide();
        btn:Disable();
        
        btn.visuals:Hide();
        
        deeFlyout.buttons[name] = nil;
        deeFlyout.deadButtons[name] = btn;
        
        return true;
    end
    
    
    --"revives" a destroyed button. Returns the revived button, is successful.
    deeFlyout.ReviveButton = function(parent, flyoutID, name)
        
        local btn = deeFlyout.deadButtons[name];
        if (btn == nil) then return end
        
        btn:SetAttribute("Spell", flyoutID);
        
        btn:SetParent(parent);
        btn:ClearAllPoints();
        btn:SetAllPoints();
        
        if (deeFlyout.visualsShown) then
            btn.visuals:Show();
        end
        
        btn:Enable();
        btn:Show();
        
        deeFlyout.deadButtons[name] = nil;
        deeFlyout.buttons[name] = btn;     
        
        return btn;     --dead button successfully revived: we're done!
    
    end
    
    
    --creates an invisible flyout button in the same position as parent, with the given flyoutID.
    --returns the created button
    deeFlyout.CreateButton = function(parent, flyoutID, name)
    
        --find a dead button name, if necessary
        if (name==nil) then
            name = next(deeFlyout.deadButtons);
        end
    
        --try to revive dead button
        local btn = deeFlyout.ReviveButton(parent, flyoutID, name);
        if (btn ~= nil) then return btn end     --if revival succeeds, we're done.
                
                
        --dead button not found: find an unused name for a new one, if necessary
        local i=1;
        while (name==nil) do
            if (deeFlyout.buttons["dFly"..i] == nil) then
                name = "dFly"..i;
            else
                i=i+1; 
            end
        end
        
        --make sure we're not creating a duplicate-named button
        if (deeFlyout.buttons[name] ~= nil) then
            print("Error: A flyout button named '"..name.."' already exists.");
            return;
        end
        
        --create the button
        local btn = CreateFrame("Button", name, parent, "DeeFlyoutButtonTemplate");
        btn:SetAttribute("Spell", flyoutID);
        btn.visuals.label:SetText(name);
        
        if (deeFlyout.visualsShown) then
            btn.visuals:Show();
        end
        
        deeFlyout.buttons[name] = btn;
        
        return btn;
    end
    
end

-------------------------------------------
-- Interactive Button Creation Functions --
-------------------------------------------
do
    --TODO: check for in-combat lockdown
    
    --prompts for flyoutID, parentName (if necessary), then creates a button in user's config
    deeFlyout.PromptNewFlyoutID = function( parentName, flyoutID )
        if (flyoutID == nil) then
            deeFlyout.ShowFlyoutPrompt( parentName );
            
        else
           deeFlyout.PromptNewParent( parentName, flyoutID );
        end
    end
    

    --shows the flyoutID prompt, then resumes the interactive button creation process
    deeFlyout.ShowFlyoutPrompt = function(parentName)
        local menuTable = {
            { text = "Select a flyout to create:", notCheckable=true, isTitle=true},
        };
        for i=1, GetNumFlyouts() do
            local id = GetFlyoutID(i);
            local name, description, numSlots, isKnown = GetFlyoutInfo(id);
            if (isKnown) then
                tinsert(menuTable,
                    {
                        text = name, notCheckable = true,
                        func = function() deeFlyout.PromptNewParent(parentName, id) end,
                    }
                );
            end
        end
        tinsert(menuTable, { text="(cancel)", notCheckable=true });
        
        EasyMenu(menuTable, DeeFlyoutMenuFrame, "cursor");
    end


    --prompts for parent (if necessary), then creates a button in user's config
    deeFlyout.PromptNewParent = function( parentName, flyoutID )
        if (parentName == nil) then
            deeFlyout.ShowParentPrompt(flyoutID);
            
        else
            deeFlyout.NewButtonConfig( parentName, flyoutID );
        end
    end
    
    
    --prompts for a parent frame, then resumes the interactive button creation process
    deeFlyout.ShowParentPrompt = function(flyoutID)
        DeeFlyoutParentPicker.flyoutID = flyoutID;  --rememeber flyoutID
        
        SetOverrideBindingClick(DeeFlyoutParentPicker, true, "escape", "DeeFlyoutParentPicker", "RightButton");
        DeeFlyoutParentPicker:Show();
    end
    
    
    --prompts for a parent frame, then resumes the interactive button creation process
    deeFlyout.HideParentPrompt = function()
        ClearOverrideBindings(DeeFlyoutParentPicker);
        DeeFlyoutParentPicker:Hide();
    end
    
    
    --processes a click 
    DeeFlyoutParentPicker_OnClick = function(this, button)
        if (button=="RightButton") then
            deeFlyout.HideParentPrompt();
            
        else
            local menuTable = {
                { text = "Select a frame to attach to:", notCheckable=true, isTitle=true},
            };
            local frame = EnumerateFrames()
            while frame do
                if frame:IsVisible() and MouseIsOver(frame) and (frame~=this) then
                    local name;
                    if (frame.GetName ~= nil) then name = frame:GetName() end
                    
                    if (name ~= nil) then 
                        tinsert(menuTable,
                            {
                                text = name, notCheckable = true,
                                func = function()
                                    deeFlyout.HideParentPrompt();
                                    deeFlyout.NewButtonConfig(name, DeeFlyoutParentPicker.flyoutID);
                                end,
                            }
                        );
                        DEFAULT_CHAT_FRAME:AddMessage(frame:GetName())
                    end
                end
                frame = EnumerateFrames(frame)
            end 
            tinsert(menuTable,
                {
                    text = "(cancel)", notCheckable = true,
                    func = function() deeFlyout.HideParentPrompt() end
                }
            );
            
            EasyMenu(menuTable, DeeFlyoutMenuFrame, "cursor");
        end
    end
    
    
    --creates a button in user's config
    deeFlyout.NewButtonConfig = function( parentName, flyoutID )
        --create button
        local btn = deeFlyout.CreateButton( _G[parentName], flyoutID );
        local name = btn:GetName();
        
        --add button to user's config
        deeFlyoutConfig[name] = {
            flyoutID = flyoutID,
            parentName = parentName,
        };
        
        print("Button created: '" .. name .. "'")
    end
    
end


-------------------------------------------
-- Interactive Button Deletion Functions --
-------------------------------------------
do    
    --TODO: check for in-combat lockdown
    
    --prompts for button (if necessary), then removes button from user's config
    deeFlyout.PromptDelButton = function( name )
        if (name == nil) then
            deeFlyout.ShowButtonPrompt();
            
        else
            deeFlyout.DelButtonConfig( name );
        end
    end
    
    --sets up hooks to hide visuals when button prompt is closed
    deeFlyout.watchDialogClose = function()
        if (not deeFlyout.dialogCloseHooked) then
            deeFlyout.dialogCloseHooked = true;
            
            DropDownList1:HookScript("OnHide",
                function(this)
                    if (deeFlyout.watchNextDialogClose) then
                        deeFlyout.watchNextDialogClose = false;
                        deeFlyout.HideVisuals();
                    end
                end
            ); 
        end
        
        deeFlyout.watchNextDialogClose = true;
    end
    
    --shows the flyout-button prompt, then resumes the interactive button deletion process
    deeFlyout.ShowButtonPrompt = function()
        
        local menuTable = {
            { text = "Select a button to delete:", notCheckable=true, isTitle=true},
        };
        for name in pairs(deeFlyout.buttons) do
            tinsert(menuTable,
                {
                    text = name, notCheckable = true,
                    func = function() deeFlyout.DelButtonConfig(name) end,
                }
            );
        end
        tinsert(menuTable, { text="(cancel)", notCheckable=true });

        EasyMenu(menuTable, DeeFlyoutMenuFrame, "cursor");

        deeFlyout.ShowVisuals();
        deeFlyout.watchDialogClose();
        
    end

    
    --removes a button from user's config
    deeFlyout.DelButtonConfig = function( name )
        if (deeFlyout.DestroyButton(name)) then
            deeFlyoutConfig[name] = nil
            print("Button deleted: '" .. name .. "'")
            
        else
            print("Button not found: '" .. name .. "'")
        end
    end
    
end


-----------------------------------
-- Visuals Show/Hiding Functions --
-----------------------------------
do
    deeFlyout.ShowVisuals = function()
        deeFlyout.visualsShown = true;
        for _, frame in pairs(deeFlyout.buttons) do
            frame.visuals:Show();
        end
    end
    
    
    deeFlyout.HideVisuals = function()
        deeFlyout.visualsShown = false;
        for _, frame in pairs(deeFlyout.buttons) do
            frame.visuals:Hide();
        end
    end
    
    
    
    deeFlyout.ToggleVisuals = function()
        if (deeFlyout.visualsShown) then
            deeFlyout.HideVisuals();
        else
            deeFlyout.ShowVisuals();
        end
    end

end


-----------------------------
-- Button listing function --
-----------------------------

deeFlyout.ListButtons = function()
    print("Derangement Flyout button list:");
    local count=0;
    for name, frame in pairs(deeFlyout.buttons) do
        parentName = frame:GetParent():GetName();
        
        flyoutID = frame:GetAttribute("Spell");
        flyoutName = GetFlyoutInfo(flyoutID);
        
        print("  "..name .. ": ".. flyoutName.. " (" .. parentName .. ")");
        
        count = count + 1;
    end
    
    print("("..count.." total)");
end


-------------------------
-- Slash-command setup --
-------------------------
do
    deeFlyout.slashHandlers["new"] = deeFlyout.PromptNewFlyoutID;
    deeFlyout.slashHandlers["del"] = deeFlyout.PromptDelButton;
    deeFlyout.slashHandlers["show"] = deeFlyout.ShowVisuals;
    deeFlyout.slashHandlers["hide"] = deeFlyout.HideVisuals;
    deeFlyout.slashHandlers["toggle"] = deeFlyout.ToggleVisuals;
    deeFlyout.slashHandlers["list"] = deeFlyout.ListButtons;
    
    
    SLASH_DEEFLYOUT1 = '/dfly';
    SLASH_DEEFLYOUT2 = '/deeflyout';
    function SlashCmdList.DEEFLYOUT(msg, editbox)
        local cmd, params = strsplit(" ", strtrim(msg), 2);
        
        handler = deeFlyout.slashHandlers[cmd];
        if (handler == nil) then
            local keys = {};
            for k, _ in pairs(deeFlyout.slashHandlers) do
               tinsert(keys, k);
            end
            
            print( "Derangement Macro Flyouts commands: " .. table.concat( keys, ", ") .."." );
            
        else
            if( params == nil ) then
                handler()
            else
                local paramTbl = {};
                for v in string.gmatch(params, "[^ ]+") do
                  tinsert(paramTbl, v);
                end
                
                handler(unpack(paramTbl));
            end
        end
    end
    
end


-----------------------------------
-- Saved Variables loading setup --
-----------------------------------
do
    local frame = CreateFrame("Frame");
    frame:RegisterEvent("ADDON_LOADED");
    
    deeFlyout.waitingButtons = {};  --table with buttons whose parents aren't loaded yet    
   
    frame.OnEvent = function(this, event, addon)
        if (event == "ADDON_LOADED") then
            
            if (addon == "DerangementMacroFlyouts") then
                if (deeFlyoutConfig==nil) then
                    --First time running addon on this char: config starts as empty table
                    deeFlyoutConfig={};
                    
                else
                    --populate buttons, as per user's config
                    for name, data in pairs(deeFlyoutConfig) do
                        local parent = _G[data.parentName];
                    
                        if (parent == nil) then   --parent addon not yet loaded. add to waiting list
                            deeFlyout.waitingButtons[name]=data;
                            
                        else                    --parent addon already loaded. create button
                            deeFlyout.CreateButton( parent, data.flyoutID, name );
                        end
                    end
                end
                
            else    --another addon has loaded: check if waiting buttons have parents now.
                for name, data in pairs(deeFlyout.waitingButtons) do
                    local parent = _G[data.parentName];
                    
                    if (parent ~= nil) then   --parent addon has loaded! create button
                        deeFlyout.CreateButton( parent, data.flyoutID, name );
                        deeFlyout.waitingButtons[name] = nil;
                    end
                end
            end
            
            --if addon's loaded and waiting list is empty, stop listening to addon loads
            if (deeFlyoutConfig ~= nil) and not next(deeFlyout.waitingButtons) then
                this:UnregisterEvent("ADDON_LOADED");
            end
        end
    end
    
    frame:SetScript("OnEvent", frame.OnEvent);
end
