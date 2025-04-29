---@meta

---@class RenderPassEvent
local RenderPassEvent = {}

---@enum eRenderPassID
eRenderPassID = {
    SCENE_EFFECT = 0,
    SCENE_OVERLAY = 1,
    HUD = 2,
    PRESENT = 3
}

---@return Renderer  
---@nodiscard  
function RenderPassEvent:getRenderer() end

---@return eRenderPassID  
---@nodiscard  
function RenderPassEvent:getPassID() end

---@param id eRenderPassID  
---@return boolean  
---@nodiscard  
function RenderPassEvent:isPassID(id) end