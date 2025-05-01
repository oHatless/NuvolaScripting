---@meta

---@class module
module = {}

---@class Module
local Module = {}

---@class ModuleInfo
---@field name String  
---@field description String  
---@field category String  
---@field keybind integer  
---@field enabled boolean  

---Returns all modules.  
---@return Module[]  
---@nodiscard  
function module.getModules() end

---Finds a module by name.  
---@param name aString  
---@return Module?  
---@nodiscard  
function module.getModule(name) end

---Returns the name of the module.  
---@return String  
---@nodiscard  
function Module:getName() end

---Returns the description of the module.  
---@return String  
---@nodiscard  
function Module:getDescription() end

---Returns the category of the module.  
---@return String  
---@nodiscard  
function Module:getCategory() end

---Returns the keybind of the module.  
---@return integer  
---@nodiscard  
function Module:getKeybind() end

---Sets the keybind of the module.  
---@param key integer  
function Module:setKeybind(key) end

---Returns whether the module is enabled.  
---@return boolean  
---@nodiscard  
function Module:isEnabled() end

---Returns whether the module is disabled.  
---@return boolean  
---@nodiscard  
function Module:isDisabled() end

---Enables the module.  
function Module:enable() end

---Disables the module.  
function Module:disable() end

---Toggles the module.  
function Module:toggle() end