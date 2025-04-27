---@meta

---@class nvl
nvl = {}


---@enum eSystem
eSystem = {
    ModuleManager = 0
}

---Returns a reference to a system.  
---@param system eSystem  
---@return ModuleManager  
---@nodiscard  
function nvl.get(system) end

---Queues a function to be executed safely in the main thread.  
---@param func fun()  
function nvl.safeCall(func) end

---Queues a function to be executed safely in the main thread and waits for the result.  
---@param func fun(): any  
---@return any result  
---@nodiscard  
function nvl.safeCallWait(func) end