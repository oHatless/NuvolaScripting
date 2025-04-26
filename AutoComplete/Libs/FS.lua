---@meta

---@class fs
fs = {}

---@class Path
local Path = {}

---Joins another part onto the current path.  
---@param other String|string  
---@return Path  
function Path:join(other) end

---Returns the filename (e.g., "file.txt").  
---@return Path  
function Path:filename() end

---Returns the file stem (e.g., "file" from "file.txt").  
---@return Path  
function Path:stem() end

---Returns the file extension (e.g., ".txt").  
---@return Path  
function Path:extension() end

---Returns the parent directory path.  
---@return Path  
function Path:parentPath() end

---Returns the absolute path.  
---@return Path  
function Path:absolute() end

---Returns the canonical (cleaned) path.  
---@return Path  
function Path:canonical() end

---Converts the Path to a string.  
---@return string  
---@nodiscard  
function Path:toString() end

---Returns whether this path exists.  
---@return boolean  
---@nodiscard  
function Path:exists() end

---Returns whether this path is a file.  
---@return boolean  
---@nodiscard  
function Path:isFile() end

---Returns whether this path is a directory.  
---@return boolean  
---@nodiscard  
function Path:isDirectory() end

---Creates a new Path object.  
---@param initialPath String|string  
---@return Path  
---@nodiscard  
function fs.path(initialPath) end

---Returns whether a path exists.  
---@param path String|string|Path  
---@return boolean  
---@nodiscard  
function fs.exists(path) end

---Returns whether a path is a file.  
---@param path String|string|Path  
---@return boolean  
---@nodiscard  
function fs.isFile(path) end

---Returns whether a path is a directory.  
---@param path String|string|Path  
---@return boolean  
---@nodiscard  
function fs.isDirectory(path) end

---Returns the size of a file (in bytes).  
---@param path String|string|Path  
---@return integer  
---@nodiscard  
function fs.fileSize(path) end

---Returns the last write time of a file (as a timestamp in seconds).  
---@param path String|string|Path  
---@return number  
---@nodiscard  
function fs.lastWriteTime(path) end

---Returns the filename.  
---@param path String|string|Path  
---@return string  
---@nodiscard  
function fs.filename(path) end

---Returns the file stem.  
---@param path String|string|Path  
---@return string  
---@nodiscard  
function fs.stem(path) end

---Returns the file extension.  
---@param path String|string|Path  
---@return string  
---@nodiscard  
function fs.extension(path) end

---Returns the parent path (directory).  
---@param path String|string|Path  
---@return string  
---@nodiscard  
function fs.parentPath(path) end

---Returns the absolute path.  
---@param path String|string|Path  
---@return string  
---@nodiscard  
function fs.absolute(path) end

---Returns the canonical path (resolves symbolic links, etc.)  
---@param path String|string|Path  
---@return string  
---@nodiscard  
function fs.canonical(path) end

---Creates a directory (single level).  
---@param path String|string|Path  
---@return boolean  
function fs.createDirectory(path) end

---Creates directories recursively (multiple levels).  
---@param path String|string|Path  
---@return boolean  
function fs.createDirectories(path) end

---Removes a file or empty directory.  
---@param path String|string|Path  
---@return boolean  
function fs.remove(path) end

---Recursively removes a directory and its contents.  
---@param path String|string|Path  
---@return boolean  
function fs.removeAll(path) end

---Renames or moves a file or directory.  
---@param oldPath String|string|Path  
---@param newPath String|string|Path  
function fs.rename(oldPath, newPath) end

---Copies a file or directory.  
---@param fromPath String|string|Path  
---@param toPath String|string|Path  
---@param overwrite? boolean  
function fs.copy(fromPath, toPath, overwrite) end

---Returns a list of filenames inside a directory (non-recursive).  
---@param path String|string|Path  
---@return String[]  
---@nodiscard  
function fs.list(path) end

---Returns a list of filenames inside a directory recursively.  
---@param path String|string|Path  
---@return String[]  
---@nodiscard  
function fs.listRecursive(path) end

---Reads the entire contents of a file as a string.  
---@param path String|string|Path  
---@return String?  
---@nodiscard  
function fs.readFile(path) end

---Writes a string to a file (overwrites if exists).  
---@param path String|string|Path  
---@param content String|string  
---@return boolean  
function fs.writeFile(path, content) end

---Appends a string to a file.  
---@param path String|string|Path  
---@param content String|string  
---@return boolean  
function fs.appendFile(path, content) end

---Checks if a path has a specific extension (case-insensitive).  
---@param path String|string|Path  
---@param ext String|string  
---@return boolean  
---@nodiscard  
function fs.hasExtension(path, ext) end

---Returns true if a directory contains a specific file or subdirectory.  
---@param dir String|string|Path  
---@param name String|string  
---@return boolean  
---@nodiscard  
function fs.contains(dir, name) end

---Creates an empty file (like "touch" on Linux).  
---@param path String|string|Path  
---@return boolean  
function fs.touch(path) end

---Returns true if a file is readable.  
---@param path String|string|Path  
---@return boolean  
---@nodiscard  
function fs.isReadable(path) end

---Returns true if a file is writable.  
---@param path String|string|Path  
---@return boolean  
---@nodiscard  
function fs.isWritable(path) end

---Safely joins two path parts into a single path.  
---@param a String|string|Path  
---@param b String|string|Path  
---@return string  
---@nodiscard  
function fs.join(a, b) end

---Splits a full path into directory and filename parts.  
---@param path String|string|Path  
---@return string dir, string file  
---@nodiscard  
function fs.split(path) end