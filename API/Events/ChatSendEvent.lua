---@meta

---@class ChatSendEvent
ChatSendEvent = {}

---@return String  
---@nodiscard  
function ChatSendEvent:getMessage() end

---@return String  
---@nodiscard  
function ChatSendEvent:getAuthor() end

---@return integer  
---@nodiscard  
function ChatSendEvent:getType() end

---@return String  
---@nodiscard  
function ChatSendEvent:getXuid() end

---Cancels the event so the game won't send the chat message.  
function ChatSendEvent:cancel() end

---Uncancels the event, letting the game send the message normally.  
function ChatSendEvent:uncancel() end

---Returns true if the event has been cancelled.  
---@return boolean  
function ChatSendEvent:isCancelled() end

---Sets whether the event is cancelled.  
---If true, the game won’t send your chat message.  
---@param state boolean  
function ChatSendEvent:setCancelled(state) end