local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

_G.RobloxianFarm = false
_G.MummyFarm = false
_G.DumDumFarm = false

local Window = Rayfield:CreateWindow({
   Name = "somethin i made for convience",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "loadinggggg",
   LoadingSubtitle = "by whaaat8804",
   Theme = "Serenity", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "pointlessconfig", -- Create a custom folder for your hub/game
      FileName = "heythere"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noo", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "hey there",
      Subtitle = "this key shouldn't be hard",
      Note = "the key is 'cool'", -- Use this to tell the user how to get a key
      FileName = "keynamethatkeykeykeyijustwannafindthekey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"cool"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("main stuff", "dock")
Rayfield:Notify({
   Title = "loading",
   Content = "ts pmo",
   Duration = 5,
   Image = "air-vent",
})

local function CannonDamage(NPC)
	local weapon = game.Players.LocalPlayer.Backpack:FindFirstChild("Classic Rocket Launcher") or game.Players.LocalPlayer.Backpack:FindFirstChild("Freezethrower")
	if not weapon then return end

	local args = {
        [1] = weapon,
        [2] = NPC
    }

    game:GetService("ReplicatedStorage").Remotes.GunHit:FireServer(unpack(args))
end

local Toggle = Tab:CreateToggle({
   Name = "start killing noobs (first area)",
   CurrentValue = false,
   Flag = "the2andonly",
   Callback = function(Value)
       _G.RobloxianFarm = Value
   end,
})

spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
       if _G.MummyFarm then
           for _, v in pairs(game.Workspace:GetChildren()) do
               if v.Name:match("Robloxian") or table.find({"Rox The Destroyer", "Crazy Robloxian"}, v.Name) then
                   CannonDamage(v:WaitForChild("HumanoidRootPart").Position)
                   wait(0.5)
               end
           end
       end
   end)
end)

local Toggle = Tab:CreateToggle({
   Name = "start killing mummys (second area)",
   CurrentValue = false,
   Flag = "the3andonly",
   Callback = function(Value)
       _G.MummyFarm = Value
   end,
})

spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
       if _G.MummyFarm then
           for _, v in pairs(game.Workspace:GetChildren()) do
               if v.Name:match("Mummy") or table.find({"Sandstone", "Carium", "Camel"}, v.Name) then
                   CannonDamage(v:WaitForChild("HumanoidRootPart").Position)
                   wait(0.5)
               end
           end
       end
   end)
end)

local Toggle = Tab:CreateToggle({
   Name = "start killing dum dums",
   CurrentValue = false,
   Flag = "theoneandonly",
   Callback = function(Value)
       _G.DumDumFarm = Value
   end,
})

spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
       if _G.DumDumFarm then
           for _, v in pairs(game.Workspace:GetChildren()) do
               if v.Name:match("Dum Dum") then
                   local root = v:FindFirstChild("HumanoidRootPart")
                   if root then
                       CannonDamage(root.Position)
                       wait(0.5)
                   end
               end
           end
       end
   end)
end)

local Tab2 = Window:CreateTab("bosses + enemies", "contact")
local Button = Tab2:CreateButton({
   Name = "will edit more later",
   Callback = function()
       print('wip')
   end,
})

local Tab3 = Window:CreateTab("other stuff", "atom")
local Button = Tab3:CreateButton({
   Name = "kill the script",
   Callback = function()
       Rayfield:Destroy()
   end,
})
