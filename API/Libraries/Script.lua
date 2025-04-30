---@meta

---@class script
script = {}

---Runs the callback repeatedly in a shared script thread until unloaded.  
---@param callback function  
---@param delay? number # The delay in milliseconds, default is 10
function script.loop(callback, delay) end