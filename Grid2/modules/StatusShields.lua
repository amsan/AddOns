-- Shields absorb status, created by Michael

local Shields = Grid2.statusPrototype:new("shields")
local HealthShields = Grid2.statusPrototype:new("health-shields")				--added by Derangement
local ShieldsLight = Grid2.statusPrototype:new("shields-light")					--added by Derangement
local ShieldsOverflowing = Grid2.statusPrototype:new("shields-overflowing")		--added by Derangement

local Grid2 = Grid2
local fmt   = string.format
local tostring = tostring
local AbbreviateLargeNumbers = AbbreviateLargeNumbers
local UnitGetTotalAbsorbs = UnitGetTotalAbsorbs
local UnitHealth = UnitHealth
local UnitHealthMax = Grid2.Globals.UnitHealthMax


function Shields:UpdateHealthMax(_, func)
	UnitHealthMax = func
	self:UpdateAllIndicators()
end
HealthShields.UpdateHealthMax = Shields.UpdateHealthMax;
ShieldsLight.UpdateHealthMax = Shields.UpdateHealthMax;
ShieldsOverflowing.UpdateHealthMax = Shields.UpdateHealthMax;


function Shields:OnEnable()
	self:UpdateDB()
	self:RegisterEvent("UNIT_ABSORB_AMOUNT_CHANGED")
	self:RegisterMessage("Grid2_Update_UnitHealthMax", "UpdateHealthMax")
end
function HealthShields:OnEnable()
	self:UpdateDB()
	self:RegisterEvent("UNIT_HEALTH")
	self:RegisterEvent("UNIT_ABSORB_AMOUNT_CHANGED")
	self:RegisterMessage("Grid2_Update_UnitHealthMax", "UpdateHealthMax")
end
ShieldsLight.OnEnable = HealthShields.OnEnable;
ShieldsOverflowing.OnEnable = HealthShields.OnEnable;


function Shields:OnDisable()
	self:UnregisterEvent("UNIT_ABSORB_AMOUNT_CHANGED")
	self:UnregisterMessage("Grid2_Update_UnitHealthMax")
end
function HealthShields:OnDisable()
	self:UnregisterEvent("UNIT_HEALTH")
	self:UnregisterEvent("UNIT_ABSORB_AMOUNT_CHANGED")
	self:UnregisterMessage("Grid2_Update_UnitHealthMax")
end
ShieldsLight.OnDisable = HealthShields.OnDisable;
ShieldsOverflowing.OnDisable = HealthShields.OnDisable;


function Shields:UNIT_ABSORB_AMOUNT_CHANGED(_,unit)
	self:UpdateIndicators(unit)
end
HealthShields.UNIT_HEALTH = Shields.UNIT_ABSORB_AMOUNT_CHANGED;
HealthShields.UNIT_ABSORB_AMOUNT_CHANGED = Shields.UNIT_ABSORB_AMOUNT_CHANGED;
ShieldsLight.UNIT_HEALTH = Shields.UNIT_ABSORB_AMOUNT_CHANGED;
ShieldsLight.UNIT_ABSORB_AMOUNT_CHANGED = Shields.UNIT_ABSORB_AMOUNT_CHANGED;
ShieldsOverflowing.UNIT_HEALTH = Shields.UNIT_ABSORB_AMOUNT_CHANGED;
ShieldsOverflowing.UNIT_ABSORB_AMOUNT_CHANGED = Shields.UNIT_ABSORB_AMOUNT_CHANGED;


function Shields:GetColor(unit)
	local shield = UnitGetTotalAbsorbs(unit) or 0;
	local healthMax = UnitHealthMax(unit) or 1;
	
	local c
	local amount = shield / healthMax
	local dbx = self.dbx
	if amount <= dbx.thresholdLow then
		c = dbx.color4
	elseif amount <= dbx.thresholdMedium then
		c = dbx.color3
	elseif amount < 1 then
		c = dbx.color2
	else
		c = dbx.color1
	end
	
	return c.r, c.g, c.b, c.a
end
function HealthShields:GetColor(unit)
	local shield = UnitGetTotalAbsorbs(unit) or 0;
	local health = UnitHealth(unit) or 0;
	local healthMax = UnitHealthMax(unit) or 1;
	
	local c
	local amount = (shield + health) / healthMax
	local dbx = self.dbx
	if amount <= dbx.thresholdLow then
		c = dbx.color4
	elseif amount <= dbx.thresholdMedium then
		c = dbx.color3
	elseif amount < 1 then
		c = dbx.color2
	else
		c = dbx.color1
	end
	
	
	return c.r, c.g, c.b, c.a
