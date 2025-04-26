---@meta

---@class algorithm
algorithm = {}

---@class Algorithm
local Algorithm = {}

---Creates a new Algorithm object.  
---@return Algorithm  
---@nodiscard  
function algorithm.new() end

---Sorts a table.  
---@param tbl table  
---@param comp? fun(a: any, b: any): boolean  
function algorithm.sort(tbl, comp) end

---Finds a value in a table.  
---@param tbl table  
---@param value any  
---@return integer?  
---@nodiscard  
function algorithm.find(tbl, value) end

---Filters a table based on a predicate.  
---@param tbl table  
---@param predicate fun(value: any): boolean  
---@return table  
---@nodiscard  
function algorithm.filter(tbl, predicate) end

---Maps a function over a table.  
---@param tbl table  
---@param mapper fun(value: any): any  
---@return table  
---@nodiscard  
function algorithm.map(tbl, mapper) end

---Reduces a table to a single value.  
---@param tbl table  
---@param reducer fun(accumulator: any, value: any): any  
---@param initial any  
---@return any  
---@nodiscard  
function algorithm.reduce(tbl, reducer, initial) end

---Reverses a table.  
---@param tbl table  
---@return table  
---@nodiscard  
function algorithm.reverse(tbl) end

---Shuffles a table.  
---@param tbl table  
---@return table  
---@nodiscard  
function algorithm.shuffle(tbl) end

---Removes duplicates from a table.  
---@param tbl table  
---@return table  
---@nodiscard  
function algorithm.unique(tbl) end

---Clones a table.  
---@param tbl table  
---@return table  
---@nodiscard  
function algorithm.clone(tbl) end

---Sorts the internal table.  
---@param comp? fun(a: any, b: any): boolean  
---@return Algorithm  
function Algorithm:sort(comp) end

---Finds a value in the internal table.  
---@param value any  
---@return integer?  
---@nodiscard  
function Algorithm:find(value) end

---Filters the internal table.  
---@param predicate fun(value: any): boolean  
---@return Algorithm  
function Algorithm:filter(predicate) end

---Maps a function over the internal table.  
---@param mapper fun(value: any): any  
---@return Algorithm  
function Algorithm:map(mapper) end

---Reduces the internal table.  
---@param reducer fun(accumulator: any, value: any): any  
---@param initial any  
---@return any  
---@nodiscard  
function Algorithm:reduce(reducer, initial) end

---Reverses the internal table.  
---@return Algorithm  
function Algorithm:reverse() end

---Shuffles the internal table.  
---@return Algorithm  
function Algorithm:shuffle() end

---Removes duplicates in the internal table.  
---@return Algorithm  
function Algorithm:unique() end

---Clones the internal table.  
---@return table  
---@nodiscard  
function Algorithm:clone() end

---Sets the table to operate on.  
---@param tbl table  
---@return Algorithm  
function Algorithm:setTable(tbl) end

---Gets the internal table.  
---@return table  
---@nodiscard  
function Algorithm:getTable() end