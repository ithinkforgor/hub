--//# Graphics+
--//# Version: 1.13 | Featuring Terrain+

--//# Script runs ingame!
local Lighting = game:GetService("Lighting");

local Enabled = true

local TerrainPlusEnabled = true
local BetterLightingEnabled = true

--//# Lighting Setup

function SetupLighting_()
	--//# Instances
	
	--//# Camera
	local ColorCorrection = Instance.new("ColorCorrectionEffect")
	local SunRays = Instance.new("SunRaysEffect")
	local Blur = Instance.new("BlurEffect")
	
	--//# Sky
	local Atmosphere = Instance.new("Atmosphere")
	local Sky = Instance.new("Sky")
	local Clouds = Instance.new("Clouds")
	
	--//# Set
	Lighting.Brightness = 1
	Lighting.EnvironmentDiffuseScale = .2
	Lighting.EnvironmentSpecularScale = .82
	SunRays.Parent = Lighting
	Atmosphere.Parent = Lighting
	Sky.Parent = Lighting
	Blur.Size = 3.921
	Blur.Parent = Lighting
	ColorCorrection.Parent = Lighting
	ColorCorrection.Saturation = .092
	Clouds.Parent = Lighting
end

--//# Terrain Setup
function SetupTerrain()
	local Terrain = game.Workspace.Terrain;
	Terrain.WaterTransparency = 1
	Terrain.WaterReflectance = 1
end

if Enabled then
	if TerrainPlusEnabled then
		SetupTerrain()
		warn("Loaded Better Terrain")
	end
	if BetterLightingEnabled then
		SetupLighting_()
		warn("Loaded Lighting+")
	end
elseif not Enabled then
	error("Script Disabled.")
	return false
end

--|| Setting Script Parent! ||--
script.Parent = game:GetService("ServerScriptService")