end
ShieldsLight.GetColor = Shields.GetColor;
ShieldsOverflowing.GetColor = Shields.GetColor;


function Shields:GetText(unit)
	return fmt("%.1fk", (UnitGetTotalAbsorbs(unit) or 0) / 1000 )
end
function HealthShields:GetText(unit)
	local shield = (UnitGetTotalAbsorbs(unit) or 0);
	local health = UnitHealth(unit) or 0;
	
	return tostring( AbbreviateLargeNumbers(shield + health) )
end
ShieldsLight.GetText = Shields.GetText;
ShieldsOverflowing.GetText = Shields.GetText;


-- Using a user defined max shield value (used by bar indicators)
local function Shields_GetPercentCustomMax(self, unit)
	return (UnitGetTotalAbsorbs(unit) or 0) / self.maxShieldValue
end
-- Use unit maximum health as max shield value (used by bar indicators)
local function Shields_GetPercentHealthMax(_, unit)
	return (UnitGetTotalAbsorbs(unit) or 0) / UnitHealthMax(unit)
end


-- Using a user defined max shield value (used by bar indicators)
local function HealthShields_GetPercentCustomMax(self, unit)
	local shield = UnitGetTotalAbsorbs(unit) or 0;
	local health = UnitHealth(unit) or 0;
	
	return (shield + health) / self.maxShieldValue
end
-- Use unit maximum health as max shield value (used by bar indicators)
local function HealthShields_GetPercentHealthMax(_, unit)
	local shield = UnitGetTotalAbsorbs(unit) or 0;
	local health = UnitHealth(unit) or 0;
	local healthMax = UnitHealthMax(unit) or 1;
	
	return (shield + health) / healthMax
end


local function Shields_IsActiveNormal(_, unit)
	return (UnitGetTotalAbsorbs(unit) or 0)>0
end

local function Shields_IsActiveBlink(self, unit)
	local value = UnitGetTotalAbsorbs(unit) or 0
	if value>0 then
		if value>self.blinkThreshold then
			return true
		else	
			return "blink"
		end	
	end
end


local function HealthShields_IsActiveNormal(_, _)
	return true
end

local function HealthShields_IsActiveBlink(self, unit)
	local shield = UnitGetTotalAbsorbs(unit) or 0;
	local health = UnitHealth(unit) or 0;

	if shield + health > self.blinkThreshold then
		return true
	else	
		return "blink"
	end	
end


local function ShieldsLight_IsActiveNormal(_, unit)
	local shield = (UnitGetTotalAbsorbs(unit) or 0);
	local health = UnitHealth(unit) or 0;
	local healthMax = UnitHealthMax(unit) or 1;
	
	return (
		shield > 0 and
		shield + health <= healthMax
	);
end

local function ShieldsLight_IsActiveBlink(self, unit)
	local shield = (UnitGetTotalAbsorbs(unit) or 0);
	local health = UnitHealth(unit) or 0;
	local healthMax = UnitHealthMax(unit) or 1;
	
	if (
		shield > 0 and
		shield + health <= healthMax
	) then
		if shield > self.blinkThreshold then
			return true
		else	
			return "blink"
		end	
	end
end


local function ShieldsOverflowing_IsActiveNormal(_, unit)
	local shield = UnitGetTotalAbsorbs(unit) or 0;
	local health = UnitHealth(unit) or 0;
	local healthMax = UnitHealthMax(unit) or 1;
	
	return (
		shield > 0 and
		shield + health > healthMax
	);
end

local function ShieldsOverflowing_IsActiveBlink(self, unit)
	local shield = UnitGetTotalAbsorbs(unit) or 0;
	local health = UnitHealth(unit) or 0;
	local healthMax = UnitHealthMax(unit) or 1;
	
	if (
		shield > 0 and
		shield + health > healthMax
	) then
		if shield > self.blinkThreshold then
			return true
		else	
			return "blink"
		end	
	end
end


function Shields:UpdateDB()
	self.maxShieldValue = self.dbx.maxShieldValue
	self.blinkThreshold = self.dbx.blinkThreshold
	self.GetPercent     = self.maxShieldValue and Shields_GetPercentCustomMax or Shields_GetPercentHealthMax
	self.IsActive       = self.blinkThreshold and Shields_IsActiveBlink or Shields_IsActiveNormal
