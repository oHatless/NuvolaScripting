---@meta

---@class KeyEvent
local KeyEvent = {}

---Returns the key code (e.g, 65 for "a").  
---@return integer  
---@nodiscard  
function KeyEvent:getKeyCode() end

---Returns the lowercase key name (e.g, "a").  
---@return String  
---@nodiscard  
function KeyEvent:getKeyName() end

---Returns the key state.
---0 = Released.  
---1 = Pressed.  
---@return integer  
---@nodiscard  
function KeyEvent:getState() end

---Returns true if the key is currently pressed.  
---@return boolean  
---@nodiscard  
function KeyEvent:isPressed() end

---Returns true if the key was just released.  
---@return boolean  
---@nodiscard  
function KeyEvent:isReleased() end

---Cancels the event so the game won't know the key was pressed.  
function KeyEvent:cancel() end

---Uncancels the event, letting the game handle your keypress.  
function KeyEvent:uncancel() end

---Returns true if the event has been cancelled.  
---@return boolean  
function KeyEvent:isCancelled() end

---Sets whether the event is cancelled.  
---@param state boolean  
function KeyEvent:setCancelled(state) end