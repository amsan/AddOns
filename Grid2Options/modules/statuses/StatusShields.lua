local L = Grid2Options.L


local RegisterFunc = function(self, status, options, optionParams)
	self:MakeStatusColorOptions(status, options, {
		color1 = L["Full"], colorDesc1 = L["Full shield color"],
		color2 = L["Normal"], colorDesc2 = L["Normal shield color"],
		color3 = L["Medium"], colorDesc3 = L["Medium shield color"],
		color4 = L["Low"],    colorDesc4 = L["Low shield color"],
	})
	self:MakeSpacerOptions(options, 30)
	options.maxShieldAmount = {
		type = "range",
		order = 34,
		name = L["Maximum shield amount"],
		desc = L["Value used by bar indicators. Select zero to use players Maximum Health."],
		min = 0,
		softMax = 200000,
		bigStep = 1000,
		step = 1,
		get = function () return status.dbx.maxShieldValue or 0 end,
		set = function (_, v) 
			status.dbx.maxShieldValue = v>0 and v or nil
			status:UpdateDB() 
		end,
	}
	options.thresholdMedium = {
		type = "range",
		order = 32,
		name = L["Medium shield threshold"],
		desc = L["The value below which a shield is considered medium."],
		min = 0,
		softMax = 1,
		bigStep = .1,
		step = .01,
		get = function () return status.dbx.thresholdMedium end,
		set = function (_, v)
			   if status.dbx.thresholdLow > v then v = status.dbx.thresholdLow end
			   status.dbx.thresholdMedium = v  
			   status:UpdateDB()
		end,
	}
	options.thresholdLow = {
		type = "range",
		order = 31,
		name = L["Low shield threshold"],
		desc = L["The value below which a shield is considered low."],
		min = 0,
		softMax = 1,
		bigStep = .1,
		step = .01,
		get = function () return status.dbx.thresholdLow end,
		set = function (_, v)
			   if status.dbx.thresholdMedium < v then v = status.dbx.thresholdMedium end
			   status.dbx.thresholdLow = v  
			   status:UpdateDB()
		end,
	}	
	local Grid2Frame = Grid2:GetModule("Grid2Frame")
	if Grid2Frame.db.profile.blinkType ~= "None" then
		options.blinkThreshold = {
			type = "range",
			order = 35,
			name = L["Blink Threshold"],
			desc = L["Blink Threshold at which to start blinking the status."],
			min = 0,
			softMax = 100000,
			bigStep = 100,
			step = 1,
			get = function () return status.dbx.blinkThreshold or 0	end,
			set = function (_, v)
				if v == 0 then v = nil end
				status.dbx.blinkThreshold = v
				status:UpdateDB()
			end,
		}
	end
end


Grid2Options:RegisterStatusOptions("shields", "health", RegisterFunc, {
	title = L["display remaining amount of damage absorb shields"],
	titleIcon = "Interface\\ICONS\\Spell_Holy_PowerWordShield"
} )

Grid2Options:RegisterStatusOptions("health-shields", "health", RegisterFunc, {		--added by Derangement
	title = L["display the total current health and remaining amount of damage absorb shields"],
	titleIcon = "Interface\\ICONS\\Inv_Potion_115"
} )

Grid2Options:RegisterStatusOptions("shields-light", "health", RegisterFunc, {			--added by Derangement
	title = L["display remaining amount of damage absorb shields, but only when that unit doesn't have more shields than missing health"],
	titleIcon = "Interface\\ICONS\\Spell_Holy_BlessingOfProtection"
} )

Grid2Options:RegisterStatusOptions("shields-overflowing", "health", RegisterFunc, {		--added by Derangement
	title = L["display remaining amount of damage absorb shields, but only when that unit has more shields than missing health"],
	titleIcon = "Interface\\ICONS\\Spell_Holy_PowerWordBarrier"
} )
