---@meta

---@class game
game = {}

---Returns the local player (you).  
---@return Player?  
---@nodiscard  
function game.getLocalPlayer() end

---Frees your mouse from Minecraft.  
function game.freeMouse() end

---Grabs your mouse from Minecraft.  
function game.grabMouse() end

---Sets the visibility of your mouse.  
---@param visible boolean  
function game.setMouseVisibility(visible) end

---Returns whether the mouse is freed.  
---@return boolean  
---@nodiscard  
function game.isMouseFreed() end

---Returns whether the mouse is grabbed.  
---@return boolean  
---@nodiscard  
function game.isMouseGrabbed() end

---Returns whether you are in a world/server.  
---@return boolean  
---@nodiscard  
function game.isInWorld() end

---Returns your framerate.  
---@return integer  
---@nodiscard  
function game.getFPS() end

---Returns the dimension you are in.  
---@return integer?  
---@nodiscard  
function game.getDimension() end

---Returns the name of the screen you are in.  
---@return String  
---@nodiscard  
function game.getScreenName() end

---Returns your cursor position.  
---@return vec2  
---@nodiscard  
function game.getCursorPos() end

---Sets your cursor position.  
---@param pos vec2
function game.setCursorPos(pos) end

---Sets your cursor position.  
---@param x integer  
---@param y integer  
function game.setCursorPos(x, y) end

---Plays a Minecraft sound.  
---@param name String|string  
---@param volume number?  
---@param pitch number?
function game.playSound(name, volume, pitch) end

---Takes a screenshot of your game.  
function game.takeScreenshot() end

---Copies the latest screenshot to your clipboard.  
function game.copyScreenshot() end

---Disconnects you from the game/server.  
---@param reason String|string?  
function game.disconnect(reason) end

---Returns the clipboard content.  
---@return String?  
---@nodiscard  
function game.getClipboard() end

---Sets the clipboard content.  
---@param content String|string  
function game.setClipboard(content) end

---Simulates a key press.  
---@param key String|string|integer  
function game.pressKey(key) end

---Simulates a mouse button press.  
---@param button integer  
function game.pressMouse(button) end