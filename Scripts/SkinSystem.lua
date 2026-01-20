-- SkinSystem.lua
local SkinSystem = {}

-- Skin atualmente equipada
local equippedSkin = nil

function SkinSystem:equipSkin(skinName)
	if equippedSkin == skinName then
		warn("Skin já equipada")
		return
	end

	equippedSkin = skinName
	print("Skin equipada:", skinName)
end

function SkinSystem:removeSkin()
	if equippedSkin then
		print("Skin removida:", equippedSkin)
		equippedSkin = nil
	end
end

function SkinSystem:getEquippedSkin()
	return equippedSkin
end

return SkinSystem

