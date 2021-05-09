--[[------------------------------------------------------------------
  Windows 98 default themes
  @author Matsilagi
]]--------------------------------------------------------------------

if SERVER then return end

local sizeadd = 6

W98HUD:addTheme('architec', 'Architecture', {
  parameters = {
    desktop = Color(165, 165, 169), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(0, 0, 0), --Button Shadow
    titleSize = 20, --Titlebar Size
    titleTxtFont = 'Times New Roman', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(224, 160, 96), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(104, 56, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(136, 176, 144), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 72, 0), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(184, 112, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
  }
})

W98HUD:addTheme('baseb', 'Baseball (256 color)', {
  parameters = {
    desktop = Color(138, 102, 79), --Background
    bgCol1 = Color(208, 168, 112), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(208, 168, 112), --Caption Button Color
    btnCol1 = Color(232, 208, 184), --Button Light
    btnCol2 = Color(160, 112, 56), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Century Gothic', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(255, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(255, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(160, 112, 56), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(160, 112, 56), --Inactive Titlebar Color
    iTitleTxtCol = Color(208, 168, 112), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(208, 168, 112), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(208, 168, 112), --Inactive Window Border Color
    selItemsCol1 = Color(255, 0, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
  }
})

W98HUD:addTheme('bugs', 'Bugs (256 color)', {
  parameters = {
    desktop = Color(104, 120, 80), --Background
    bgCol1 = Color(152, 168, 128), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(152, 168, 128), --Caption Button Color
    btnCol1 = Color(208, 208, 192), --Button Light
    btnCol2 = Color(104, 120, 0), --Button Shadow
    titleSize = 28, --Titlebar Size
    titleTxtFont = 'Curlz MT', --Titlebar Font
    titleTxtSize = sizeadd + 14, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 128, 128), --Active Titlebar Text Color
    iTitleCol1 = Color(104, 120, 80), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(104, 120, 80), --Inactive Titlebar Color
    iTitleTxtCol = Color(192, 192, 192), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(152, 168, 128), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(152, 168, 128), --Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 128, 128), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Times New Roman', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
  }
})

W98HUD:addTheme('cathy', 'Cathy', {
  parameters = {
    desktop = Color(166, 202, 240), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 20, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 11, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = true, --Titlebar Text Italic
    aTitleCol1 = Color(128, 0, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(128, 0, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(0, 0, 0), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 0, 0), --Inactive Titlebar Color
    iTitleTxtCol = Color(160, 160, 168), --Inactive Titlebar Text Color
    aBorderSize = 4, --Active Window Border Size
    aBorderCol = Color(128, 0, 128), --Active Window Border Color
    iBorderSize = 4, --Inactive Window Border Size
    iBorderCol = Color(0, 0, 0), --Inactive Window Border Color
    selItemsCol1 = Color(128, 0, 128), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
  }
})

W98HUD:addTheme('city', 'Cityscape', {
  parameters = {
    desktop = Color(78, 80, 154), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'OCR A Extended', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 152), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(144, 168, 255), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(16, 0, 72), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(152, 168, 216), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(88, 120, 240), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
  }
})

