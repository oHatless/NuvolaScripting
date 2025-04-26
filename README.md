# Nuvola Scripting

Nuvola Scripting is a powerful API built on Lua 5.4.7, utilizing all the latest features.
It’s designed to be intuitive, safe, and incredibly fast, enabling you to create anything you can think of with minimal effort.
With support for custom modules, commands, hooks, events, and more, Nuvola gives you the tools to turn your ideas into reality.

Examples can be found in the examples directory [here](Examples/Modules/).

# Documentation

We currently don't have a website (yet!).  
In the meantime, you can browse all documented functions in the [AutoComplete](AutoComplete/) folder.

# Features
- [Fastest in the land](BENCHMARK.md) (Outperforms Latite, Flarial, Onix, Selaura and Solstice in every category).
- Modern event system with cancellation and typed event parameters.
- Object-oriented API that lets you manipulate objects directly with method binds, no need for wrapper functions!
- Lightweight and optimized for performance.
- Stack traced error messages and safe failover.
- Handles edge cases. Null pointers, missing data, and invalid references won't cause crashes.
- Over 200 documented functions and growing.
- Extensive chainability.
- Actively maintained.

# AutoComplete

Nuvola offers full autocomplete and IntelliSense support in Visual Studio Code, making scripting faster and easier.

### Setup Instructions

1. In Minecraft with Nuvola injected, run the following command to get the latest autocomplete:  
   ```
   .lua autocomplete
   ```

2. Download [Visual Studio Code](https://code.visualstudio.com/) (if you haven’t already).

3. Install the Lua Language Server extension by Sumneko from the VS Code marketplace.

4. Open the extension settings and add the following path to `Lua > Workspace > User Third Party`:
   ```
   %localappdata%\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\RoamingState\Nuvola\Scripts\AutoComplete
   ```

You're all set! You'll now get smart autocomplete, function signatures and type hints as you script with Nuvola.