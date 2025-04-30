---@meta

---@class Renderer
local Renderer = {}

---@enum eFont
eFont = {
	Mojangles = 0,

	Greycliff_Regular = 1,
	Greycliff_RegularOblique = 2,
	Greycliff_Light = 3,
	Greycliff_LightOblique = 4,
	Greycliff_ExtraLight = 5,
	Greycliff_ExtraLightOblique = 6,
	Greycliff_Book = 7,
	Greycliff_BookOblique = 8,
	Greycliff_Medium = 9,
	Greycliff_MediumOblique = 10,
	Greycliff_DemiBold = 11,
	Greycliff_DemiBoldOblique = 12,
	Greycliff_Bold = 13,
	Greycliff_BoldOblique = 14,
	Greycliff_ExtraBold = 15,
	Greycliff_ExtraBoldOblique = 16,
	Greycliff_Black = 17,
	Greycliff_BlackOblique = 18,

	Inter_Thin = 19,
	Inter_ThinItalic = 20,
	Inter_ExtraLight = 21,
	Inter_ExtraLightItalic = 22,
	Inter_Light = 23,
	Inter_LightItalic = 24,
	Inter_Regular = 25,
	Inter_Italic = 26,
	Inter_Medium = 27,
	Inter_MediumItalic = 28,
	Inter_SemiBold = 29,
	Inter_SemiBoldItalic = 30,
	Inter_Bold = 31,
	Inter_BoldItalic = 32,
	Inter_ExtraBold = 33,
	Inter_ExtraBoldItalic = 34,
	Inter_Black = 35,
	Inter_BlackItalic = 36
}

---Converts a 0–1 RGBA color format to 0–255 integer format.  
---@param color vec4  
---@return vec4  
---@nodiscard  
function Renderer:asInt(color) end

---Converts a 0–1 RGB color format to 0–255 integer format.  
---@param color vec3  
---@return vec3  
---@nodiscard  
function Renderer:asInt(color) end

---Converts a 0–1 RGBA color format to 0–255 integer format.  
---@param r number  
---@param g number  
---@param b number  
---@param a number  
---@return integer r  
---@return integer g  
---@return integer b  
---@return integer a  
---@nodiscard  
function Renderer:asInt(r, g, b, a) end

---Converts a 0–1 RGB color format to 0–255 integer format.  
---@param r number  
---@param g number  
---@param b number  
---@return integer r  
---@return integer g  
---@return integer b  
---@nodiscard  
function Renderer:asInt(r, g, b) end

---Converts a 0–255 integer color format to 0–1 RGBA format.  
---@param color vec4  
---@return vec4  
---@nodiscard  
function Renderer:asFloat(color) end

---Converts a 0–255 integer color format to 0–1 RGB format.  
---@param color vec3  
---@return vec3  
---@nodiscard  
function Renderer:asFloat(color) end

---Converts a 0–255 integer color format to 0–1 RGBA format.  
---@param r number  
---@param g number  
---@param b number  
---@param a number  
---@return integer r  
---@return integer g  
---@return integer b  
---@return integer a  
---@nodiscard  
function Renderer:asFloat(r, g, b, a) end

---Converts a 0–255 integer color format to 0–1 RGB format.  
---@param r number  
---@param g number  
---@param b number  
---@return integer r  
---@return integer g  
---@return integer b  
---@nodiscard  
function Renderer:asFloat(r, g, b) end

---Pushes a new drawing color onto the stack.  
---@param color vec4 # RGBA values between 0-1.  
function Renderer:pushColor(color) end

---Pushes a new drawing color onto the stack.  
---@param color vec3 # RGB values between 0-1.  
function Renderer:pushColor(color) end

---Pushes a new drawing color onto the stack.  
---@param r number # 0-1.  
---@param g number # 0-1.  
---@param b number # 0-1.  
---@param a number # 0-1.  
function Renderer:pushColor(r, g, b, a) end

---Pushes a new drawing color onto the stack.  
---@param r number # 0-1.  
---@param g number # 0-1.  
---@param b number # 0-1.  
function Renderer:pushColor(r, g, b) end

---Pops the last drawing color off the stack.  
---The renderer handles the color stack automatically, so you usually don't need to call this.  
function Renderer:popColor() end

---Pushes a new font onto the stack.  
---@param font eFont  
function Renderer:pushFont(font) end

---Pops the last font off the stack.  
---The renderer handles the font stack automatically, so you usually don't need to call this.  
function Renderer:popFont() end

---Draws a line between two points.  
---@param start vec2  
---@param finish vec2  
---@param thickness? number  
function Renderer:drawLine(start, finish, thickness) end

---Draws a filled rectangle.  
---@param pos vec2  
---@param size vec2  
function Renderer:drawRect(pos, size) end

---Draws an outlined rectangle.  
---@param pos vec2  
---@param size vec2  
---@param thickness? number
function Renderer:drawRectOutline(pos, size, thickness) end

---Draws a filled rounded rectangle.  
---@param pos vec2  
---@param size vec2  
---@param radius number  
---@param segments? integer  
function Renderer:drawRoundedRect(pos, size, radius, segments) end

---Draws a rounded rectangle outline.  
---@param pos vec2  
---@param size vec2  
---@param radius number  
---@param thickness? number  
---@param segments? integer  
function Renderer:drawRoundedRectOutline(pos, size, radius, thickness, segments) end

---Draws a circle.  
---@param center vec2  
---@param radius number  
---@param segments? integer  
function Renderer:drawCircle(center, radius, segments) end

---Returns the width and height of a text string using the current font and scale.  
---@param text string  
---@param scale? number  
---@return vec2  
---@nodiscard  
function Renderer:getTextSize(text, scale) end

---Draws text on screen.  
---@param pos vec2  
---@param text string  
---@param scale? number  
function Renderer:drawText(pos, text, scale) end

---Draws text centered around the given position.  
---@param pos vec2  
---@param text string  
---@param scale? number  
function Renderer:drawTextCentered(pos, text, scale) end