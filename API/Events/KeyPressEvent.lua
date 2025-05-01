---@meta

---@class KeyPressEvent
local KeyPressEvent = {}

---Returns the key code (e.g, 65 for "a").  
---@return integer  
---@nodiscard  
function KeyPressEvent:getKeyCode() end

---Returns the lowercase key name (e.g, "a").  
---@return String  
---@nodiscard  
function KeyPressEvent:getKeyName() end

---Returns the key state.
---0 = Released.  
---1 = Pressed.  
---@return integer  
---@nodiscard  
function KeyPressEvent:getState() end

---Returns true if the key is currently pressed.  
---@return boolean  
---@nodiscard  
function KeyPressEvent:isPressed() end

---Returns true if the key was just released.  
---@return boolean  
---@nodiscard  
function KeyPressEvent:isReleased() end

---Cancels the event so the game won't know the key was pressed.  
function KeyPressEvent:cancel() end

---Uncancels the event, letting the game handle your keypress.  
function KeyPressEvent:uncancel() end

---Returns true if the event has been cancelled.  
---@return boolean  
function KeyPressEvent:isCancelled() end

---Sets whether the event is cancelled.  
---@param state boolean  
function KeyPressEvent:setCancelled(state) end