---@meta

---Getter functions will return nil if there is no player (e.g, not being in a world).  
player = {}

---Returns the player's position in floating point coordinates.  
---@return vec3?  
---@nodiscard  
function player.getPosition() end

---Returns the player's position in integer coordinates.  
---@return vec3?  
---@nodiscard  
function player.getPositionI() end

---Returns the player's head rotation.  
---@return vec2?  
---@nodiscard  
function player.getRotation() end

---Returns the player's body yaw rotation.  
---@return number?  
---@nodiscard  
function player.getBodyRotation() end

---Returns the player's Xbox name.  
---@return String?  
---@nodiscard  
function player.getName() end

---Returns the player's nametag.  
---@return String?  
---@nodiscard  
function player.getNameTag() end

---Returns the player's health.  
---@return number?  
---@nodiscard  
function player.getHealth() end

---Returns the player's hunger.  
---@return number?  
---@nodiscard  
function player.getHunger() end

---Returns the player's saturation.  
---@return number?  
---@nodiscard  
function player.getSaturation() end

---Sets the player's position.  
---@param x number  
---@param y number  
---@param z number  
function player.setPosition(x, y, z) end

---Sets the player's position.  
---@param pos vec3  
function player.setPosition(pos) end

---Sets the player's head rotation.  
---@param x number  
---@param y number  
function player.setRotation(x, y) end

---Sets the player's head rotation.  
---@param rot vec2  
function player.setRotation(rot) end

---Returns whether the player is on the ground.  
---@return boolean?  
---@nodiscard  
function player.isOnGround() end

---Returns whether the player is on the ground.  
---@return boolean?  
---@nodiscard  
function player.isSneaking() end

---Returns whether the player is on the ground.  
---@return boolean?  
---@nodiscard  
function player.isSprinting() end

---Whether to make the player sneak.  
---@param value boolean  
function player.setSneaking(value) end

---Whether to make the player sneak.  
---@param value boolean  
function player.setSprinting(value) end

---Returns whether the player is currently moving.  
---@return boolean?  
---@nodiscard  
function player.isMoving() end

---Returns whether the player is currently using their movement keys.  
---@return boolean?  
---@nodiscard  
function player.isUsingMovementKeys() end

---Makes the player swing their hand.  
function player.swing() end

---Makes the player attack the given actor.  
---@param actor Actor  
function player.attack(actor) end

---Returns the players F5 perspective.  
---0 = First Person.  
---1 = Third Person Back.  
---2 = Third Person Front.  
---@return integer  
---@nodiscard  
function player.getPerspective() end

---Returns whether the player is facing and within reach of a block.  
---@return boolean  
---@nodiscard  
function player.isFacingBlock() end

---Returns the current gamemode of the player.  
---0 = Survival.  
---1 = Creative.  
---2 = Adventure.  
---3 = SurvivalViewer.  
---4 = CreativeViewer.  
---5 = Default.  
---6 = spectator.  
---@return integer?  
---@nodiscard  
function player.getGameMode() end

---Returns the velocity of the player in floating point coordinates.  
---@return vec3?  
---@nodiscard  
function player.getVelocity() end

---Returns the player's field of view.  
---@return number?  
---@nodiscard  
function player.getFOV() end

---Sets the player's field of view.  
---@param fov number  
function player.setFOV(fov) end

---Returns the hurt time of the player.  
---@return integer? time The time the player has been hurt (in ticks).  
---@return integer? duration The duration of the player's hurt time (in ticks).  
function player.getHurtTime() end

---Makes the player move forward for 1 tick.  
function player.moveForward() end

---Makes the player move left for 1 tick.  
function player.moveLeft() end

---Makes the player move right for 1 tick.  
function player.moveRight() end

---Makes the player move backards for 1 tick.  
function player.moveBackward() end

---Sets the player's velocity.  
---@param velocity number  
function player.setVelocity(velocity) end

---Makes the player say something in chat.  
---@param message String|string  
function player.sendChatMessage(message) end

---Makes the player execute a Minecraft command (exclude '/').  
---@param command String|string  
function player.executeGameCommand(command) end

