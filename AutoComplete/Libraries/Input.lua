---@meta

---@class input
input = {}

---Returns whether the specified key is currently pressed.  
---@param key String|string  
---@return boolean  
---@nodiscard  
function input.isKeyPressed(key) end

---Returns whether the specified key was just pressed this frame.  
---@param key String|string  
---@return boolean  
---@nodiscard  
function input.isKeyDown(key) end

---Returns whether the specified key was just released this frame.  
---@param key String|string  
---@return boolean  
---@nodiscard  
function input.isKeyUp(key) end

---Returns whether the specified mouse button is pressed.  
---0 = Left.  
---1 = Right.  
---2 = Middle.  
---@param button integer  
---@return boolean  
---@nodiscard  
function input.isMouseButtonPressed(button) end

---Returns the mouse position on the screen.  
---@return vec2  
---@nodiscard  
function input.getMousePosition() end

---Returns the mouse delta since the last frame.  
---@return vec2  
---@nodiscard  
function input.getMouseDelta() end

---Blocks all input from reaching the game.  
---@param block boolean  
function input.blockInput(block) end

---Returns whether input is fully blocked.  
---@return boolean  
---@nodiscard  
function input.isInputBlocked() end

---Blocks a specific key from reaching the game.  
---@param key String|string  
---@param block boolean  
function input.blockKey(key, block) end

---Returns whether a specific key is blocked.  
---@param key String|string  
---@return boolean  
---@nodiscard  
function input.isKeyBlocked(key) end

---Blocks a specific mouse button from reaching the game.  
---@param button integer  
---@param block boolean  
function input.blockMouseButton(button, block) end

---Returns whether a specific mouse button is blocked.  
---@param button integer  
---@return boolean  
---@nodiscard  
function input.isMouseButtonBlocked(button) end

---Returns a human-readable name for a key code.  
---@param key String|string|integer  
---@return string  
---@nodiscard  
function input.getKeyName(key) end

---Returns a human-readable name for a mouse button.  
---@param button integer  
---@return string  
---@nodiscard  
function input.getMouseButtonName(button) end

---Returns true if any key is currently pressed.  
---@return boolean  
---@nodiscard  
function input.anyKeyPressed() end

---Returns a list of all currently pressed keys.  
---@return String[]  
---@nodiscard  
function input.getPressedKeys() end

---Returns a list of all currently pressed mouse buttons.  
---@return integer[]  
---@nodiscard  
function input.getPressedMouseButtons() end