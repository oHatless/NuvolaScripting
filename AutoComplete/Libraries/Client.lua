---@meta

---@class client  
client = {}

---Every module script needs to call this function to be registered.  
---It is the first function to get called by the API.  
---@param name string
---@param description string
---@param category? string
---@param keybind? string|number
---@param enabled? boolean
function client.registerModule(name, description, category, keybind, enabled) end

---Returns Nuvolas version as a String.  
---@return String  
---@nodiscard  
function client.getVersion() end