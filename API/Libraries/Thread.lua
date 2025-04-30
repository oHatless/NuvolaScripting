---@meta

---@class thread
thread = {}

---@class Thread
local Thread = {}

---Creates a new thread object.  
---@param func fun()  
---@return Thread  
---@nodiscard  
function thread.new(func) end

---Immediately runs a function on a background thread.  
---@param func fun()  
function thread.run(func) end

---Suspends the current thread for the given number of seconds.  
---@param seconds number  
function thread.sleep(seconds) end

---Yields the current thread voluntarily.  
function thread.yield() end

---Returns the current thread object if inside a thread.  
---@return Thread?  
---@nodiscard  
function thread.current() end

---Blocks until all given threads are complete.  
---@param threads Thread[]  
function thread.waitForAll(threads) end

---Starts the thread execution.  
function Thread:start() end

---Pauses the thread execution.  
function Thread:pause() end

---Resumes the thread execution.  
function Thread:resume() end

---Stops the thread execution permanently.  
function Thread:stop() end

---Returns true if the thread is currently running.  
---@return boolean  
---@nodiscard  
function Thread:isRunning() end

---Returns true if the thread is currently paused.  
---@return boolean  
---@nodiscard  
function Thread:isPaused() end

---Returns true if the thread has been stopped.  
---@return boolean  
---@nodiscard  
function Thread:isStopped() end

---Returns the thread's unique ID.  
---@return integer  
---@nodiscard  
function Thread:getId() end

---Sets the name of the thread.  
---@param name String|string  
function Thread:setName(name) end