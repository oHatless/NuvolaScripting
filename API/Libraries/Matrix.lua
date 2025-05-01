---@meta

---@class mat2
---@field m number[] # 4 elements  
mat2 = {}

---Creates a 2x2 identity matrix.  
---@return mat2  
function mat2.identity() end

---Creates a new 2x2 matrix.  
---@param m number[] # 4 elements  
---@return mat2  
function mat2.new(m) end

---Returns the transpose of the matrix.  
---@param m mat2  
---@return mat2  
function mat2.transpose(m) end

---Returns the inverse of the matrix.  
---@param m mat2  
---@return mat2  
function mat2.inverse(m) end

---Multiplies two 2x2 matrices.  
---@param a mat2  
---@param b mat2  
---@return mat2  
function mat2.mul(a, b) end

---Multiplies a matrix by a vec2.  
---@param m mat2  
---@param v vec2  
---@return vec2  
function mat2.mulvec(m, v) end

---@class mat3
---@field m number[] # 9 elements  
mat3 = {}

---Creates a 3x3 identity matrix.  
---@return mat3  
function mat3.identity() end

---Creates a new 3x3 matrix.  
---@param m number[] # 9 elements  
---@return mat3  
function mat3.new(m) end

---Returns the transpose of the matrix.  
---@param m mat3  
---@return mat3  
function mat3.transpose(m) end

---Returns the inverse of the matrix.  
---@param m mat3  
---@return mat3  
function mat3.inverse(m) end

---Multiplies two 3x3 matrices.  
---@param a mat3  
---@param b mat3  
---@return mat3  
function mat3.mul(a, b) end

---Multiplies a matrix by a vec3.  
---@param m mat3  
---@param v vec3  
---@return vec3  
function mat3.mulvec(m, v) end

---@class mat4
---@field m number[] # 16 elements  
mat4 = {}

---Creates a 4x4 identity matrix.  
---@return mat4  
function mat4.identity() end

---Creates a new 4x4 matrix.  
---@param m number[] # 16 elements  
---@return mat4  
function mat4.new(m) end

---Returns the transpose of the matrix.  
---@param m mat4  
---@return mat4  
function mat4.transpose(m) end

---Returns the inverse of the matrix.  
---@param m mat4  
---@return mat4  
function mat4.inverse(m) end

---Multiplies two 4x4 matrices.  
---@param a mat4  
---@param b mat4  
---@return mat4  
function mat4.mul(a, b) end

---Multiplies a matrix by a vec4.  
---@param m mat4  
---@param v vec4  
---@return vec4  
function mat4.mulvec(m, v) end

---Creates a translation matrix from a vec3.  
---@param v vec3  
---@return mat4  
function mat4.translation(v) end

---Creates a scale matrix from a vec3.  
---@param v vec3  
---@return mat4  
function mat4.scale(v) end

---Creates a rotation matrix from a quaternion.  
---@param q quat  
---@return mat4  
function mat4.fromQuat(q) end

---Creates a perspective projection matrix.  
---@param fov number  
---@param aspect number  
---@param near number  
---@param far number  
---@return mat4  
function mat4.perspective(fov, aspect, near, far) end

---Creates a look-at matrix.  
---@param eye vec3  
---@param center vec3  
---@param up vec3  
---@return mat4  
function mat4.lookAt(eye, center, up) end