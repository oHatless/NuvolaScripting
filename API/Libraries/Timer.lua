---@meta

---@class timer
timer = {}

---Sets a function to run after a delay.  
---@param ms number  
---@param callback fun()  
---@return integer timerId  
function timer.setTimeout(ms, callback) end

---Sets a function to run repeatedly at an interval.  
---@param ms number  
---@param callback fun()  
---@return integer timerId  
function timer.setInterval(ms, callback) end

---Clears a timeout or interval.  
---@param timerId integer  
function timer.clear(timerId) end

---Suspends the current thread by a number of milliseconds.  
---@param ms number  
function timer.sleep(ms) end