---@meta

---@class regex
regex = {}

---@class Regex
local Regex = {}

---@enum eRegexFlags
eRegexFlags = {
    GLOBAL = 1,     -- Match all occurrences, not just the first
    IGNORECASE = 2, -- Case-insensitive matching
    MULTILINE = 4,  -- ^ and $ match start/end of each line
    DOTALL = 8,     -- . matches newline characters
    EXTENDED = 16,  -- Allow whitespace and comments in patterns
}

---Returns whether the pattern matches the string.  
---@param str String|string  
---@return boolean  
---@nodiscard  
function Regex:matches(str) end

---Finds the first match of the pattern in the string.  
---@param str String|string  
---@return String? match, integer? startPos, integer? endPos  
---@nodiscard  
function Regex:find(str) end

---Finds all matches of the pattern in the string.  
---@param str String|string  
---@return String[] matches  
---@nodiscard  
function Regex:findAll(str) end

---Replaces all matches in the string with a replacement string.  
---@param str String|string  
---@param replacement String|string  
---@return String  
---@nodiscard  
function Regex:replace(str, replacement) end

---Splits the string by the regex pattern.  
---@param str String|string  
---@return String[]  
---@nodiscard  
function Regex:split(str) end

---Returns the original pattern string.  
---@return String  
---@nodiscard  
function Regex:getPattern() end

---Returns the flags set on the regex.  
---@return integer  
---@nodiscard  
function Regex:getFlags() end

---Creates a new Regex object.  
---@param pattern String|string  
---@param flags? eRegexFlags|integer  
---@return Regex  
---@nodiscard  
function regex.new(pattern, flags) end

---Returns whether the pattern matches the string.
---@param pattern String|string  
---@param str String|string  
---@param flags? eRegexFlags|integer  
---@return boolean  
---@nodiscard  
function regex.matches(pattern, str, flags) end

---Finds the first match in the string.
---@param pattern String|string  
---@param str String|string  
---@param flags? eRegexFlags|integer  
---@return String? match, integer? startPos, integer? endPos  
---@nodiscard  
function regex.find(pattern, str, flags) end

---Finds all matches in the string.
---@param pattern String|string  
---@param str String|string  
---@param flags? eRegexFlags|integer  
---@return String[]  
---@nodiscard  
function regex.findAll(pattern, str, flags) end

---Replaces matches with a replacement.
---@param pattern String|string  
---@param str String|string  
---@param replacement String|string  
---@param flags? eRegexFlags|integer  
---@return String  
---@nodiscard  
function regex.replace(pattern, str, replacement, flags) end

---Splits a string by a pattern.
---@param pattern String|string  
---@param str String|string  
---@param flags? eRegexFlags|integer  
---@return String[]  
---@nodiscard  
function regex.split(pattern, str, flags) end