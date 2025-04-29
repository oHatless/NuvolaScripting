---@meta

---@class timer
timer = {}

---Sets a function to run after a delay.  
---@param seconds number  
---@param callback fun()  
---@return integer timerId  
function timer.setTimeout(seconds, callback) end

---Sets a function to run repeatedly at an interval.  
---@param seconds number  
---@param callback fun()  
---@return integer timerId  
function timer.setInterval(seconds, callback) end

---Clears a timeout or interval.  
---@param timerId integer  
function timer.clear(timerId) end

---Delays the current thread by a number of seconds (cooperative sleep).  
---@param seconds number  
function timer.sleep(seconds) end