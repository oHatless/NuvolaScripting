---@meta

---@class vec1
---@field x number
vec1 = {}

---Creates a new vec1 object.  
---@param x? number  
---@return vec1  
function vec1.new(x) end

---Returns the length (magnitude) of the vector.  
---@param v vec1  
---@return number  
function vec1.length(v) end

---Returns a normalized version of the vector.  
---@param v vec1  
---@return vec1  
function vec1.normalize(v) end

---Returns the dot product of two vectors.  
---@param a vec1  
---@param b vec1  
---@return number  
function vec1.dot(a, b) end

---@class vec2
---@field x number
---@field y number
vec2 = {}

---Creates a new vec2 object.  
---@param x? number  
---@param y? number  
---@return vec2  
function vec2.new(x, y) end

---Returns the length (magnitude) of the vector.  
---@param v vec2  
---@return number  
function vec2.length(v) end

---Returns a normalized version of the vector.  
---@param v vec2  
---@return vec2  
function vec2.normalize(v) end

---Returns the dot product of two vectors.  
---@param a vec2  
---@param b vec2  
---@return number  
function vec2.dot(a, b) end

---@class vec3
---@field x number
---@field y number
---@field z number
vec3 = {}

---Creates a new vec3 object.  
---@param x? number  
---@param y? number  
---@param z? number  
---@return vec3  
function vec3.new(x, y, z) end

---Returns the length (magnitude) of the vector.  
---@param v vec3  
---@return number  
function vec3.length(v) end

---Returns a normalized version of the vector.  
---@param v vec3  
---@return vec3  
function vec3.normalize(v) end

---Returns the dot product of two vectors.  
---@param a vec3  
---@param b vec3  
---@return number  
function vec3.dot(a, b) end

---Returns the cross product of two vectors.  
---@param a vec3  
---@param b vec3  
---@return vec3  
function vec3.cross(a, b) end

---@class vec4
---@field x number
---@field y number
---@field z number
---@field w number
vec4 = {}

---Creates a new vec4 object.  
---@param x? number  
---@param y? number  
---@param z? number  
---@param w? number  
---@return vec4  
function vec4.new(x, y, z, w) end

---Returns the length (magnitude) of the vector.  
---@param v vec4  
---@return number  
function vec4.length(v) end

---Returns a normalized version of the vector.  
---@param v vec4  
---@return vec4  
function vec4.normalize(v) end

---Returns the dot product of two vectors.  
---@param a vec4  
---@param b vec4  
---@return number  
function vec4.dot(a, b) end