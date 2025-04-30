---@meta

---@class event
event = {}

---@enum eEvent
eEvent = {
    KeyInput = 0,
    MouseInput = 1,
    LevelTick = 2,
    ActorTick = 3,
    ChatReceive = 4,
    ChatSend = 5,
    Render = 6,
    RenderPass = 7,
    PlayerAttack = 8
}

---Called automatically when the given event is triggered in-game.  
---@overload fun(name: 0, callback: fun(e: KeyEvent))  
---@overload fun(name: 1, callback: fun(e: MouseEvent))  
---@overload fun(name: 2, callback: fun(e: LevelTickEvent))  
---@overload fun(name: 3, callback: fun(e: ActorTickEvent))  
---@overload fun(name: 4, callback: fun(e: ChatReceiveEvent))  
---@overload fun(name: 5, callback: fun(e: ChatSendEvent))  
---@overload fun(name: 6, callback: fun(e: RenderEvent))  
---@overload fun(name: 7, callback: fun(e: RenderPassEvent))  
---@overload fun(name: 8, callback: fun(e: PlayerAttackEvent))  
---@param name eEvent  
function event.on(name, callback) end

---Listens to an event with a callback.  
---@overload fun(name: 0, callback: fun(e: KeyEvent))  
---@overload fun(name: 1, callback: fun(e: MouseEvent))  
---@overload fun(name: 2, callback: fun(e: LevelTickEvent))  
---@overload fun(name: 3, callback: fun(e: ActorTickEvent))  
---@overload fun(name: 4, callback: fun(e: ChatReceiveEvent))  
---@overload fun(name: 5, callback: fun(e: ChatSendEvent))  
---@overload fun(name: 6, callback: fun(e: RenderEvent))  
---@overload fun(name: 7, callback: fun(e: RenderPassEvent))  
---@overload fun(name: 8, callback: fun(e: PlayerAttackEvent))  
---@param name eEvent  
function event.listen(name, callback) end

---Stops listening to the specified event.  
---@param name eEvent  
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