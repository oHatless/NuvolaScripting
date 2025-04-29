---@meta

---@class PlayerAttack
local PlayerAttack = {}

---Gets the player you attacked.  
---@return Actor?  
---@nodiscard  
function PlayerAttack:getTarget() end

---Cancels the event so you won't attack the player.  
function PlayerAttack:cancel() end

---Uncancels the event, letting the game attack the player.  
function PlayerAttack:uncancel() end

---Returns true if the event has been cancelled.  
---@return boolean  
---@nodiscard  
function PlayerAttack:isCancelled() end

---Sets whether the event is cancelled.  
---@param state boolean  
function PlayerAttack:setCancelled(state) end