---Makes the player execute a Nuvola command (exclude prefix).  
---@param command String|string  
function player.executeClientCommand(command) end

---@class Player
local Player = {}

---Returns the player's position in floating point coordinates.  
---@return vec3?  
---@nodiscard  
function Player:getPosition() end

---Returns the player's position in integer coordinates.  
---@return vec3?  
---@nodiscard  
function Player:getPositionI() end

---Returns the player's head rotation.  
---@return vec2?  
---@nodiscard  
function Player:getRotation() end

---Returns the player's body yaw rotation.  
---@return number?  
---@nodiscard  
function Player:getBodyRotation() end

---Returns the player's Xbox name.  
---@return String?  
---@nodiscard  
function Player:getName() end

---Returns the player's nametag.
---@return String?  
---@nodiscard  
function Player:getNameTag() end

---Returns the player's health.  
---@return number?  
---@nodiscard  
function Player:getHealth() end

---Returns the player's hunger.  
---@return number?  
---@nodiscard  
function Player:getHunger() end

---Returns the player's saturation.  
---@return number?  
---@nodiscard  
function Player:getSaturation() end

---Sets the player's position.  
---@param x number  
---@param y number  
---@param z number  
function Player:setPosition(x, y, z) end

---Sets the player's position.  
---@param pos vec3  
function Player:setPosition(pos) end

---Sets the player's head rotation.  
---@param x number  
---@param y number  
function Player:setRotation(x, y) end

---Sets the player's head rotation.  
---@param rot vec2  
function Player:setRotation(rot) end

---Returns whether the player is on the ground.  
---@return boolean?  
---@nodiscard  
function Player:isOnGround() end

---Returns whether the player is sneaking.  
---@return boolean?  
---@nodiscard  
function Player:isSneaking() end

---Returns whether the player is sprinting.  
---@return boolean?  
---@nodiscard  
function Player:isSprinting() end

---Whether to make the player sneak.  
---@param value boolean  
function Player:setSneaking(value) end

---Whether to make the player sprint.  
---@param value boolean  
function Player:setSprinting(value) end

---Returns whether the player is currently moving.  
---@return boolean?  
---@nodiscard  
function Player:isMoving() end

---Returns whether the player is currently using movement keys.  
---@return boolean?  
---@nodiscard  
function Player:isUsingMovementKeys() end

---Makes the player swing their hand.  
function Player:swing() end

---Makes the player attack the given actor.  
---@param actor Actor  
function Player:attack(actor) end

---Returns the player's F5 perspective.  
---@return integer  
---@nodiscard  
function Player:getPerspective() end

---Returns whether the player is facing and within reach of a block.  
---@return boolean  
---@nodiscard  
function Player:isFacingBlock() end

---Returns the current gamemode of the player.  
---@return integer?  
---@nodiscard  
function Player:getGameMode() end

---Returns the velocity of the player.  
---@return vec3?  
---@nodiscard  
function Player:getVelocity() end

---Returns the player's field of view.  
---@return number?  
---@nodiscard  
function Player:getFOV() end

---Sets the player's field of view.  
---@param fov number  
function Player:setFOV(fov) end

---Returns the hurt time and duration of the player.  
---@return integer? time  
---@return integer? duration  
function Player:getHurtTime() end

---Makes the player move forward for 1 tick.  
function Player:moveForward() end

---Makes the player move left for 1 tick.  
function Player:moveLeft() end

---Makes the player move right for 1 tick.  
function Player:moveRight() end

---Makes the player move backward for 1 tick.  
function Player:moveBackward() end

---Sets the player's velocity.  
---@param velocity number  
function Player:setVelocity(velocity) end

---Makes the player say something in chat.  
---@param message String|string  
function Player:sendChatMessage(message) end

---Makes the player execute a Minecraft command (exclude '/').  
---@param command String|string  
function Player:executeGameCommand(command) end

---Makes the player execute a Nuvola command (exclude prefix).  
---@param command String|string  
function Player:executeClientCommand(command) end