W98HUD:addTheme('corbis', 'Corbis Photography (high color)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 128, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), --Inactive Titlebar Color
    iTitleTxtCol = Color(192, 192, 192), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('danger', 'Dangerous Creatures (256 color)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(112, 112, 112), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(112, 112, 112), --Caption Button Color
    btnCol1 = Color(184, 184, 184), --Button Light
    btnCol2 = Color(72, 72, 72), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 128, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 128, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(72, 72, 72), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(72, 72, 72), --Inactive Titlebar Color
    iTitleTxtCol = Color(112, 112, 112), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(112, 112, 112), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(112, 112, 112), --Inactive Window Border Color
    selItemsCol1 = Color(0, 128, 128), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('doon', 'Doonesbury', {
  parameters = {
    desktop = Color(0, 0, 128), --Background
    bgCol1 = Color(144, 152, 160), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(144, 152, 160), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(96, 104, 112), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Verdana', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(255, 255, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(255, 255, 0), --Active Titlebar Color
    aTitleTxtCol = Color(128, 0, 0), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 0, 0), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 0, 0), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 0), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(128, 128, 128), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(96, 104, 112), --Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 120), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(128, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('fallingl', 'Falling Leaves (high color)', {
  parameters = {
    desktop = Color(0, 124, 120), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(184, 188, 184), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Tempus Sans ITC', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(240, 104, 64), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(152, 40, 32), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(255, 192, 72), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(232, 104, 0), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(152, 40, 32), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('fash', 'Fashion (high color)', {
  parameters = {
    desktop = Color(205, 186, 169), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Lucida Handwriting', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(184, 104, 104), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(112, 48, 48), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(152, 160, 192), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(80, 80, 120), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(200, 168, 152), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('foxt', 'FoxTrot', {
  parameters = {
    desktop = Color(0, 0, 128), --Background
    bgCol1 = Color(144, 152, 160), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(144, 152, 160), --Caption Button Color
    btnCol1 = Color(200, 208, 208), --Button Light
    btnCol2 = Color(96, 104, 112), --Button Shadow
    titleSize = 23, --Titlebar Size
    titleTxtFont = 'Comic Sans MS', --Titlebar Font
    titleTxtSize = sizeadd + 11, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(255, 255, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(255, 255, 0), --Active Titlebar Color
    aTitleTxtCol = Color(0, 0, 128), --Active Titlebar Text Color
    iTitleCol1 = Color(0, 0, 0), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 0, 0), --Inactive Titlebar Color
    iTitleTxtCol = Color(200, 208, 208), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(128, 128, 128), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(96, 104, 112), --Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 128), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 0), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Comic Sans MS', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('garfielf', 'Garfield', {
  parameters = {
    desktop = Color(255, 251, 240), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(128, 128, 128), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(0, 0, 0), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Comic Sans MS', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(255, 153, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(255, 153, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(255, 208, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(255, 208, 128), --Inactive Titlebar Color
    iTitleTxtCol = Color(192, 192, 192), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(255, 153, 0), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(168, 200, 240), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Comic Sans MS', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('geom', 'Geometry (high color)', {
  parameters = {
    desktop = Color(0, 0, 94), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Verdana', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 208), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 104), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 128, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 0, 0), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(208, 184, 24), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('horr', 'Horror Channel (high color)', {
  parameters = {
    desktop = Color(11, 45, 49), --Background
    bgCol1 = Color(152, 168, 112), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(152, 168, 112), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 22, --Titlebar Size
    titleTxtFont = 'Dom Casual', --Titlebar Font
    titleTxtSize = sizeadd + 12, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = true, --Titlebar Text Italic
    aTitleCol1 = Color(72, 16, 112), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(72, 16, 112), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(80, 76, 56), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(80, 76, 56), --Inactive Titlebar Color
    iTitleTxtCol = Color(128, 128, 128), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(0, 0, 128), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(0, 0, 128), --Inactive Window Border Color
    selItemsCol1 = Color(80, 80, 64), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Dom Casual', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('horse', 'Horses (256 color)', {
  parameters = {
    desktop = Color(155, 104, 121), --Background
    bgCol1 = Color(184, 188, 184), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(208, 184, 192), --Caption Button Color
    btnCol1 = Color(232, 216, 224), --Button Light
    btnCol2 = Color(152, 104, 120), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Lucida Handwriting', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(152, 104, 144), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(152, 104, 144), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(176, 144, 176), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(176, 144, 176), --Inactive Titlebar Color
    iTitleTxtCol = Color(128, 88, 120), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(208, 184, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(208, 184, 192), --Inactive Window Border Color
    selItemsCol1 = Color(168, 128, 160), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('comp', 'Inside your Computer (high color)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(168, 200, 168), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(168, 200, 168), --Caption Button Color
    btnCol1 = Color(216, 224, 216), --Button Light
    btnCol2 = Color(96, 152, 96), --Button Shadow
    titleSize = 20, --Titlebar Size
    titleTxtFont = 'Abadi MT Condensed Light', --Titlebar Font
    titleTxtSize = sizeadd + 12, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(224, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(224, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(96, 168, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(96, 168, 128), --Inactive Titlebar Color
    iTitleTxtCol = Color(216, 224, 216), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(168, 200, 168), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(168, 200, 168), --Inactive Window Border Color
    selItemsCol1 = Color(248, 255, 160), --Selected Item (Highlight) Color
    selItemsCol2 = Color(0, 0, 0), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Abadi MT Condensed Light', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('jazz', 'Jazz', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(184, 188, 184), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 23, --Titlebar Size
    titleTxtFont = 'Curlz MT', --Titlebar Font
    titleTxtSize = sizeadd + 12, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(208, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(128, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 128, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(48, 48, 48), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(128, 136, 160), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('jung', 'Jungle (256 color)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(184, 160, 104), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(184, 160, 104), --Caption Button Color
    btnCol1 = Color(224, 208, 184), --Button Light
    btnCol2 = Color(128, 112, 64), --Button Shadow
    titleSize = 22, --Titlebar Size
    titleTxtFont = 'Matisse ITC', --Titlebar Font
    titleTxtSize = sizeadd + 12, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(240, 144, 16), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 112, 64), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 112, 64), --Inactive Titlebar Color
    iTitleTxtCol = Color(128, 0, 0), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(184, 160, 104), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(184, 160, 104), --Inactive Window Border Color
    selItemsCol1 = Color(128, 0, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(240, 144, 16), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Tempus Sans ITC', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('davinki', 'Leonardo da Vinci (256 color)', {
  parameters = {
    desktop = Color(139, 101, 92), --Background
    bgCol1 = Color(191, 165, 159), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(191, 165, 159), --Caption Button Color
    btnCol1 = Color(223, 210, 208), --Button Light
    btnCol2 = Color(139, 101, 92), --Button Shadow
    titleSize = 20, --Titlebar Size
    titleTxtFont = 'Book Antiqua', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(128, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(128, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(139, 101, 92), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(139, 101, 92), --Inactive Titlebar Color
    iTitleTxtCol = Color(223, 210, 208), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(191, 165, 159), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(191, 165, 159), --Inactive Window Border Color
    selItemsCol1 = Color(128, 0, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('mess', 'Messy Room (256 color)', {
  parameters = {
    desktop = Color(72, 72, 168), --Background
    bgCol1 = Color(144, 144, 208), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(144, 144, 208), --Caption Button Color
    btnCol1 = Color(200, 200, 232), --Button Light
    btnCol2 = Color(72, 72, 168), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Tempus Sans ITC', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(128, 0, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(128, 0, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(72, 72, 168), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(72, 72, 168), --Inactive Titlebar Color
    iTitleTxtCol = Color(128, 128, 128), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(144, 144, 208), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(144, 144, 208), --Inactive Window Border Color
    selItemsCol1 = Color(0, 255, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(0, 0, 0), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Tempus Sans ITC', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('morewin', 'More Windows (high color)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(144, 152, 160), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(144, 152, 160), --Caption Button Color
    btnCol1 = Color(200, 208, 208), --Button Light
    btnCol2 = Color(96, 104, 112), --Button Shadow
    titleSize = 22, --Titlebar Size
    titleTxtFont = 'News Gothic MT', --Titlebar Font
    titleTxtSize = sizeadd + 12, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = true, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(240, 208, 48), --Active Titlebar Text Color
    iTitleCol1 = Color(96, 104, 112), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(96, 104, 112), --Inactive Titlebar Color
    iTitleTxtCol = Color(200, 200, 208), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(144, 152, 160), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(144, 152, 160), --Inactive Window Border Color
    selItemsCol1 = Color(240, 208, 48), --Selected Item (Highlight) Color
    selItemsCol2 = Color(0, 0, 0), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('myster', 'Mystery (high color)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(104, 120, 104), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(104, 120, 104), --Caption Button Color
    btnCol1 = Color(104, 120, 104), --Button Light
    btnCol2 = Color(72, 80, 72), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Calisto MT', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(80, 56, 64), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(80, 56, 64), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 240), --Active Titlebar Text Color
    iTitleCol1 = Color(72, 80, 72), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(72, 80, 72), --Inactive Titlebar Color
    iTitleTxtCol = Color(104, 120, 104), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(104, 120, 104), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(104, 120, 104), --Inactive Window Border Color
    selItemsCol1 = Color(184, 120, 64), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('nat', 'Nature (high color)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(216, 192, 160), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(184, 188, 184), --Caption Button Color
    btnCol1 = Color(240, 224, 208), --Button Light
    btnCol2 = Color(176, 136, 72), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Copperplate Gothic Bold', --Titlebar Font
    titleTxtSize = sizeadd + 11, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 72, 72), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 72, 72), --Active Titlebar Color
    aTitleTxtCol = Color(240, 232, 216), --Active Titlebar Text Color
    iTitleCol1 = Color(104, 80, 56), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(104, 80, 56), --Inactive Titlebar Color
    iTitleTxtCol = Color(0, 0, 0), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(216, 192, 160), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(216, 192, 160), --Inactive Window Border Color
    selItemsCol1 = Color(176, 144, 112), --Selected Item (Highlight) Color
    selItemsCol2 = Color(0, 0, 0), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('peanus', 'Peanuts', {
  parameters = {
    desktop = Color(0, 255, 0), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 20, --Titlebar Size
    titleTxtFont = 'Comic Sans MS', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 128, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 128, 0), --Active Titlebar Color
    aTitleTxtCol = Color(0, 255, 0), --Active Titlebar Text Color
    iTitleCol1 = Color(160, 160, 168), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(160, 160, 168), --Inactive Titlebar Color
    iTitleTxtCol = Color(192, 224, 192), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(255, 248, 240), --Selected Item (Highlight) Color
    selItemsCol2 = Color(0, 0, 0), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Comic Sans MS', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('photo', 'PhotoDisc (high color)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(180, 165, 143), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(180, 165, 143), --Caption Button Color
    btnCol1 = Color(218, 210, 199), --Button Light
    btnCol2 = Color(129, 112, 86), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Tahoma', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(122, 106, 95), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(200, 167, 123), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(82, 80, 67), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(129, 112, 86), --Inactive Titlebar Color
    iTitleTxtCol = Color(0, 0, 0), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(180, 165, 143), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(180, 165, 143), --Inactive Window Border Color
    selItemsCol1 = Color(200, 167, 123), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('reeeman', 'RE-man (high color)', {
  parameters = {
    desktop = Color(66, 0, 0), --Background
    bgCol1 = Color(240, 208, 0), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(240, 208, 0), --Caption Button Color
    btnCol1 = Color(255, 240, 120), --Button Light
    btnCol2 = Color(160, 136, 0), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Comic Sans MS', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(216, 24, 48), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(216, 24, 48), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 0, 0), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 0, 0), --Inactive Titlebar Color
    iTitleTxtCol = Color(0, 0, 0), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(240, 208, 0), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(240, 208, 0), --Inactive Window Border Color
    selItemsCol1 = Color(216, 24, 48), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Comic Sans MS', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(128, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('rock', 'Rock-n-Roll (high color)', {
  parameters = {
    desktop = Color(241, 141, 41), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 20, --Titlebar Size
    titleTxtFont = 'Times New Roman', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(192, 0, 96), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(248, 152, 0), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(208, 0, 0), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(176, 16, 112), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('sci', 'Science (256 color)', {
  parameters = {
    desktop = Color(79, 101, 125), --Background
    bgCol1 = Color(131, 153, 177), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(131, 153, 177), --Caption Button Color
    btnCol1 = Color(193, 204, 217), --Button Light
    btnCol2 = Color(79, 101, 125), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Lucida Sans Unicode', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 128, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 128, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(160, 160, 164), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(160, 160, 164), --Inactive Titlebar Color
    iTitleTxtCol = Color(193, 204, 217), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(131, 153, 177), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(131, 153, 177), --Inactive Window Border Color
    selItemsCol1 = Color(0, 128, 128), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('scifi', 'Science Fiction (high color)', {
  parameters = {
    desktop = Color(128, 0, 64), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'OCR A Extended', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(232, 176, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(224, 72, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(232, 40, 56), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(192, 192, 192), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(240, 184, 40), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('snowb', 'Snowboarding (256 color)', {
  parameters = {
    desktop = Color(64, 0, 128), --Background
    bgCol1 = Color(96, 104, 56), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(96, 104, 56), --Caption Button Color
    btnCol1 = Color(184, 192, 144), --Button Light
    btnCol2 = Color(64, 72, 40), --Button Shadow
    titleSize = 26, --Titlebar Size
    titleTxtFont = 'Ransom', --Titlebar Font
    titleTxtSize = sizeadd + 12, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(40, 16, 64), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(40, 16, 64), --Active Titlebar Color
    aTitleTxtCol = Color(248, 200, 96), --Active Titlebar Text Color
    iTitleCol1 = Color(64, 72, 40), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(64, 72, 40), --Inactive Titlebar Color
    iTitleTxtCol = Color(192, 192, 192), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(96, 104, 56), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(96, 104, 56), --Inactive Window Border Color
    selItemsCol1 = Color(128, 64, 64), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('space', 'Space (256 color)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(128, 144, 152), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(128, 144, 152), --Caption Button Color
    btnCol1 = Color(192, 200, 208), --Button Light
    btnCol2 = Color(80, 96, 104), --Button Shadow
    titleSize = 20, --Titlebar Size
    titleTxtFont = 'Westminster', --Titlebar Font
    titleTxtSize = sizeadd + 12, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(0, 255, 0), --Active Titlebar Text Color
    iTitleCol1 = Color(80, 96, 104), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(80, 96, 104), --Inactive Titlebar Color
    iTitleTxtCol = Color(192, 192, 192), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(128, 144, 152), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(128, 144, 152), --Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(0, 255, 0), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'OCR A Extended', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('sporty', 'Sports (256 color)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(176, 224, 160), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(184, 188, 184), --Caption Button Color
    btnCol1 = Color(216, 240, 208), --Button Light
    btnCol2 = Color(104, 184, 72), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'OCR A Extended', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 128, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 128, 128), --Active Titlebar Color
    aTitleTxtCol = Color(0, 0, 0), --Active Titlebar Text Color
    iTitleCol1 = Color(0, 128, 0), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 128, 0), --Inactive Titlebar Color
    iTitleTxtCol = Color(176, 224, 160), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(176, 224, 160), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(104, 184, 72), --Inactive Window Border Color
    selItemsCol1 = Color(255, 255, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(0, 0, 0), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('hippie', 'The 60s USA (256 color)', {
  parameters = {
    desktop = Color(160, 48, 168), --Background
    bgCol1 = Color(208, 104, 216), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(208, 104, 216), --Caption Button Color
    btnCol1 = Color(232, 184, 240), --Button Light
    btnCol2 = Color(160, 48, 168), --Button Shadow
    titleSize = 19, --Titlebar Size
    titleTxtFont = 'Lucida Handwriting', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(160, 48, 168), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(160, 48, 168), --Inactive Titlebar Color
    iTitleTxtCol = Color(232, 184, 240), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(208, 104, 216), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(208, 104, 216), --Inactive Window Border Color
    selItemsCol1 = Color(0, 255, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(0, 0, 0), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = true -- Message Box Font Italic
	}
})

W98HUD:addTheme('goldera', 'The Golden Era (high color)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(184, 200, 184), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(184, 200, 184), --Caption Button Color
    btnCol1 = Color(220, 228, 220), --Button Light
    btnCol2 = Color(112, 143, 112), --Button Shadow
    titleSize = 23, --Titlebar Size
    titleTxtFont = 'Century Gothic', --Titlebar Font
    titleTxtSize = sizeadd + 12, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(216, 112, 96), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(216, 112, 96), --Active Titlebar Color
    aTitleTxtCol = Color(255, 248, 224), --Active Titlebar Text Color
    iTitleCol1 = Color(112, 143, 112), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(112, 143, 112), --Inactive Titlebar Color
    iTitleTxtCol = Color(0, 0, 0), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(184, 200, 184), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(184, 200, 184), --Inactive Window Border Color
    selItemsCol1 = Color(128, 136, 168), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 248, 224), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('train', 'Travel (high color)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(144, 128, 112), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(144, 128, 112), --Caption Button Color
    btnCol1 = Color(200, 192, 184), --Button Light
    btnCol2 = Color(96, 88, 72), --Button Shadow
    titleSize = 19, --Titlebar Size
    titleTxtFont = 'Comic Sans MS', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(64, 72, 120), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(64, 72, 120), --Active Titlebar Color
    aTitleTxtCol = Color(224, 224, 216), --Active Titlebar Text Color
    iTitleCol1 = Color(96, 88, 72), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(96, 88, 72), --Inactive Titlebar Color
    iTitleTxtCol = Color(144, 128, 112), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(144, 128, 112), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(144, 128, 112), --Inactive Window Border Color
    selItemsCol1 = Color(72, 96, 80), --Selected Item (Highlight) Color
    selItemsCol2 = Color(224, 224, 216), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('treeh', 'Tree House (256 color)', {
  parameters = {
    desktop = Color(102, 114, 147), --Background
    bgCol1 = Color(136, 136, 168), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(136, 136, 168), --Caption Button Color
    btnCol1 = Color(200, 200, 200), --Button Light
    btnCol2 = Color(88, 88, 120), --Button Shadow
    titleSize = 20, --Titlebar Size
    titleTxtFont = 'Viner Hand ITC', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(192, 192, 192), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(192, 192, 192), --Active Titlebar Color
    aTitleTxtCol = Color(0, 0, 0), --Active Titlebar Text Color
    iTitleCol1 = Color(88, 88, 120), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(88, 88, 120), --Inactive Titlebar Color
    iTitleTxtCol = Color(0, 0, 0), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(136, 136, 168), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(136, 136, 168), --Inactive Window Border Color
    selItemsCol1 = Color(200, 248, 168), --Selected Item (Highlight) Color
    selItemsCol2 = Color(0, 0, 0), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('underw', 'Underwater (high color)', {
  parameters = {
    desktop = Color(40, 72, 128), --Background
    bgCol1 = Color(56, 104, 200), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(56, 104, 200), --Caption Button Color
    btnCol1 = Color(152, 176, 224), --Button Light
    btnCol2 = Color(0, 0, 0), --Button Shadow
    titleSize = 19, --Titlebar Size
    titleTxtFont = 'Haettenschweiler', --Titlebar Font
    titleTxtSize = sizeadd + 12, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 48), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 48), --Active Titlebar Color
    aTitleTxtCol = Color(255, 192, 64), --Active Titlebar Text Color
    iTitleCol1 = Color(40, 72, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(40, 72, 128), --Inactive Titlebar Color
    iTitleTxtCol = Color(168, 184, 216), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(56, 104, 200), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(56, 104, 200), --Inactive Window Border Color
    selItemsCol1 = Color(255, 192, 64), --Selected Item (Highlight) Color
    selItemsCol2 = Color(0, 0, 0), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Haettenschweiler', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('w98', 'Windows 98 (256 color)', {
  parameters = {
    desktop = Color(192, 192, 192), --Background
    bgCol1 = Color(180, 195, 220), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(180, 195, 220), --Caption Button Color
    btnCol1 = Color(218, 225, 237), --Button Light
    btnCol2 = Color(88, 122, 177), --Button Shadow
    titleSize = 22, --Titlebar Size
    titleTxtFont = 'News Gothic MT', --Titlebar Font
    titleTxtSize = sizeadd + 12, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = true, --Titlebar Text Italic
    aTitleCol1 = Color(0, 128, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 128, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(88, 122, 177), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(88, 122, 177), --Inactive Titlebar Color
    iTitleTxtCol = Color(0, 0, 128), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(180, 195, 220), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(180, 195, 220), --Inactive Window Border Color
    selItemsCol1 = Color(0, 128, 128), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('w98plus', 'Windows 98 (high color)', {
  parameters = {
    desktop = Color(33, 146, 220), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Tahoma', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(32, 144, 216), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(16, 72, 112), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(0, 144, 0), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(120, 124, 120), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(224, 128, 24), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Tahoma', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('world', 'World Traveler (high color)', {
  parameters = {
    desktop = Color(156, 198, 231), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 23, --Titlebar Size
    titleTxtFont = 'Viner Hand ITC', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(112, 104, 232), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(72, 0, 88), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(136, 176, 208), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 56, 112), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(184, 188, 184), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(184, 188, 184), --Inactive Window Border Color
    selItemsCol1 = Color(120, 80, 224), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('default98', 'Windows Default', {
  parameters = {
    desktop = Color(0, 128, 128), -- Background
    bgCol1 = Color(192, 192, 192), -- Window Color
    bgCol2 = Color(0, 0, 0), -- Caption Button Icon Color
    captionCol = Color(192, 192, 192), -- Caption Button Color
    btnCol1 = Color(255, 255, 255), -- Button Light
    btnCol2 = Color(0, 0, 0), -- Button Shadow
    titleSize = 18, -- Titlebar Size
    titleTxtFont = 'W95FA', -- Titlebar Font
    titleTxtSize = sizeadd + 8, -- Titlebar Font Size
    titleTxtWeight = 1000, -- Titlebar Text Weight
    titleTxtItalic = false, -- Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 128), -- Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 128), -- Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), -- Active Titlebar Text Color
    iTitleCol1 = Color(184, 180, 184), -- Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), -- Inactive Titlebar Color
    iTitleTxtCol = Color(192, 192, 192), -- Inactive Titlebar Text Color
    aBorderSize = 1, -- Active Window Border Size
    aBorderCol = Color(192, 192, 192), -- Active Window Border Color
    iBorderSize = 1, -- Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), -- Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 128), -- Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), -- Selected Item (Highlight) Text Color
    msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('brick', 'Brick', {
  parameters = {
    desktop = Color(66, 0, 0), --Background
    bgCol1 = Color(194, 191, 165), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(194, 191, 165), --Caption Button Color
    btnCol1 = Color(225, 224, 210), --Button Light
    btnCol2 = Color(141, 137, 97), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(128, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(128, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(225, 224, 210), --Active Titlebar Text Color
    iTitleCol1 = Color(141, 137, 97), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(141, 137, 97), --Inactive Titlebar Color
    iTitleTxtCol = Color(225, 224, 210), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(194, 191, 165), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(194, 191, 165), --Inactive Window Border Color
    selItemsCol1 = Color(141, 137, 97), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('desert', 'Desert', {
  parameters = {
    desktop = Color(162, 141, 104), --Background
    bgCol1 = Color(213, 204, 187), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(213, 204, 187), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(162, 141, 104), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 128, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 128, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(162, 141, 104), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(162, 141, 104), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(213, 204, 187), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(213, 204, 187), --Inactive Window Border Color
    selItemsCol1 = Color(0, 128, 128), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('penis', 'Eggplant', {
  parameters = {
    desktop = Color(64, 0, 64), --Background
    bgCol1 = Color(144, 176, 168), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(144, 176, 168), --Caption Button Color
    btnCol1 = Color(200, 216, 216), --Button Light
    btnCol2 = Color(88, 128, 120), --Button Shadow
    titleSize = 19, --Titlebar Size
    titleTxtFont = 'Times New Roman', --Titlebar Font
    titleTxtSize = sizeadd + 11, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(88, 128, 120), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(88, 128, 120), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(144, 176, 168), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(144, 176, 168), --Inactive Titlebar Color
    iTitleTxtCol = Color(88, 128, 120), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(144, 176, 168), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(144, 176, 168), --Inactive Window Border Color
    selItemsCol1 = Color(56, 116, 112), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Times New Roman', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('highc1_xl', 'High Contrast #1 (extra large)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(0, 0, 0), --Window Color
    bgCol2 = Color(255, 255, 255), --Caption Button Icon Color
    captionCol = Color(0, 0, 0), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 37, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 22, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 255), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 255), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(0, 255, 255), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 255, 255), --Inactive Titlebar Color
    iTitleTxtCol = Color(0, 0, 0), --Inactive Titlebar Text Color
    aBorderSize = 6, --Active Window Border Size
    aBorderCol = Color(0, 0, 255), --Active Window Border Color
    iBorderSize = 6, --Inactive Window Border Size
    iBorderCol = Color(0, 255, 255), --Inactive Window Border Color
    selItemsCol1 = Color(0, 128, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = 23, -- Message Box Font Size
    msgCol = Color(255, 255, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('highc1_l', 'High Contrast #1 (large)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(0, 0, 0), --Window Color
    bgCol2 = Color(255, 255, 255), --Caption Button Icon Color
    captionCol = Color(0, 0, 0), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 31, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 18, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 255), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 255), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(0, 255, 255), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 255, 255), --Inactive Titlebar Color
    iTitleTxtCol = Color(0, 0, 0), --Inactive Titlebar Text Color
    aBorderSize = 6, --Active Window Border Size
    aBorderCol = Color(0, 0, 255), --Active Window Border Color
    iBorderSize = 6, --Inactive Window Border Size
    iBorderCol = Color(0, 255, 255), --Inactive Window Border Color
    selItemsCol1 = Color(0, 128, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = 18, -- Message Box Font Size
    msgCol = Color(255, 255, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('highc1', 'High Contrast #1', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(0, 0, 0), --Window Color
    bgCol2 = Color(255, 255, 255), --Caption Button Icon Color
    captionCol = Color(0, 0, 0), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 20, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 255), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 255), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(0, 255, 255), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 255, 255), --Inactive Titlebar Color
    iTitleTxtCol = Color(0, 0, 0), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(0, 0, 255), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(0, 255, 255), --Inactive Window Border Color
    selItemsCol1 = Color(0, 128, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(255, 255, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('highc2_xl', 'High Contrast #2 (extra large)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(0, 0, 0), --Window Color
    bgCol2 = Color(0, 255, 0), --Caption Button Icon Color
    captionCol = Color(0, 0, 0), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 37, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 22, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 255, 255), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 255, 255), --Active Titlebar Color
    aTitleTxtCol = Color(0, 0, 0), --Active Titlebar Text Color
    iTitleCol1 = Color(0, 0, 255), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 0, 255), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 6, --Active Window Border Size
    aBorderCol = Color(0, 255, 255), --Active Window Border Color
    iBorderSize = 6, --Inactive Window Border Size
    iBorderCol = Color(0, 0, 255), --Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 255), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = 23, -- Message Box Font Size
    msgCol = Color(0, 255, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('highc2_l', 'High Contrast #2 (large)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(0, 0, 0), --Window Color
    bgCol2 = Color(0, 255, 0), --Caption Button Icon Color
    captionCol = Color(0, 0, 0), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 31, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 18, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 255, 255), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 255, 255), --Active Titlebar Color
    aTitleTxtCol = Color(0, 0, 0), --Active Titlebar Text Color
    iTitleCol1 = Color(0, 0, 255), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 0, 255), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 6, --Active Window Border Size
    aBorderCol = Color(0, 255, 255), --Active Window Border Color
    iBorderSize = 6, --Inactive Window Border Size
    iBorderCol = Color(0, 0, 255), --Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 255), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = 18, -- Message Box Font Size
    msgCol = Color(0, 255, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('highc2', 'High Contrast #2', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(0, 0, 0), --Window Color
    bgCol2 = Color(0, 255, 0), --Caption Button Icon Color
    captionCol = Color(0, 0, 0), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 20, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 255, 255), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 255, 255), --Active Titlebar Color
    aTitleTxtCol = Color(0, 0, 0), --Active Titlebar Text Color
    iTitleCol1 = Color(0, 0, 255), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 0, 255), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(0, 255, 255), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(0, 0, 255), --Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 255), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 255, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('highcb_xl', 'High Contrast Black (extra large)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(0, 0, 0), --Window Color
    bgCol2 = Color(255, 255, 255), --Caption Button Icon Color
    captionCol = Color(0, 0, 0), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(192, 192, 192), --Button Shadow
    titleSize = 37, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 22, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(128, 0, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(128, 0, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(0, 128, 0), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 128, 0), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 6, --Active Window Border Size
    aBorderCol = Color(255, 255, 0), --Active Window Border Color
    iBorderSize = 6, --Inactive Window Border Size
    iBorderCol = Color(0, 128, 0), --Inactive Window Border Color
    selItemsCol1 = Color(128, 0, 128), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = 23, -- Message Box Font Size
    msgCol = Color(255, 255, 255), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('highcb_l', 'High Contrast Black (large)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(0, 0, 0), --Window Color
    bgCol2 = Color(255, 255, 255), --Caption Button Icon Color
    captionCol = Color(0, 0, 0), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(192, 192, 192), --Button Shadow
    titleSize = 31, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 18, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(128, 0, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(128, 0, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(0, 128, 0), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 128, 0), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 6, --Active Window Border Size
    aBorderCol = Color(255, 255, 0), --Active Window Border Color
    iBorderSize = 6, --Inactive Window Border Size
    iBorderCol = Color(0, 128, 0), --Inactive Window Border Color
    selItemsCol1 = Color(128, 0, 128), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = 18, -- Message Box Font Size
    msgCol = Color(255, 255, 255), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('highcb', 'High Contrast Black', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(0, 0, 0), --Window Color
    bgCol2 = Color(255, 255, 255), --Caption Button Icon Color
    captionCol = Color(0, 0, 0), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(192, 192, 192), --Button Shadow
    titleSize = 20, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(128, 0, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(128, 0, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(0, 128, 0), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(0, 128, 0), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(255, 255, 0), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(0, 128, 0), --Inactive Window Border Color
    selItemsCol1 = Color(128, 0, 128), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(255, 255, 255), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('highcw_xl', 'High Contrast White (extra large)', {
  parameters = {
    desktop = Color(255, 255, 255), --Background
    bgCol1 = Color(255, 255, 255), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(255, 255, 255), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 38, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 22, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(255, 255, 255), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(255, 255, 255), --Inactive Titlebar Color
    iTitleTxtCol = Color(0, 0, 0), --Inactive Titlebar Text Color
    aBorderSize = 6, --Active Window Border Size
    aBorderCol = Color(128, 128, 128), --Active Window Border Color
    iBorderSize = 6, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = 15, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('highcw_l', 'High Contrast White (large)', {
  parameters = {
    desktop = Color(255, 255, 255), --Background
    bgCol1 = Color(255, 255, 255), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(255, 255, 255), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 37, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 18, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(255, 255, 255), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(255, 255, 255), --Inactive Titlebar Color
    iTitleTxtCol = Color(0, 0, 0), --Inactive Titlebar Text Color
    aBorderSize = 6, --Active Window Border Size
    aBorderCol = Color(128, 128, 128), --Active Window Border Color
    iBorderSize = 6, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = 15, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('highcw', 'High Contrast White', {
  parameters = {
    desktop = Color(255, 255, 255), --Background
    bgCol1 = Color(255, 255, 255), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(255, 255, 255), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 20, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(255, 255, 255), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(255, 255, 255), --Inactive Titlebar Color
    iTitleTxtCol = Color(0, 0, 0), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(128, 128, 128), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('lilac_l', 'Lilac (large)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(174, 168, 217), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(174, 168, 217), --Caption Button Color
    btnCol1 = Color(216, 213, 236), --Button Light
    btnCol2 = Color(90, 78, 177), --Button Shadow
    titleSize = 29, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 17, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(90, 78, 177), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(90, 78, 177), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 128, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(174, 168, 217), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(174, 168, 217), --Inactive Window Border Color
    selItemsCol1 = Color(90, 78, 177), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = 12, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('lilac', 'Lilac', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(174, 168, 217), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(174, 168, 217), --Caption Button Color
    btnCol1 = Color(216, 213, 236), --Button Light
    btnCol2 = Color(90, 78, 177), --Button Shadow
    titleSize = 22, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 12, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(90, 78, 177), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(90, 78, 177), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 128, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 255, 255), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(174, 168, 217), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(174, 168, 217), --Inactive Window Border Color
    selItemsCol1 = Color(90, 78, 177), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('maple', 'Maple', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(224, 204, 152), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(224, 204, 152), --Caption Button Color
    btnCol1 = Color(240, 232, 208), --Button Light
    btnCol2 = Color(192, 156, 56), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(128, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(128, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(160, 160, 164), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(160, 160, 164), --Inactive Titlebar Color
    iTitleTxtCol = Color(240, 236, 216), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(224, 204, 152), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(224, 204, 152), --Inactive Window Border Color
    selItemsCol1 = Color(200, 168, 72), --Selected Item (Highlight) Color
    selItemsCol2 = Color(0, 0, 0), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('marine', 'Marine (high color)', {
  parameters = {
    desktop = Color(44, 78, 71), --Background
    bgCol1 = Color(136, 192, 184), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(136, 192, 184), --Caption Button Color
    btnCol1 = Color(196, 223, 219), --Button Light
    btnCol2 = Color(75, 141, 132), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(75, 141, 132), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(75, 141, 132), --Inactive Titlebar Color
    iTitleTxtCol = Color(208, 204, 208), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(136, 192, 184), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(136, 192, 184), --Inactive Window Border Color
    selItemsCol1 = Color(0, 108, 200), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('plum', 'Plum (high color)', {
  parameters = {
    desktop = Color(64, 40, 64), --Background
    bgCol1 = Color(168, 152, 144), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(168, 152, 144), --Caption Button Color
    btnCol1 = Color(216, 208, 200), --Button Light
    btnCol2 = Color(120, 96, 88), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(72, 64, 96), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(72, 64, 96), --Active Titlebar Color
    aTitleTxtCol = Color(248, 240, 248), --Active Titlebar Text Color
    iTitleCol1 = Color(120, 96, 88), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(120, 96, 88), --Inactive Titlebar Color
    iTitleTxtCol = Color(208, 200, 192), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(168, 152, 144), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(168, 152, 144), --Inactive Window Border Color
    selItemsCol1 = Color(40, 72, 72), --Selected Item (Highlight) Color
    selItemsCol2 = Color(216, 208, 200), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('pumpkin', 'Pumpkin (large)', {
  parameters = {
    desktop = Color(66, 0, 66), --Background
    bgCol1 = Color(240, 212, 160), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(240, 212, 160), --Caption Button Color
    btnCol1 = Color(248, 234, 207), --Button Light
    btnCol2 = Color(222, 159, 44), --Button Shadow
    titleSize = 26, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 14, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(222, 159, 44), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(222, 159, 44), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(160, 160, 164), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(160, 160, 164), --Inactive Titlebar Color
    iTitleTxtCol = Color(245, 234, 207), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(240, 212, 160), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(240, 212, 160), --Inactive Window Border Color
    selItemsCol1 = Color(184, 136, 80), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = 12, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('rainy', 'Rainy Day', {
  parameters = {
    desktop = Color(0, 124, 120), --Background
    bgCol1 = Color(128, 152, 176), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(128, 152, 176), --Caption Button Color
    btnCol1 = Color(192, 204, 216), --Button Light
    btnCol2 = Color(78, 101, 124), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(78, 101, 124), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(78, 101, 124), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 128, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), --Inactive Titlebar Color
    iTitleTxtCol = Color(193, 204, 217), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(128, 152, 176), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(128, 152, 176), --Inactive Window Border Color
    selItemsCol1 = Color(80, 100, 120), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('rwb', 'Red, White, and Blue (VGA)', {
  parameters = {
    desktop = Color(0, 0, 66), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 19, --Titlebar Size
    titleTxtFont = 'Times New Roman', --Titlebar Font
    titleTxtSize = sizeadd + 11, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(128, 0, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(128, 0, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 128, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), --Inactive Titlebar Color
    iTitleTxtCol = Color(192, 192, 192), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(128, 0, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Times New Roman', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('rose_l', 'Rose (large)', {
  parameters = {
    desktop = Color(128, 128, 128), --Background
    bgCol1 = Color(208, 176, 184), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(208, 176, 184), --Caption Button Color
    btnCol1 = Color(232, 216, 224), --Button Light
    btnCol2 = Color(160, 96, 112), --Button Shadow
    titleSize = 28, --Titlebar Size
    titleTxtFont = 'Times New Roman', --Titlebar Font
    titleTxtSize = sizeadd + 17, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(160, 96, 112), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(159, 96, 112), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(160, 160, 164), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(160, 160, 164), --Inactive Titlebar Color
    iTitleTxtCol = Color(96, 96, 104), --Inactive Titlebar Text Color
    aBorderSize = 2, --Active Window Border Size
    aBorderCol = Color(208, 176, 184), --Active Window Border Color
    iBorderSize = 2, --Inactive Window Border Size
    iBorderCol = Color(208, 176, 184), --Inactive Window Border Color
    selItemsCol1 = Color(160, 96, 112), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = 12, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('rose', 'Rose', {
  parameters = {
    desktop = Color(128, 128, 128), --Background
    bgCol1 = Color(208, 176, 184), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(208, 176, 184), --Caption Button Color
    btnCol1 = Color(232, 216, 224), --Button Light
    btnCol2 = Color(160, 96, 112), --Button Shadow
    titleSize = 23, --Titlebar Size
    titleTxtFont = 'Times New Roman', --Titlebar Font
    titleTxtSize = sizeadd + 14, --Titlebar Font Size
    titleTxtWeight = 1, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(160, 96, 112), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(159, 96, 112), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(160, 160, 164), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(160, 160, 164), --Inactive Titlebar Color
    iTitleTxtCol = Color(96, 96, 104), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(208, 176, 184), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(208, 176, 184), --Inactive Window Border Color
    selItemsCol1 = Color(160, 96, 112), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('slate', 'Slate', {
  parameters = {
    desktop = Color(65, 65, 65), --Background
    bgCol1 = Color(157, 185, 200), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(184, 188, 184), --Caption Button Color
    btnCol1 = Color(206, 220, 227), --Button Light
    btnCol2 = Color(85, 128, 151), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(85, 128, 151), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(85, 128, 151), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 128, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), --Inactive Titlebar Color
    iTitleTxtCol = Color(192, 192, 192), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(157, 185, 200), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(157, 185, 200), --Inactive Window Border Color
    selItemsCol1 = Color(85, 128, 151), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('spruce', 'Spruce', {
  parameters = {
    desktop = Color(33, 63, 33), --Background
    bgCol1 = Color(162, 200, 169), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(162, 200, 169), --Caption Button Color
    btnCol1 = Color(208, 227, 211), --Button Light
    btnCol2 = Color(89, 151, 100), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 9, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(89, 151, 100), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(89, 151, 100), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 128, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), --Inactive Titlebar Color
    iTitleTxtCol = Color(208, 227, 211), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(162, 200, 169), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(162, 200, 169), --Inactive Window Border Color
    selItemsCol1 = Color(160, 168, 72), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('storm', 'Storm (VGA)', {
  parameters = {
    desktop = Color(0, 0, 0), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'Arial', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(128, 0, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(128, 0, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 128, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), --Inactive Titlebar Color
    iTitleTxtCol = Color(192, 192, 192), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 188, 192), --Inactive Window Border Color
    selItemsCol1 = Color(128, 0, 128), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'Arial', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('teal', 'Teal (VGA)', {
  parameters = {
    desktop = Color(0, 64, 64), --Background
    bgCol1 = Color(192, 192, 192), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(192, 192, 192), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(0, 128, 128), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 128, 128), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(128, 128, 128), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), --Inactive Titlebar Color
    iTitleTxtCol = Color(255, 251, 240), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(192, 192, 192), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), --Inactive Window Border Color
    selItemsCol1 = Color(0, 128, 128), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('wheat', 'Wheat', {
  parameters = {
    desktop = Color(0, 64, 29), --Background
    bgCol1 = Color(224, 224, 160), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(224, 224, 160), --Caption Button Color
    btnCol1 = Color(240, 240, 208), --Button Light
    btnCol2 = Color(192, 192, 63), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(128, 128, 0), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(128, 128, 0), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(188, 188, 65), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(188, 188, 65), --Inactive Titlebar Color
    iTitleTxtCol = Color(232, 230, 213), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(224, 224, 160), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(224, 224, 160), --Inactive Window Border Color
    selItemsCol1 = Color(128, 128, 0), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('default98_xl', 'Windows Standard (extra large)', {
  parameters = {
    desktop = Color(0, 128, 128), -- Background
    bgCol1 = Color(192, 192, 192), -- Window Color
    bgCol2 = Color(0, 0, 0), -- Caption Button Icon Color
    captionCol = Color(192, 192, 192), -- Caption Button Color
    btnCol1 = Color(255, 255, 255), -- Button Light
    btnCol2 = Color(0, 0, 0), -- Button Shadow
    titleSize = 24, -- Titlebar Size
    titleTxtFont = 'Arial', -- Titlebar Font
    titleTxtSize = sizeadd + 14, -- Titlebar Font Size
    titleTxtWeight = 1000, -- Titlebar Text Weight
    titleTxtItalic = false, -- Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 128), -- Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 128), -- Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), -- Active Titlebar Text Color
    iTitleCol1 = Color(184, 180, 184), -- Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), -- Inactive Titlebar Color
    iTitleTxtCol = Color(192, 192, 192), -- Inactive Titlebar Text Color
    aBorderSize = 1, -- Active Window Border Size
    aBorderCol = Color(192, 192, 192), -- Active Window Border Color
    iBorderSize = 1, -- Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), -- Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 128), -- Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), -- Selected Item (Highlight) Text Color
    msgFont = 'Arial', -- Message Box Font
    msgSize = 12, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('default98_l', 'Windows Standard (large)', {
  parameters = {
    desktop = Color(0, 128, 128), -- Background
    bgCol1 = Color(192, 192, 192), -- Window Color
    bgCol2 = Color(0, 0, 0), -- Caption Button Icon Color
    captionCol = Color(192, 192, 192), -- Caption Button Color
    btnCol1 = Color(255, 255, 255), -- Button Light
    btnCol2 = Color(0, 0, 0), -- Button Shadow
    titleSize = 22, -- Titlebar Size
    titleTxtFont = 'W95FA', -- Titlebar Font
    titleTxtSize = sizeadd + 12, -- Titlebar Font Size
    titleTxtWeight = 1000, -- Titlebar Text Weight
    titleTxtItalic = false, -- Titlebar Text Italic
    aTitleCol1 = Color(0, 0, 128), -- Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 128), -- Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), -- Active Titlebar Text Color
    iTitleCol1 = Color(184, 180, 184), -- Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), -- Inactive Titlebar Color
    iTitleTxtCol = Color(192, 192, 192), -- Inactive Titlebar Text Color
    aBorderSize = 1, -- Active Window Border Size
    aBorderCol = Color(192, 192, 192), -- Active Window Border Color
    iBorderSize = 1, -- Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), -- Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 128), -- Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), -- Selected Item (Highlight) Text Color
    msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 9, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})

W98HUD:addTheme('default_2k', 'Windows Classic', {
  parameters = {
    desktop = Color(58, 110, 165), --Background
    bgCol1 = Color(212, 208, 200), --Window Color
    bgCol2 = Color(0, 0, 0), --Caption Button Icon Color
    captionCol = Color(212, 208, 200), --Caption Button Color
    btnCol1 = Color(255, 255, 255), --Button Light
    btnCol2 = Color(128, 128, 128), --Button Shadow
    titleSize = 18, --Titlebar Size
    titleTxtFont = 'W95FA', --Titlebar Font
    titleTxtSize = sizeadd + 8, --Titlebar Font Size
    titleTxtWeight = 1000, --Titlebar Text Weight
    titleTxtItalic = false, --Titlebar Text Italic
    aTitleCol1 = Color(166, 202, 240), --Ative Titlebar Gradient Color
    aTitleCol2 = Color(10, 36, 106), --Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), --Active Titlebar Text Color
    iTitleCol1 = Color(192, 192, 192), --Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), --Inactive Titlebar Color
    iTitleTxtCol = Color(212, 208, 200), --Inactive Titlebar Text Color
    aBorderSize = 1, --Active Window Border Size
    aBorderCol = Color(212, 208, 200), --Active Window Border Color
    iBorderSize = 1, --Inactive Window Border Size
    iBorderCol = Color(212, 208, 200), --Inactive Window Border Color
    selItemsCol1 = Color(10, 36, 106), --Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), --Selected Item (Highlight) Text Color
    winBgCol = Color(255, 255, 255), --Window Content Background Color
    winTxtCol = Color(0, 0, 0), --Window Text Color
	msgFont = 'W95FA', -- Message Box Font
    msgSize = sizeadd + 8, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 1, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
	}
})
