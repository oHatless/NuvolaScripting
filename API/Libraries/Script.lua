---@meta

---@class script
script = {}

---Runs the callback repeatedly in a shared script thread until unloaded.  
---@param callback function  
---@param delay? number # The delay in milliseconds, default is 10
function script.loop(callback, delay) end

---Yields the execution of the current coroutine, effectively pausing it without blocking the entire thread.  
---This function can only be called within functions or methods explicitly marked as `@async`.  
---@param ms? number # How long to be yielded for in milliseconds, nil will yield forever.  
function script.yield(ms) end

---Resumes a coroutine that was previously paused using `script.yield()`.  
---This allows you to continue execution from the point where the coroutine was paused.  
function script.resume() end

---Queues a request to reload all scripts.  
function script.reloadAll() end

---Queues a request to reload the script that called this function.  
function script.reload() end