end
function HealthShields:UpdateDB()
	self.maxShieldValue = self.dbx.maxShieldValue
	self.blinkThreshold = self.dbx.blinkThreshold
	self.GetPercent     = self.maxShieldValue and HealthShields_GetPercentCustomMax or HealthShields_GetPercentHealthMax
	self.IsActive       = self.blinkThreshold and HealthShields_IsActiveBlink or HealthShields_IsActiveNormal
end
function ShieldsLight:UpdateDB()
	self.maxShieldValue = self.dbx.maxShieldValue
	self.blinkThreshold = self.dbx.blinkThreshold
	self.GetPercent     = self.maxShieldValue and Shields_GetPercentCustomMax or Shields_GetPercentHealthMax
	self.IsActive       = self.blinkThreshold and ShieldsLight_IsActiveBlink or ShieldsLight_IsActiveNormal
end
function ShieldsOverflowing:UpdateDB()
	self.maxShieldValue = self.dbx.maxShieldValue
	self.blinkThreshold = self.dbx.blinkThreshold
	self.GetPercent     = self.maxShieldValue and Shields_GetPercentCustomMax or Shields_GetPercentHealthMax
	self.IsActive       = self.blinkThreshold and ShieldsOverflowing_IsActiveBlink or ShieldsOverflowing_IsActiveNormal
end


local function Shields_Create(baseKey, dbx)
	Grid2:RegisterStatus(Shields, { "color", "percent", "text" }, baseKey, dbx)
	return Shields
end

local function HealthShields_Create(baseKey, dbx)
	Grid2:RegisterStatus(HealthShields, { "color", "percent", "text" }, baseKey, dbx)
	return HealthShields
end

local function ShieldsLight_Create(baseKey, dbx)
	Grid2:RegisterStatus(ShieldsLight, { "color", "percent", "text" }, baseKey, dbx)
	return ShieldsLight
end

local function ShieldsOverflowing_Create(baseKey, dbx)
	Grid2:RegisterStatus(ShieldsOverflowing, { "color", "percent", "text" }, baseKey, dbx)
	return ShieldsOverflowing
end


Grid2.setupFunc["shields"] = Shields_Create
Grid2.setupFunc["health-shields"] = HealthShields_Create
Grid2.setupFunc["shields-light"] = ShieldsLight_Create
Grid2.setupFunc["shields-overflowing"] = ShieldsOverflowing_Create


Grid2:DbSetStatusDefaultValue( "shields", { type = "shields", thresholdMedium = .5, thresholdLow = .25,  colorCount = 4,
	color1 = { r = 1, g = 1,   b = 0, a=1 },
	color2 = { r = 0, g = 1,   b = 0, a=1 },
	color3 = { r = 1, g = 1,   b = 0, a=1 },
	color4 = { r = 1, g = 0.5, b = 0, a=1 },
} ) 

Grid2:DbSetStatusDefaultValue( "health-shields", { type = "health-shields", thresholdMedium = .5, thresholdLow = .25,  colorCount = 4,
	color1 = { r = 0, g = 1,   b = 0, a=1 },
	color2 = { r = 0, g = 1,   b = 0, a=1 },
	color3 = { r = 1, g = 1,   b = 0, a=1 },
	color4 = { r = 1, g = 0.5, b = 0, a=1 },
} ) 

Grid2:DbSetStatusDefaultValue( "shields-light", { type = "shields-light", thresholdMedium = .5, thresholdLow = .25,  colorCount = 4,
	color1 = { r = 0, g = 1,   b = 0, a=1 },
	color2 = { r = 0, g = 1,   b = 0, a=1 },
	color3 = { r = 1, g = 1,   b = 0, a=1 },
	color4 = { r = 1, g = 0.5, b = 0, a=1 },
} ) 

Grid2:DbSetStatusDefaultValue( "shields-overflowing", { type = "shields-overflowing", thresholdMedium = .5, thresholdLow = .25,  colorCount = 4,
	color1 = { r = 0, g = 1,   b = 0, a=1 },
	color2 = { r = 0, g = 1,   b = 0, a=1 },
	color3 = { r = 1, g = 1,   b = 0, a=1 },
	color4 = { r = 1, g = 0.5, b = 0, a=1 },
} ) 
