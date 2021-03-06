--Variables
local GameAnalyticsFiltering = game:GetService("ReplicatedStorage"):WaitForChild("GameAnalyticsFiltering")
--local GameAnalyticsSendMessage = game:GetService("ReplicatedStorage"):WaitForChild("GameAnalyticsSendMessage")

--Services
local GS = game:GetService("GuiService")
local UIS = game:GetService("UserInputService")

--Functions
function getPlatform()

    if (GS:IsTenFootInterface()) then
        return "Console"
    elseif (UIS.TouchEnabled and not UIS.MouseEnabled) then
        return "Mobile"
    else
        return "Desktop"
    end
end

--Filtering
GameAnalyticsFiltering.OnClientInvoke = getPlatform

-- debug stuff
--GameAnalyticsSendMessage.OnClientEvent:Connect(function(chatProperties)
--    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", chatProperties)
--end)
