---@meta

---@class quat
---@field x number
---@field y number
---@field z number
---@field w number
quat = {}

---Creates a new identity quaternion.  
---@return quat  
function quat.new() end

---Creates a quaternion from axis and angle (radians).  
---@param axis vec3  
---@param angle number  
---@return quat  
function quat.fromAxisAngle(axis, angle) end

---Returns the length of the quaternion.  
---@param q quat  
---@return number  
function quat.length(q) end

---Returns a normalized version of the quaternion.  
---@param q quat  
---@return quat  
function quat.normalize(q) end

---Returns the inverse of the quaternion.  
---@param q quat  
---@return quat  
function quat.inverse(q) end

---Multiplies two quaternions.  
---@param a quat  
---@param b quat  
---@return quat  
function quat.mul(a, b) end

---Rotates a vector by a quaternion.  
---@param q quat  
---@param v vec3  
---@return vec3  
function quat.rotate(q, v) end

---Creates a quaternion that rotates from `from` to `to`.  
---@param from vec3  
---@param to vec3  
---@return quat  
function quat.rotationTo(from, to) end

---Creates a quaternion from Euler angles in radians.  
---@param pitch number  
---@param yaw number  
---@param roll number  
---@return quat  
function quat.fromEuler(pitch, yaw, roll) end

---Returns the Euler angles (pitch, yaw, roll) from a quaternion.  
---@param q quat  
---@return number, number, number  
function quat.toEuler(q) end

---Creates a quaternion from a rotation matrix.  
---@param m mat3|mat4  
---@return quat  
function quat.fromMatrix(m) end

---Returns a rotation matrix from a quaternion.  
---@param q quat  
---@return mat3  
function quat.toMatrix(q) end

---Interpolates between two quaternions using spherical linear interpolation.  
---@param a quat  
---@param b quat  
---@param t number  
---@return quat  
function quat.slerp(a, b, t) end

---Multiplies a quaternion by a scalar.  
---@param q quat  
---@param s number  
---@return quat  
function quat.mulScalar(q, s) end