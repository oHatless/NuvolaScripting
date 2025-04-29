---@meta

---@class actor  
actor = {}

---@class Actor  
local Actor = {}

---Returns a list of all actors in the world.  
---@return Actor[]
function actor.getActors() end

---Runs a callback for every valid actor.  
---@param callback fun(a: Actor)
function actor.forEach(callback) end

---Returns the actor's position.  
---@return vec3?  
---@nodiscard  
function Actor:getPosition() end

---Returns the actor's rotation.  
---@return vec2?  
---@nodiscard  
function Actor:getRotation() end

---Returns the actor's body rotation.  
---@return number?  
---@nodiscard  
function Actor:getBodyRotation() end

---Returns whether the actor is a mob.  
---@return boolean?  
---@nodiscard  
function Actor:isMob() end

---Returns whether the actor is a player.  
---@return boolean?  
---@nodiscard  
function Actor:isPlayer() end

---Returns whether the actor is standing on the ground.  
---@return boolean?  
---@nodiscard  
function Actor:isOnGround() end

---Returns the actor's health.  
---@return number?  
---@nodiscard  
function Actor:getHealth() end

---Returns the name tag of the actor.  
---@return String?  
---@nodiscard  
function Actor:getNameTag() end

---Returns the type name of the actor (e.g, "player").  
---@return String?  
---@nodiscard  
function Actor:getType() end

---Returns the full type name of the actor (e.g, "minecraft:player").  
---@return String?  
---@nodiscard  
function Actor:getFullType() end