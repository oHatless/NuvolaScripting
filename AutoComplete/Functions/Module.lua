---@meta

---Called when enabling the module.  
function onEnable() end

---Called when disabling the module.  
function onDisable() end

---Called when all scripts get reloaded.  
function onReload() end

---Called when reloading all module scripts.  
function onModuleReload() end

---Called after the module is registered to the API.  
function onLoad() end

---Called before the module is unloaded, during ejection or reloading.  
function onUnload() end

---Called when Nuvola is being ejected.  
function onEject() end

---Called every 10 milliseconds in the client thread.  
function onUpdate() end