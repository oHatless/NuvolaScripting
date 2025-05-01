---@meta

---String is an extended version of the standard Lua string, providing additional utility functions.  
---All functions in the API return a String instead of a regular string, but you can convert it back with `:toString()`.  
---@class String
String = {}

---@alias aString String|string

---Creates a new String object.  
---@param value? aString  
---@return String  
function String.new(value) end

---Sanitizes a string (removes illegal characters and spaces).  
---@param str aString  
---@return String  
function String.sanitize(str) end

---Reverses the string.  
---@param str aString  
---@return String  
function String.reverse(str) end

---Converts the string to uppercase.
---@param str aString  
---@return String  
function String.toUpper(str) end

---Converts the string to lowercase.
---@param str aString  
---@return String  
function String.toLower(str) end

---Checks if the string is empty.
---@param str aString  
---@return boolean  
function String.empty(str) end

---Trims whitespace from both ends of the string.  
---@param str aString  
---@return String  
function String.trim(str) end

---Trims whitespace from the start of the string.  
---@param str aString  
---@return String  
function String.trimStart(str) end

---Trims whitespace from the end of the string.  
---@param str aString  
---@return String  
function String.trimEnd(str) end

---Checks if the string starts with the given prefix.  
---@param str aString  
---@param prefix aString  
---@return boolean  
function String.startsWith(str, prefix) end

---Checks if the string ends with the given suffix.  
---@param str aString  
---@param suffix aString  
---@return boolean  
function String.endsWith(str, suffix) end

---Checks if the substring exists in the string.  
---@param str aString  
---@param substr aString  
---@return boolean  
function String.find(str, substr) end

---Splits the string by the given delimiter.  
---@param str aString  
---@param delimiter aString  
---@return String[]  
function String.split(str, delimiter) end

---Returns the length of the string.  
---@param str aString  
---@return integer  
function String.length(str) end

---Replaces all occurrences of one substring with another.  
---@param str aString  
---@param from aString  
---@param to aString  
---@return String  
function String.replace(str, from, to) end

---Removes all color codes from the string.  
---@param str aString  
---@return String  
function String.removeColor(str) end

---Removes all whitespace characters.  
---@param str String  
---@return String  
function String.removeWhitespace(str) end

---Removes all numeric characters.  
---@param str aString  
---@return String  
function String.removeNumbers(str) end

---Removes all non-alphabetic characters.  
---@param str aString  
---@return String  
function String.removeNonAlpha(str) end

---Removes all non-alphanumeric characters.  
---@param str aString  
---@return String  
function String.removeNonAlphanumeric(str) end

---Removes all punctuation characters.  
---@param str aString  
---@return String  
function String.removePunctuation(str) end

---Matches the string against a regex pattern.  
---@param str aString  
---@param pattern aString  
---@return boolean  
function String.matchPattern(str, pattern) end

---Returns a substring from start to end (1-based indexing).  
---@param str aString  
---@param start integer  
---@param end_? integer  
---@return String  
function String.substring(str, start, end_) end

---Counts the number of occurrences of a substring.  
---@param str aString  
---@param sub aString  
---@return integer  
function String.count(str, sub) end

---Converts the String object to a Lua string.  
---@param str aString  
---@return string  
function String.toString(str) end

---Formats the string using placeholders (e.g, String.format("The answer is {}", 42)).  
---@param str aString  
---@param ... any  
---@return String  
function String.format(str, ...) end