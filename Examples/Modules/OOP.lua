client.registerModule("OOP", "A script showcasing object oriented programming")

local request = curl.new()
    :setopt(eCurlOption.CURLOPT_USERAGENT, "MCPE/Nuvola")
    :get("https://example.com")

request:performSync()

local code, body = request:getResponse()

if code == eCurlCode.CURLE_OK then
    print("Downloaded content length:", #body)
else
    print("Request failed:", request:getError())
end

local savePath = fs.getNuvolaPath():join("Data"):join("Example.txt")

if not savePath:parentPath():exists() then
    fs.createDirectories(savePath:parentPath())
end

fs.writeFile(savePath, body)
print("Saved downloaded content to:", savePath:toString())

local r = regex.new("<title>(.-)</title>", eRegexFlags.IGNORECASE)
local title = r:find(body)

if title then
    print("Found page title:", title)
else
    print("No title found.")
end

thread.run(function()
    local tRequest = curl.new()
        :get("https://google.com")
    tRequest:performSync()

    local tCode, tResult = tRequest:getResponse()

    if tCode == eCurlCode.CURLE_OK then
        print("[Thread] Fetched length:", #tResult)
    else
        print("[Thread] Error:", tRequest:getError())
    end
end)