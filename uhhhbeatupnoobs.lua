local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

_G.RobloxianFarm = false
_G.MummyFarm = false
_G.DumDumFarm = false

local Window = Rayfield:CreateWindow({
   Name = "somethin i made for convience",
   Icon = 0,
   LoadingTitle = "loadinggggg",
   LoadingSubtitle = "by whaaat8804",
   Theme = "Serenity",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "pointlessconfig",
      FileName = "heythere"
   },
   Discord = {
      Enabled = false,
      Invite = "noo",
      RememberJoins = true
   },
   KeySystem = true,
   KeySettings = {
      Title = "hey there",
      Subtitle = "this key shouldn't be hard",
      Note = "the key is 'cool'",
      FileName = "keynamethatkeykeykeyijustwannafindthekey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"cool"}
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
