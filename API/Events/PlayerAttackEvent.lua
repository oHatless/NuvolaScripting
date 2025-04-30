---@meta

---@class PlayerAttackEvent
local PlayerAttackEvent = {}

---Gets the player you attacked.  
---@return Actor?  
---@nodiscard  
function PlayerAttackEvent:getTarget() end

---Cancels the event so you won't attack the player.  
function PlayerAttackEvent:cancel() end

---Uncancels the event, letting the game attack the player.  
function PlayerAttackEvent:uncancel() end

---Returns true if the event has been cancelled.  
---@return boolean  
---@nodiscard  
function PlayerAttackEvent:isCancelled() end

---Sets whether the event is cancelled.  
---@param state boolean  
function PlayerAttackEvent:setCancelled(state) end