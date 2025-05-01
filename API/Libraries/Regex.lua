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

---Creates a new Regex object.  
---@param pattern aString  
---@param flags? eRegexFlags|integer  
---@return Regex  
---@nodiscard  
function regex.new(pattern, flags) end

---Returns whether the pattern matches the string.
---@param pattern aString  
---@param str aString  
---@param flags? eRegexFlags|integer  
---@return boolean  
---@nodiscard  
function regex.matches(pattern, str, flags) end

---Finds the first match in the string.
---@param pattern aString  
---@param str aString  
---@param flags? eRegexFlags|integer  
---@return String? match, integer? startPos, integer? endPos  
---@nodiscard  
function regex.find(pattern, str, flags) end

---Finds all matches in the string.
---@param pattern aString  
---@param str aString  
---@param flags? eRegexFlags|integer  
---@return String[]  
---@nodiscard  
function regex.findAll(pattern, str, flags) end

---Replaces matches with a replacement.
---@param pattern aString  
---@param str aString  
---@param replacement aString  
---@param flags? eRegexFlags|integer  
---@return String  
---@nodiscard  
function regex.replace(pattern, str, replacement, flags) end

---Splits a string by a pattern.
---@param pattern aString  
---@param str aString  
---@param flags? eRegexFlags|integer  
---@return String[]  
---@nodiscard  
function regex.split(pattern, str, flags) end

---Returns whether the pattern matches the string.  
---@param str aString  
---@return boolean  
---@nodiscard  
function Regex:matches(str) end

---Finds the first match of the pattern in the string.  
---@param str aString  
---@return String? match, integer? startPos, integer? endPos  
---@nodiscard  
function Regex:find(str) end

---Finds all matches of the pattern in the string.  
---@param str aString  
---@return String[] matches  
---@nodiscard  
function Regex:findAll(str) end

---Replaces all matches in the string with a replacement string.  
---@param str aString  
---@param replacement aString  
---@return String  
---@nodiscard  
function Regex:replace(str, replacement) end

---Splits the string by the regex pattern.  
---@param str aString  
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