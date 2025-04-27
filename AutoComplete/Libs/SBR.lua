---@meta

---@class SBR
SBR = {}

---Returns whether the SBR rendering context is initialized.  
---@return boolean  
---@nodiscard  
function SBR.hasContext() end

---Destroys the SBR rendering context.  
function SBR.destroyContext() end

---Returns the current viewport size.  
---@return vec2  
---@nodiscard  
function SBR.getViewportSize() end

---Returns the frame delta time (seconds between frames).  
---@return number  
---@nodiscard  
function SBR.getFrameDelta() end

---Returns the total frame count since SBR started.  
---@return integer  
---@nodiscard  
function SBR.getFrameCount() end

---Returns whether SBR is currently rendering a frame.  
---@return boolean  
---@nodiscard  
function SBR.isRendering() end

---Returns whether the current thread is the render thread.  
---@return boolean  
---@nodiscard  
function SBR.isRenderThread() end

---Begins a new SBR frame. (Internal use normally.)  
---@param viewport vec2  
function SBR.beginFrame(viewport) end

---Ends the current SBR frame. (Internal use normally.)  
function SBR.endFrame() end

---Begins a render pass.  
---@param backupRTV? boolean Defaults to true  
---@param clear? boolean Defaults to false  
function SBR.beginPass(backupRTV, clear) end

---Ends (flushes) the current render pass.  
---@param restoreRTV? boolean Defaults to true  
function SBR.flushPass(restoreRTV) end

---Begins a mask pass (rendering to a mask).  
---@param clear? boolean Defaults to true  
function SBR.beginMaskPass(clear) end

---Ends (flushes) the current mask pass.  
function SBR.flushMaskPass() end

---Backs up the game's render target view.  
function SBR.backupGameRTV() end

---Restores the game's render target view.  
---@param restoreDepth? boolean
function SBR.restoreGameRTV(restoreDepth) end

---Backs up the render target view.  
function SBR.backupRTV() end

---Restores the render target view.  
function SBR.restoreRTV() end

---Performs a blit (copy/effect) from one texture to another.  
---@param transparencySupport? boolean  
function SBR.blit(transparencySupport) end

---Blits using a specific effect shader.  
---@param effect any  
---@param transparencySupport? boolean  
function SBR.blitEffect(effect, transparencySupport) end

---Blits and returns the result as a new texture.  
---@param effect any  
---@param transparencySupport? boolean  
---@return any  
function SBR.blitEffectToTexture(effect, transparencySupport) end

---Linearly blends the current pass texture with another texture.  
---@param b any  
---@param t any  
function SBR.lerpBlit(b, t) end

---Sets the sample count used for MSAA.  
---@param sampleCount integer  
function SBR.setSampleCount(sampleCount) end

---Gets the current MSAA sample count.  
---@return integer  
---@nodiscard  
function SBR.getSampleCount() end

---Returns whether MSAA is currently enabled.  
---@return boolean  
---@nodiscard  
function SBR.isMSAA() end

---Projects a world-space point to screen-space.  
---@param point vec3  
---@return vec2?  
---@nodiscard  
function SBR.project(point) end

---Projects an AABB to a screen-space rectangle.  
---@param min vec3  
---@param max vec3  
---@return vec4?  
---@nodiscard  
function SBR.projectAABB(min, max) end