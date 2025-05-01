---@meta

---@class MouseClickEvent
local MouseClickEvent = {}

---@enum eMouseButton
eMouseButton = {
    None = 0,
	Left = 1,
	Right = 2,
	Middle = 3,
	Scroll = 4
}

---Returns the button that was pressed.  
---@return eMouseButton  
---@nodiscard  
function MouseClickEvent:getButton() end

---Returns the button state.
---0 = Released.  
---1 = Pressed.  
---@return integer  
---@nodiscard  
function MouseClickEvent:getState() end

---Returns true if the mouse button is currently pressed.  
---@return boolean  
function MouseClickEvent:isPressed() end

---Returns true if the mouse button was just released.  
---@return boolean  
---@nodiscard  
function MouseClickEvent:isReleased() end

---Cancels the event so the game won't know the key was pressed.  
function MouseClickEvent:cancel() end

---Uncancels the event, letting the game handle it normally.  
function MouseClickEvent:uncancel() end

---Returns true if the event has been cancelled.  
---@return boolean  
---@nodiscard  
function MouseClickEvent:isCancelled() end

---Sets whether the event is cancelled.  
---If true, the game won’t see the mouse press.  
---@param state boolean  
function MouseClickEvent:setCancelled(state) end