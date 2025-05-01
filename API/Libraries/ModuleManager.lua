---@meta

---@class ModuleManager
local ModuleManager = {}

---Returns a list of all modules.  
---@return Module[]  
---@nodiscard  
function ModuleManager:getModules() end

---Finds a module by name.  
---@param name aString  
---@return Module?  
---@nodiscard  
function ModuleManager:getModule(name) end

---Enables a module by name.  
---@param name aString  
function ModuleManager:enableModule(name) end

---Disables a module by name.  
---@param name aString  
function ModuleManager:disableModule(name) end

---Toggles a module by name.  
---@param name aString  
function ModuleManager:toggleModule(name) end

---Returns whether a module is enabled.  
---@param name aString  
---@return boolean  
---@nodiscard  
function ModuleManager:isModuleEnabled(name) end