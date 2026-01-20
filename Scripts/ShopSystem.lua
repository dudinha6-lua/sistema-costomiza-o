-- ShopSystem.lua
local ShopSystem = {}

local ownedItems = {}

function ShopSystem:buyItem(itemName, price, playerCoins)
	if playerCoins < price then
		warn("Moedas insuficientes")
		return false
	end

	ownedItems[itemName] = true
	print("Item comprado:", itemName)
	return true
end

function ShopSystem:hasItem(itemName)
	return ownedItems[itemName] == true
end

return ShopSystem

