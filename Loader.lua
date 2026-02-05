-- Loader.lua
-- File này sẽ load script từ GitHub

local ScriptURL = "https://raw.githubusercontent.com/hungdao/tele/main/HungDao9999.lua"

local success, result = pcall(function()
    local scriptContent = game:HttpGet(ScriptURL)
    local scriptFunction = loadstring(scriptContent)
    
    if scriptFunction then
        print("✅ Đã tải script thành công!")
        scriptFunction()() -- Gọi function được return từ script
    else
        warn("❌ Không thể load script!")
    end
end)

if not success then
    warn("❌ Lỗi khi tải script: " .. tostring(result))
end
