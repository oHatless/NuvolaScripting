---@meta

---@class ChatReceiveEvent
ChatReceiveEvent = {}

---@return String  
---@nodiscard  
function ChatReceiveEvent:getMessage() end

---@return String  
---@nodiscard  
function ChatReceiveEvent:getAuthor() end

---@return integer  
---@nodiscard  
function ChatReceiveEvent:getType() end

---@return String  
---@nodiscard  
function ChatReceiveEvent:getXuid() end

---Cancels the event so the game won't know anything happened.  
function ChatReceiveEvent:cancel() end

---Uncancels the event, letting the game handle it normally.  
function ChatReceiveEvent:uncancel() end

---Returns true if the event has been cancelled.  
---@return boolean  
function ChatReceiveEvent:isCancelled() end

---Sets whether the event is cancelled.  
---If true, the game won’t see the chat message.  
---@param state boolean  
function ChatReceiveEvent:setCancelled(state) end