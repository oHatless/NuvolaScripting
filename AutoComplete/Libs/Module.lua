---@meta

---@class module
module = {}

---@class ModuleInfo
---@field name String
---@field description String
---@field category String
---@field keybind integer
---@field enabled boolean

---@class ScriptInfo
---@field name String
---@field description String
---@field category String
---@field keybind integer
---@field enabled boolean

---Returns all modules.  
---@return ModuleInfo[]  
---@nodiscard  
function module.getModules() end

---Returns all scripts.  
---@return ScriptInfo[]  
---@nodiscard  
function module.getScripts() end

function module.isModule() end
function module.isScript() end
function module.setEnabled() end
function module.isEnabled() end