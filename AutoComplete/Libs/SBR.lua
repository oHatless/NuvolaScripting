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

---Returns information about the mouse (x, y, click info).  
---@return vec4  
---@nodiscard  
function SBR.getMouseInfo() end

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

---Backs up the render state.  
function SBR.pushStateBackup() end

---Restores the last backed-up render state.  
function SBR.popStateBackup() end

---Returns true if a depth buffer copy is needed.  
---@return boolean  
---@nodiscard  
function SBR.isDepthBufferCopyRequired() end

---Increases the number of depth buffer dependencies.  
function SBR.increaseDepthBufferDependency() end

---Decreases the number of depth buffer dependencies.  
function SBR.decreaseDepthBufferDependency() end

---Returns true if a front buffer sync is required for the given pass.  
---@param pass integer  
---@return boolean  
---@nodiscard  
function SBR.isFrontBufferSyncRequired(pass) end

---Requests a front buffer sync for the given pass.  
---@param pass integer  
function SBR.requestFrontBufferSync(pass) end

---Increases front buffer sync dependency for a given pass.  
---@param pass integer  
function SBR.increaseFrontBufferSyncDependency(pass) end

---Decreases front buffer sync dependency for a given pass.  
---@param pass integer  
function SBR.decreaseFrontBufferSyncDependency(pass) end

---Manually syncs the front buffer for the given pass.  
---@param pass integer  
function SBR.syncFrontBuffer(pass) end

---Begins a render pass.  
---@param backupRTV? boolean # Defaults to true  
---@param clear? boolean # Defaults to false  
function SBR.beginPass(backupRTV, clear) end

---Ends (flushes) the current render pass.  
---@param restoreRTV? boolean # Defaults to true  
function SBR.flushPass(restoreRTV) end

---Begins a mask pass (rendering to a mask).  
---@param clear? boolean # Defaults to true  
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

---Gets the default built-in shader.  
---@return any  
---@nodiscard  
function SBR.getDefaultShader() end

---Gets the depth of field shader.  
---@return any  
---@nodiscard  
function SBR.getDepthOfFieldShader() end

---Gets the outline shader.  
---@return any  
---@nodiscard  
function SBR.getOutlineShader() end

---Gets the box blur shader.  
---@return any  
---@nodiscard  
function SBR.getBoxBlurShader() end

---Gets the gaussian blur shader.  
---@return any  
---@nodiscard  
function SBR.getGaussianBlurShader() end

---Gets the motion blur shader.  
---@return any  
---@nodiscard  
function SBR.getMotionBlurShader() end

---Gets the tint shader.  
---@return any  
---@nodiscard  
function SBR.getTintShader() end

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

---Updates the SBR camera matrices.  
---@param world any  
---@param view any  
---@param projection any  
function SBR.updateCamera(world, view, projection) end

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