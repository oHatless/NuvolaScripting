---@meta

---@class ModuleManager
local ModuleManager = {}

---Returns a list of all modules.  
---@return Module[]  
---@nodiscard  
function ModuleManager:getModules() end

---Finds a module by name.  
---@param name String|string  
---@return Module?  
---@nodiscard  
function ModuleManager:getModule(name) end

---Enables a module by name.  
---@param name String|string  
function ModuleManager:enableModule(name) end

---Disables a module by name.  
---@param name String|string  
function ModuleManager:disableModule(name) end

---Toggles a module by name.  
---@param name String|string  
function ModuleManager:toggleModule(name) end

---Returns whether a module is enabled.  
---@param name String|string  
---@return boolean  
---@nodiscard  
function ModuleManager:isModuleEnabled(name) end