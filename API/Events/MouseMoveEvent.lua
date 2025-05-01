---@meta

---@class MouseMoveEvent
local MouseMoveEvent = {}

---Returns the current view name.  
---@return string  
---@nodiscard  
function MouseMoveEvent:getViewName() end

---Returns the current position of the mouse.  
---@return vec2  
---@nodiscard  
function MouseMoveEvent:getPosition() end

---Returns the current X position of the mouse.  
---@return integer  
---@nodiscard  
function MouseMoveEvent:getX() end

---Returns the current Y position of the mouse.  
---@return integer  
---@nodiscard  
function MouseMoveEvent:getY() end

---Returns the delta X movement since the last frame.  
---@return integer  
---@nodiscard  
function MouseMoveEvent:getDX() end

---Returns the delta Y movement since the last frame.  
---@return integer  
---@nodiscard  
function MouseMoveEvent:getDY() end

---Returns the camera's world transformation matrix.  
---@return mat4  
---@nodiscard  
function MouseMoveEvent:getWorldMatrix() end

---Returns the camera's view matrix.  
---@return mat4  
---@nodiscard  
function MouseMoveEvent:getViewMatrix() end

---Returns the camera's projection matrix.  
---@return mat4  
---@nodiscard  
function MouseMoveEvent:getProjectionMatrix() end

---Returns the camera's rotation as a quaternion.  
---@return quat  
---@nodiscard  
function MouseMoveEvent:getRotation() end

---Returns the camera's position in world space.  
---@return vec3  
---@nodiscard  
function MouseMoveEvent:getPosition3D() end

---Returns the camera's field of view settings.  
---@return vec4 # FOV X, FOV Y, Near Plane, Far Plane  
---@nodiscard  
function MouseMoveEvent:getFov() end

---Returns whether the pointer is forced to act motionless.  
---@return boolean  
---@nodiscard  
function MouseMoveEvent:getForceMotionlessPointer() end

---Sets whether the pointer is treated as motionless.  
---@param state boolean  
function MouseMoveEvent:setForceMotionlessPointer(state) end

---Cancels the event so the game won't know the key was pressed.  
function MouseMoveEvent:cancel() end

---Uncancels the event, letting the game handle it normally.  
function MouseMoveEvent:uncancel() end

---Returns true if the event has been cancelled.  
---@return boolean  
---@nodiscard  
function MouseMoveEvent:isCancelled() end

---Sets whether the event is cancelled.  
---If true, the game won’t see the mouse press.  
---@param state boolean  
function MouseMoveEvent:setCancelled(state) end