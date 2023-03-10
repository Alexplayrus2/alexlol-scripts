local decals = {}
local audios = {}
local colors = {}
local text = {}
for _,v in pairs(game:GetDescendants()) do
if v:IsA("Decal") or v:IsA("Texture") or v:IsA("ParticleEmitter") then
table.insert(decals, v.Texture)
elseif v:IsA("ImageLabel") or v:IsA("ImageButton") then
table.insert(decals, v.Image)
elseif v:IsA("Sound") then
table.insert(audios,v.SoundId)
elseif v:IsA("BasePart") and not v:IsA("Terrain") then
table.insert(colors, v.BrickColor)
elseif v:IsA("TextLabel") then
table.insert(text, v.Text)
end
end
for _,v in pairs(game:GetDescendants()) do
if v:IsA("Decal") or v:IsA("Texture") then
v.Texture = decals[math.random(1,#decals)]
elseif v:IsA("ImageLabel") or v:IsA("ImageButton") then
v.Image = decals[math.random(1,#decals)]
elseif v:IsA("Sound") then
v.SoundId = audios[math.random(1,#audios)]
elseif v:IsA("BasePart") and not v:IsA("Terrain") then
v.BrickColor = colors[math.random(1,#colors)]
elseif v:IsA("TextLabel") then
v.Text = text[math.random(1,#text)]
elseif v:IsA("DataModelMesh") then
v.Scale = Vector3.new(math.random(0.1,5),math.random(0.1,5),math.random(0.1,5))
v.Offset = Vector3.new(math.random(0.1,5),math.random(0.1,5),math.random(0.1,5))
elseif v:IsA("ParticleEmitter") then
v.Texture = decals[math.random(1,#decals)]
v.Acceleration = Vector3.new(math.random(0.1,5),math.random(0.1,5),math.random(0.1,5))
elseif v:IsA("Sky") then
v.SkyboxBk = decals[math.random(1,#decals)]
v.SkyboxDn = decals[math.random(1,#decals)]
v.SkyboxFt = decals[math.random(1,#decals)]
v.SkyboxLf = decals[math.random(1,#decals)]
v.SkyboxRt = decals[math.random(1,#decals)]
v.SkyboxUp = decals[math.random(1,#decals)]
end
end
