-- https://www.hammerspoon.org/docs/
-- https://www.hammerspoon.org/docs/hs.screen.html
local hyper = {"cmd", "alt", "ctrl"}

-- reload and edit
hs.hotkey.bind(hyper, "\\", function()
  hs.reload()
end)

hs.hotkey.bind(hyper, "'", function()
  local editorpath = "/usr/local/bin/subl "
  local flag = "-n "
  local filepath = "~/.hammerspoon/init.lua"
  local cmd = editorpath .. flag .. filepath
  hs.execute(cmd)
end)

hs.window.animationDuration = 0
-- window management
-- up down left right
hs.hotkey.bind(hyper, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x 
  f.y = max.y + (max.h / 2)
  f.w = max.w 
  f.h = max.h / 2
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y 
  f.w = max.w 
  f.h = max.h / 2
  win:setFrame(f)
end)

--- 2x3 
--- k l ;
--- , . /
hs.hotkey.bind(hyper, "k", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y 
  f.w = max.w / 3
  f.h = max.h / 2
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, ",", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y / 2
  f.w = max.w / 3
  f.h = max.h / 2
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, "l", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x + (max.w / 3)
  f.y = max.y
  f.w = max.w / 3
  f.h = max.h / 2
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, ".", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x + max.w / 3
  f.y = max.y / 2
  f.w = max.w / 3
  f.h = max.h / 2
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, ";", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x + (max.w / 3) + (max.w / 3)
  f.y = max.y
  f.w = max.w / 3
  f.h = max.h / 2
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, "/", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x + (max.w / 3) + (max.w / 3)
  f.y = max.y / 2
  f.w = max.w / 3
  f.h = max.h / 2
  win:setFrame(f)
end)

-- maximize
hs.hotkey.bind(hyper, "m", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y 
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)


hs.hotkey.bind(hyper, "i", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y 
  f.w = max.w / 3
  f.h = max.h
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, "o", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x + (max.w / 3)
  f.y = max.y 
  f.w = max.w / 3
  f.h = max.h
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, "p", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x + (max.w / 3) + (max.w / 3)
  f.y = max.y 
  f.w = max.w / 3
  f.h = max.h
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, "9", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x
  f.y = max.y 
  f.w = max.w / 4
  f.h = max.h
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, "0", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x + (max.w / 4)
  f.y = max.y
  f.w = max.w / 4
  f.h = max.h
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, "-", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 4
  f.h = max.h
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, "=", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x + (max.w * .75)
  f.y = max.y
  f.w = max.w / 4
  f.h = max.h
  win:setFrame(f)
end)
hs.hotkey.bind(hyper, "]", function()
  local win = hs.window.focusedWindow()
  local screen = win:screen()
  win:moveToScreen(screen:next())
end)
hs.hotkey.bind(hyper, "[", function()
  local win = hs.window.focusedWindow()
  local screen = win:screen()
  win:moveToScreen(screen:previous())
end)
-- move cursor to center of next screen
hs.hotkey.bind({"ctrl", "shift"}, "Up", function()
  local screen = hs.mouse.getCurrentScreen()
  local nextScreen = screen:next()
  local rect = nextScreen:fullFrame()
  local center = hs.geometry.rectMidPoint(rect)
hs.mouse.setAbsolutePosition(center)
end)
hs.hotkey.bind({"ctrl", "shift"}, "Down", function()
  local screen = hs.mouse.getCurrentScreen()
  local nextScreen = screen:previous()
  local rect = nextScreen:fullFrame()
  local center = hs.geometry.rectMidPoint(rect)
hs.mouse.setAbsolutePosition(center)
end)
-- move cursor to center of next screen
hs.hotkey.bind({"ctrl", "shift"}, "z", function()
  local screen = hs.mouse.getCurrentScreen()
  local nextScreen = screen:previous()
  local rect = nextScreen:fullFrame()
  local center = hs.geometry.rectMidPoint(rect)
hs.mouse.setAbsolutePosition(center)
end)
hs.hotkey.bind({"ctrl", "shift"}, "x", function()
  local screen = hs.mouse.getCurrentScreen()
  local nextScreen = screen:next()
  local rect = nextScreen:fullFrame()
  local center = hs.geometry.rectMidPoint(rect)
hs.mouse.setAbsolutePosition(center)
end)
hs.hotkey.bind({"ctrl", "shift"}, "Left", function()
  local cursorscreen = hs.mouse.getCurrentScreen()
  local frame = cursorscreen:fullFrame()
  local absoluteCenter = hs.geometry.rectMidPoint(frame)
  local relativeCenter= cursorscreen:absoluteToLocal(absoluteCenter)
  print(relativeCenter.x)
  print(relativeCenter.y)
hs.mouse.setRelativePosition(hs.geometry(0, relativeCenter.y))
end)
hs.hotkey.bind({"ctrl", "shift"}, "Right", function()
  local cursorscreen = hs.mouse.getCurrentScreen()
  local frame = cursorscreen:fullFrame()
  local absoluteCenter = hs.geometry.rectMidPoint(frame)
  local relativeCenter= cursorscreen:absoluteToLocal(absoluteCenter)
hs.mouse.setRelativePosition(hs.geometry(relativeCenter.x*2, relativeCenter.y))
end)

local choices = {
{
  ["text"] = "Hammerspoon",
  ["subText"] = "",
  ["path"] = "~/.hammerspoon/init.lua"
}
}
-- Focus the last used window.
local function focusLastFocused()
    local wf = hs.window.filter
    local lastFocused = wf.defaultCurrentSpace:getWindows(wf.sortByFocusedLast)
    if #lastFocused > 0 then lastFocused[1]:focus() end
end

local chooser = hs.chooser.new(function(choice)
    if not choice then focusLastFocused(); return end
    local filepath = choice["path"]
    hs.pasteboard.setContents(filepath)
    local editorpath = "/usr/local/bin/subl "
    local flag = "-n "
    local cmd = editorpath .. flag .. filepath
    hs.execute(cmd)
end)
chooser:searchSubText(true)
chooser:choices(choices)

hs.hotkey.bind({"shift", "cmd"}, "space", function() chooser:show() end)
