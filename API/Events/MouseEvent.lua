---@meta

---@class MouseEvent
local MouseEvent = {}

---Returns the button that was pressed.  
---1 = Left Click.  
---2 = Right Click. 
---3 = Middle Click.  
---4 = Mouse Scroll.  
---@return integer  
---@nodiscard  
function MouseEvent:getButton() end

---Returns the button state.
---0 = Released.  
---1 = Pressed.  
---@return integer  
---@nodiscard  
function MouseEvent:getState() end

---Returns true if the mouse button is currently pressed.  
---@return boolean  
function MouseEvent:isPressed() end

---Returns true if the mouse button was just released.  
---@return boolean  
---@nodiscard  
function MouseEvent:isReleased() end

---Cancels the event so the game won't know the key was pressed.  
function MouseEvent:cancel() end

---Uncancels the event, letting the game handle it normally.  
function MouseEvent:uncancel() end

---Returns true if the event has been cancelled.  
---@return boolean  
---@nodiscard  
function MouseEvent:isCancelled() end

---Sets whether the event is cancelled.  
---If true, the game won’t see the mouse press.  
---@param state boolean  
function MouseEvent:setCancelled(state) end