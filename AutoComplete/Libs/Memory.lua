---@meta

---@class memory
memory = {}

---@alias Pointer integer

---@enum eMemoryProtection
eMemoryProtection = {
    READONLY = 1,
    READWRITE = 2,
    EXECUTE = 4,
}

---Allocates a block of size bytes of memory.  
---@param size? integer Default is 24.  
---@return Pointer  
---@nodiscard  
function memory.alloc(size) end

---Allocates a 4-byte buffer where an integer can be stored.  
---@return Pointer  
---@nodiscard  
function memory.allocInt() end

---Frees a previously allocated block of memory.  
---@param ptr Pointer  
function memory.free(ptr) end

---Resets a block of memory to a value.  
---@param ptr Pointer  
---@param val integer  
---@param num integer  
---@return Pointer  
function memory.memSet(ptr, val, num) end

---Copies memory from one address to another.  
---@param dest Pointer  
---@param src Pointer  
---@param size integer  
function memory.copy(dest, src, size) end

---Returns the base address of the specified module.
---@param moduleName? String|string  
---@return Pointer  
---@nodiscard  
function memory.getBaseAddress(moduleName) end

---Calls a C function at the given address with the provided arguments.  
---@param addr Pointer  
---@param ... any  
function memory.luaCallCFunction(addr, ...) end

---Changes the memory protection of a memory region.  
---@param address Pointer  
---@param size integer  
---@param protection eMemoryProtection  
function memory.protect(address, size, protection) end

---Reads an 8-bit signed integer from memory.  
---@param address Pointer  
---@return integer  
---@nodiscard  
function memory.readByte(address) end

---Reads an 8-bit unsigned integer from memory.  
---@param address Pointer  
---@return integer  
---@nodiscard  
function memory.readUByte(address) end

---Reads a 16-bit signed integer from memory.  
---@param address Pointer  
---@return integer  
---@nodiscard  
function memory.readShort(address) end

---Reads a 16-bit unsigned integer from memory.  
---@param address Pointer  
---@return integer  
---@nodiscard  
function memory.readUShort(address) end

---Reads a 32-bit signed integer from memory.  
---@param address Pointer  
---@return integer  
---@nodiscard  
function memory.readInt(address) end

---Reads a 32-bit unsigned integer from memory.  
---@param address Pointer  
---@return integer  
---@nodiscard  
function memory.readUInt(address) end

---Reads a 64-bit signed integer from memory.  
---@param address Pointer  
---@return integer  
---@nodiscard  
function memory.readLong(address) end

---Reads a float (32-bit floating point) from memory.  
---@param address Pointer  
---@return number  
---@nodiscard  
function memory.readFloat(address) end

---Reads a vec3 (three floats) from memory.  
---@param address Pointer  
---@return vec3  
---@nodiscard  
function memory.readVec3(address) end

---Reads a null-terminated string from memory.  
---@param address Pointer  
---@param maxLength? integer  
---@return String  
---@nodiscard  
function memory.readString(address, maxLength) end

---Tries to safely read a string from memory, returning nil if invalid.  
---@param address Pointer  
---@param maxLength? integer  
---@return String?  
---@nodiscard  
function memory.tryReadString(address, maxLength) end

---Reads multiple bytes into an array.  
---@param address Pointer  
---@param length integer  
---@return integer[] bytes  
---@nodiscard  
function memory.readBytes(address, length) end

---Writes an 8-bit signed integer to memory.  
---@param address Pointer  
---@param value integer  
function memory.writeByte(address, value) end

---Writes an 8-bit unsigned integer to memory.  
---@param address Pointer  
---@param value integer  
function memory.writeUByte(address, value) end

---Writes a 16-bit signed integer to memory.  
---@param address Pointer  
---@param value integer  
function memory.writeShort(address, value) end

---Writes a 16-bit unsigned integer to memory.  
---@param address Pointer  
---@param value integer  
function memory.writeUShort(address, value) end

---Writes a 32-bit signed integer to memory.  
---@param address Pointer  
---@param value integer  
function memory.writeInt(address, value) end

---Writes a 32-bit unsigned integer to memory.  
---@param address Pointer  
---@param value integer  
function memory.writeUInt(address, value) end

---Writes a 64-bit signed integer to memory.  
---@param address Pointer  
---@param value integer  
function memory.writeLong(address, value) end

---Writes a float (32-bit floating point) to memory.  
---@param address Pointer  
---@param value number  
function memory.writeFloat(address, value) end

---Writes a vec3 (three floats) to memory.  
---@param address Pointer  
---@param value vec3  
function memory.writeVec3(address, value) end

---Writes a string to memory.  
---@param address Pointer  
---@param value String|string  
function memory.writeString(address, value) end

---Writes multiple bytes from an array to memory.  
---@param address Pointer  
---@param bytes integer[]  
function memory.writeBytes(address, bytes) end

---Reads a Lua table from memory according to a format.  
---@param address Pointer  
---@param format String|string e.g., "iif" means int, int, float  
---@return table  
---@nodiscard  
function memory.readTable(address, format) end

---Writes a Lua table to memory according to a format.  
---@param address Pointer  
---@param tbl table  
---@param format String|string  
function memory.writeTable(address, tbl, format) end

---Performs a RIP-relative address calculation.  
---@param address Pointer  
---@return Pointer  
---@nodiscard  
function memory.rip(address) end

---Scans for a byte pattern in a module's memory.  
---@param pattern String|string  
---@param moduleName? String|string  
---@return Pointer  
---@nodiscard  
function memory.scan(pattern, moduleName) end