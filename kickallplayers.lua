
local Players = game:GetService("Players")

local function kickAllPlayers()
    for _, player in ipairs(Players:GetPlayers()) do
        player:Kick("Has sido expulsado del servidor.")
    end
end

-- Función para crear la interfaz
local function createGUI()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game:GetService("CoreGui")

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 200, 0, 50)
    Frame.Position = UDim2.new(0.5, -100, 0.5, -25)
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BorderSizePixel = 1
    Frame.Parent = ScreenGui

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(1, 0, 1, 0)
    Button.BackgroundColor3 = Color3.fromRGB(0, 128, 255)
    Button.Text = "Kick All"
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Parent = Frame

    Button.MouseButton1Click:Connect(function()
        kickAllPlayers()
    end)
end

-- Crear la interfaz al cargar el script
createGUI()
