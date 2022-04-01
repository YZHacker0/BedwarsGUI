local rick = {
"Never gonna give you up", 
"Never gonna let you down", 
"Never gonna run around and desert you", 
"Never gonna make you cry" , 
"Never gonna say goodbye",
"Never gonna tell a lie and hurt you", 
"Never gonna give you up", 
"Never gonna let you down", 
"Never gonna run around and desert you", 
"Never gonna make you cry", 
"Never gonna say goodbye", 
"Never gonna tell a lie and hurt you", 
"Never gonna give you up", 
"Never gonna let you down", 
"Never gonna run around and desert you", 
"Never gonna make you cry", 
"Never gonna say goodbye"
}
function notif(title, text, duration)
  game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = title;
    Text = text;
    Duration = duration;
  })
end
for i,v in pairs(game:GetDescendants())do
	if v:IsA("TextLabel") or v:IsA("TextButton") and v:GetFullName():find("ChatChannelParentFrame")  == nil then
		v.Text = "Never Gonna Give you up"
		v:GetPropertyChangedSignal("Text"):Connect(function()
				if v.Text ~= "" then
				    v.Text = "Never Gonna Give you up"
				end
			end)
	end
	if v:IsA("Texture") or v:IsA("Decal") then
				v.Texture = "http://www.roblox.com/asset/?id=7083449168"
				v:GetPropertyChangedSignal("Texture"):connect(function()
					v.Texture = "http://www.roblox.com/asset/?id=7083449168"
				end)
			end
			if v:IsA("MeshPart") then
				v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
				v:GetPropertyChangedSignal("TextureID"):connect(function()
					v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
				end)
			end
			if v:IsA("SpecialMesh") then
				v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
				v:GetPropertyChangedSignal("TextureId"):connect(function()
					v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
				end)
			end
			if v:IsA("Sky") then
				v.SkyboxBk = "http://www.roblox.com/asset/?id=7083449168"
				v.SkyboxDn = "http://www.roblox.com/asset/?id=7083449168"
				v.SkyboxFt = "http://www.roblox.com/asset/?id=7083449168"
				v.SkyboxLf = "http://www.roblox.com/asset/?id=7083449168"
				v.SkyboxRt = "http://www.roblox.com/asset/?id=7083449168"
				v.SkyboxUp = "http://www.roblox.com/asset/?id=7083449168"
			end
end
while wait() do
for i,v in pairs(rick)do
	--writefile("NeverGonnaGiveYouUp_"..rick:gsub(" ","_")..".txt",table.concat(rick))
	notif(v,v,math.huge)
	wait(2)
end
end
