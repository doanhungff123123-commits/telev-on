local ScriptURL = "https://raw.githubusercontent.com/doanhungf123123/commits/main/HungDao9999.lua"

local success, result = pcall(function()
    local scriptContent = game:HttpGet(ScriptURL)
    local scriptFunction = loadstring(scriptContent)
    
    if scriptFunction then
        print("Script loaded!")
        scriptFunction()()
    else
        warn("Cannot load script")
    end
end)

if not success then
    warn("Error: " .. tostring(result))
end
