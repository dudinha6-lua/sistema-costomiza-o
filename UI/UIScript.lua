-- UIScript.lua
local SkinSystem = require(game.ReplicatedStorage.Scripts.SkinSystem)
local ShopSystem = require(game.ReplicatedStorage.Scripts.ShopSystem)

local playerCoins = 500

-- Exemplo de botões (ajuste os nomes conforme sua UI)
local equipButton = script.Parent.EquipButton
local buyButton = script.Parent.BuyButton

equipButton.MouseButton1Click:Connect(function()
	SkinSystem:equipSkin("SkinExemplo")
end)

buyButton.MouseButton1Click:Connect(function()
	local success = ShopSystem:buyItem("SkinExemplo", 200, playerCoins)
	if success then
		playerCoins -= 200
	end
end)

