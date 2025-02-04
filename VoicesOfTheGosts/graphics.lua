-- Создаем PostProcessing эффекты
local lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Models = ReplicatedStorage.Models.ModelsForPlayers -- game.ReplicatedStorage.Models.ModelsForPlayers

-- Включаем туман
lighting.FogStart = 100
lighting.FogEnd = 1000
lighting.FogColor = Color3.new(0.1, 0.1, 0.1) -- Темный туман

-- Bloom (свечение)
local bloom = Instance.new("BloomEffect")
local flashlight = Instance.new("PointLight")
flashlight.Color = Color3.new(1, 1, 1) -- white light maybe
flashlight.Brightness = 0.7
flashlight.Range = 12
bloom.Intensity = 0.8
bloom.Size = 24
bloom.Threshold = 0.7
bloom.Parent = lighting

-- ColorCorrection (цветокоррекция)
local colorCorrection = Instance.new("ColorCorrectionEffect")
colorCorrection.Brightness = -0.1
colorCorrection.Contrast = 0.2
colorCorrection.Saturation = -0.3
colorCorrection.TintColor = Color3.new(0.9, 0.8, 0.8) -- Легкий красный оттенок
colorCorrection.Parent = lighting

-- DepthOfField (размытие фона)
local depthOfField = Instance.new("DepthOfFieldEffect")
depthOfField.FarIntensity = 0.5
depthOfField.NearIntensity = 0.2
depthOfField.FocusDistance = 10
depthOfField.InFocusRadius = 20
depthOfField.Parent = lighting

-- FilmGrain (зернистость)
local filmGrain = Instance.new("FilmGrainEffect")
filmGrain.Intensity = 0.3
filmGrain.Size = 0.5
filmGrain.Parent = lighting

-- Vignette (затемнение краев)
local vignette = Instance.new("VignetteEffect")
vignette.Intensity = 0.5
vignette.Parent = lighting

-- Настройки освещения
lighting.Ambient = Color3.new(0.1, 0.1, 0.1) -- Темный окружающий свет
lighting.OutdoorAmbient = Color3.new(0.2, 0.2, 0.2) -- Темный свет для улицы
lighting.ClockTime = 22 -- Ночное время
lighting.GlobalShadows = true -- Включаем тени
