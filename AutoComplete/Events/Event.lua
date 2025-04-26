---@meta

event = {}

---Called when the respective event is triggered in-game.  
---@overload fun(name: '"KeyInput"', callback: fun(e: KeyEvent))
---@overload fun(name: '"LevelTick"', callback: fun(e: LevelTick))
---@overload fun(name: '"ActorTick"', callback: fun(e: ActorTick))
---@overload fun(name: '"PlayerAttack"', callback: fun(e: PlayerAttack))
---@param name String|string
function event.on(name, callback) end

---Listens to an event with a callback, regardless of the module state.  
---@overload fun(name: '"KeyInput"', callback: fun(e: KeyEvent))
---@overload fun(name: '"LevelTick"', callback: fun(e: LevelTick))
---@overload fun(name: '"ActorTick"', callback: fun(e: ActorTick))
---@overload fun(name: '"PlayerAttack"', callback: fun(e: PlayerAttack))
---@param name String|string
function event.listen(name, callback) end

---Stops listening to the specified event.
---@param name '"KeyInput"'|'"LevelTick"'|'"ActorTick"'|'"PlayerAttack"'
function event.deafen(name) end

---Triggers a custom event manually.  
---@param name String|string  
---@param data? table  
function event.trigger(name, data) end

---Registers a new custom event type.  
---@param name String|string  
function event.register(name) end

---Returns whether a custom event type exists.  
---@param name String|string  
---@return boolean  
---@nodiscard  
function event.exists(name) end

---Clears all listeners for a custom event.  
---@param name String|string  
function event.clear(name) end