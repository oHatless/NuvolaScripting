# Nuvola Scripting Documentation

Nuvola Scripting is a powerful API built on Lua 5.4.7.
It’s designed to be intuitive, safe, and incredibly fast, enabling you to create anything you can think of with minimal effort.
With support for custom modules, commands, hooks, events, and more, Nuvola gives you the tools to turn your ideas into reality.

Examples can be found in the examples directory [here](Examples/Modules/).

# Documentation

We currently don't have a website (yet!).  
In the meantime, you can browse all documented functions in the [AutoComplete](AutoComplete/) folder.

# Features
- Modern event system with cancellation and typed event parameters.
- Object-oriented API that lets you directly manipulate objects.
- Lightweight and optimized for performance.
- Over 1000+ documented functions.
- Stack traced error messages.
- Extensive chainability.

# Libs vs Binds

- Libs are static global functions that can be called from anywhere.  
   They have slightly more overhead and consume more resources compared to binds.

Example:
```lua
local pos = player.getPosition()
```

- Binds are objects that can either be created using .new(), or returned by a static function or event.  
   Functions called on binds are much more efficient and optimized for performance.

Example:
```lua
local req = curl.new()
   :setopt(eCurlOption.CURLOPT_USERAGENT, "MCPE/Nuvola")
   :get("https://example.com")

req:performSync()
print(req:getResponse())
```

# Execution

Understanding how the API handles execution is essential to avoid deadlocks and random freezes.

When a script is loaded by the API, it first calls `client.registerModule()` exactly once to retrieve metadata.  
After registration, all global scope code is executed immediately. Then, lifecycle functions like `onEnable()` are called as needed.  

It’s important to note that global code is only executed once.  
If you want your script to run code continuously, you must call `script.loop()`.  
It runs your code repeatedly in a dedicated thread shared by all scripts, with an optional delay you specify.  
Do not call `timer.sleep()` inside `script.loop()`, as it will sleep the entire thread and block other scripts from looping.

# AutoComplete

Nuvola offers full autocomplete and IntelliSense support in Visual Studio Code, making scripting faster and easier.

### Setup Instructions

1. In Minecraft with Nuvola injected, run the following command to get the latest autocomplete:  
   ```
   .lua autocomplete
   ```

2. Download [Visual Studio Code](https://code.visualstudio.com/).

3. Install the Lua Language Server extension by Sumneko from the VS Code marketplace.

4. Open the extension settings and add the following path to `Lua > Workspace > User Third Party`:
   ```
   %localappdata%\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\RoamingState\Nuvola\Scripts\AutoComplete
   ```