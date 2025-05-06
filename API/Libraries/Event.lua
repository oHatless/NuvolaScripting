---@meta

---@class event
event = {}

---@enum eEvent
eEvent = {
    KeyPress = 0,
    MouseClick = 1,
    MouseMove = 2,
    LevelTick = 3,
    ActorTick = 4,
    ChatReceive = 5,
    ChatSend = 6,
    Render = 7,
    RenderPass = 8,
    PlayerAttack = 9
}

---Called automatically when the given event is triggered in-game.  
---@overload fun(name: 0, callback: fun(e: KeyPressEvent))  
---@overload fun(name: 1, callback: fun(e: MouseClickEvent))  
---@overload fun(name: 2, callback: fun(e: MouseMoveEvent))  
---@overload fun(name: 3, callback: fun(e: LevelTickEvent))  
---@overload fun(name: 4, callback: fun(e: ActorTickEvent))  
---@overload fun(name: 5, callback: fun(e: ChatReceiveEvent))  
---@overload fun(name: 6, callback: fun(e: ChatSendEvent))  
---@overload fun(name: 7, callback: fun(e: RenderEvent))  
---@overload fun(name: 8, callback: fun(e: RenderPassEvent))  
---@overload fun(name: 9, callback: fun(e: PlayerAttackEvent))  
---@param name eEvent  
---@async  
function event.on(name, callback) end

---Listens to an event with a callback.  
---@overload fun(name: 0, callback: fun(e: KeyPressEvent))  
---@overload fun(name: 1, callback: fun(e: MouseClickEvent))  
---@overload fun(name: 2, callback: fun(e: MouseMoveEvent))  
---@overload fun(name: 3, callback: fun(e: LevelTickEvent))  
---@overload fun(name: 4, callback: fun(e: ActorTickEvent))  
---@overload fun(name: 5, callback: fun(e: ChatReceiveEvent))  
---@overload fun(name: 6, callback: fun(e: ChatSendEvent))  
---@overload fun(name: 7, callback: fun(e: RenderEvent))  
---@overload fun(name: 8, callback: fun(e: RenderPassEvent))  
---@overload fun(name: 9, callback: fun(e: PlayerAttackEvent))  
---@param name eEvent  
---@async  
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