# Nuvola Scripting Documentation

Nuvola Scripting is a powerful API built on Lua 5.4.7.
It’s designed to be intuitive, safe, and incredibly fast, enabling you to create anything you can think of with minimal effort.
With support for custom modules, commands, hooks, events, and more, Nuvola gives you the tools to turn your ideas into reality.

# Documentation

We currently don't have a website (yet!).  
In the meantime, you can browse all documented functions in the [API](API/) folder.

# Features
- Modern event system with cancellation and typed event parameters.
- Object-oriented API that lets you directly manipulate objects.
- Lightweight and optimized for performance.
- Over 1000+ documented functions.
- Stack traced error messages.
- Extensive chainability.

# Auto Completion

To get the best scripting experience with Nuvola, it's recommended to set up the [LuaLS](https://github.com/LuaLS/lua-language-server) tool.  
LuaLS provides powerful features such as intelligent code completion, syntax highlighting, type checking, and error detection.

### Setup Instructions

1. In Minecraft with Nuvola injected, run the following command to get the latest documentation:  
   ```
   .lua docs
   ```

2. Download [Visual Studio Code](https://code.visualstudio.com/).

3. Install the Lua Language Server extension by Sumneko from the VS Code marketplace.

4. Open the extension settings and add the following path to `Lua > Workspace > User Third Party`:
   ```
   %localappdata%\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\RoamingState\Nuvola\Scripts\API
   ```