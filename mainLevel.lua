-- so this is traffic stuff for your map
local M = {}

function onLoad()
  log("I", "onLoad", "mainLevel.lua loaded") -- confirm the code ran 
end

function onTrafficStarted()
 local vars =
  { baseAggression = 0.5, -- any number between 0.2 and 2
    speedLimit = nil, -- can be any number between -1 (off or nil, will use the road's speed limit), 100 -- (360 km/h) also beware, some cars can't reach that speed
    spawnValue = 0.75 -- basically the cars spawn rate, any number between 0 to 3
  } -- if you dont end vars table it wont work obviously, oh and put the vars table first! lua works in order.
  gameplay_traffic.setTrafficVars(vars) -- it sets the vars in the vars table
  log("I", "trafficVars", "baseAggression =" .. vars.baseAggression .. ", speedLimit = " .. vars.speedLimit) -- shows values in the console
end
-- module table, 
M.onTrafficStarted = onTrafficStarted 
M.onLoad = onLoad

return M
  -- if you wanna do more traffic vars setting, you can use these too! straight from BeamNG's traffic lua
  --[[
  vars = {
    spawnValue = 1, -- as the default value, globalSpawnDist will dynamically adjust the random respawn distance from player
    spawnDirBias = 0, -- as the default value, globalSpawnDir will dynamically adjust the random respawn direction
    activeAmount = math.huge, -- number of active (visible) vehicles at a time
    baseAggression = 0.35, -- old default: 0.3
    speedLimit = nil, -- global speed limit; overrides road speed limits
    aiMode = 'traffic',
    aiAware = 'auto',
    aiDebug = 'off',
    enableRandomEvents = false -- enables events such as police randomly chasing AI suspects
  }
  ]]
  
