---@meta

---@class curl
curl = {}

---@enum eCurlCode
eCurlCode = {
    CURLE_COULDNT_CONNECT = 0,
    CURLE_COULDNT_RESOLVE_HOST = 1,
    CURLE_COULDNT_RESOLVE_PROXY = 2,
    CURLE_FAILED_INIT = 3,
    CURLE_FTP_WEIRD_SERVER_REPLY = 4,
    CURLE_NOT_BUILT_IN = 5,
    CURLE_OK = 6,
    CURLE_OUT_OF_MEMORY = 7,
    CURLE_REMOTE_ACCESS_DENIED = 8,
    CURLE_UNSUPPORTED_PROTOCOL = 9,
    CURLE_URL_MALFORMAT = 10
}

---@enum eCurlOption
eCurlOption = {
    CURLOPT_HTTPAUTH = 0,
    CURLOPT_NOPROGRESS = 1,
    CURLOPT_POST = 2,
    CURLOPT_POSTFIELDS = 3,
    CURLOPT_URL = 4,
    CURLOPT_USERAGENT = 5,
    CURLOPT_WRITEDATA = 6,
    CURLOPT_WRITEFUNCTION = 7,
    CURLOPT_XFERINFODATA = 8,
    CURLOPT_XFERINFOFUNCTION = 9,
    CURLOPT_XOAUTH2_BEARER = 10
}

---Creates a new curl object.  
---@return curl  
---@nodiscard  
function curl.new() end

---Adds a header to the request.  
---@param header String|string  
---@return curl  
function curl:addHeader(header) end

---Clears all previously set headers.  
---@return curl  
function curl:clearHeaders() end

---Set a curl option.  
---@param option eCurlOption  
---@param value String|string|integer  
---@return curl  
function curl:setopt(option, value) end

---Perform the curl request asynchronously.  
function curl:perform() end

---Perform the curl request synchronously.  
function curl:performSync() end

---Abort the current perform operation if running.  
function curl:abort() end

---Reset the curl object to a fresh state (clear options and headers).  
function curl:reset() end

---Returns whether the perform call has finished.  
---@return boolean  
---@nodiscard  
function curl:getFinished() end

---Get the response after perform. Only available if no custom write function was used.  
---@return eCurlCode code, String response  
---@nodiscard  
function curl:getResponse() end

---Get the HTTP response status code (e.g., 200, 404). Only valid after perform finishes.  
---@return integer?  
---@nodiscard  
function curl:getStatusCode() end

---Get the Content-Type of the response, if available.  
---@return String?  
---@nodiscard  
function curl:getContentType() end

---Get the Content-Length of the response, if available.  
---@return number?  
---@nodiscard  
function curl:getContentLength() end

---Get a human-readable error message after a failed perform.  
---@return String?  
---@nodiscard  
function curl:getError() end

---Download the response directly into a file.  
---@param filePath String|string  
---@return curl  
function curl:downloadToFile(filePath) end

---Upload the contents of a file.  
---@param filePath String|string  
---@return curl  
function curl:uploadFromFile(filePath) end

---Quick GET request shortcut.  
---@param url String|string  
---@return curl  
function curl:get(url) end

---Quick POST request shortcut.  
---@param url String|string  
---@param data table|String|string  
---@return curl  
function curl:post(url, data) end

---Set a Lua function to receive downloaded data chunks.  
---@param callback fun(data: String|string)  
---@return curl  
function curl:setWriteCallback(callback) end

---Set a Lua function to receive progress updates.  
---@param callback fun(downloadTotal: number, downloadNow: number, uploadTotal: number, uploadNow: number)  
---@return curl  
function curl:setProgressCallback(callback) end

---Set a timeout for the request (in seconds).  
---@param seconds number  
---@return curl
function curl:setTimeout(seconds) end

---Escape (percent-encode) a URL string.  
---@param url String|string  
---@return String  
function curl.escape(url) end

---Unescape (decode) a percent-encoded URL string.  
---@param url String|string  
---@return String  
function curl.unescape(url) end