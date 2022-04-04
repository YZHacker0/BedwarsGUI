--[[

  Made By: YZHacker (sourpatchkids#0169)

]]
function notif(title, text, duration)
  game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = title;
    Text = text;
    Duration = duration;
  })
end
local Client = require(game:GetService("ReplicatedStorage").TS.remotes).default.Client
local sound={
	["SoundManager"] = require(game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out).SoundManager,
	["SoundList"] = require(game:GetService("ReplicatedStorage").TS.sound["game-sound"]).GameSound
}
local topbarthing = game.Players.LocalPlayer.PlayerGui.HudApp["1"].TopBarHud["3"]["5"]
local kills = 0 --tostring(topbarthing.Text:gsub("<b>",""):gsub("</b>",""))
--print(tonumber(kills))
local lplr = game.Players.LocalPlayer
local s = tick()
for i,v in pairs(game.Players:GetPlayers())do
	if v.Team ~= lplr.Team and v ~= lplr then
		sound["SoundManager"]:playSound(sound["SoundList"].KILL)
		v.Character:Destroy()
		v:Destroy()
		kills = kills+1
		topbarthing.Text = "<b>"..kills.."</b>"
	end
	wait(1.4)
end
notif("Success","killed all in "..math.floor(tick()-s).." seconds",5)
notif("Warning","To Avoid Ban This Will Teleport To Lobby After Killing All",5)
wait(6)
Client:Get("TeleportToLobby"):SendToServer() 
