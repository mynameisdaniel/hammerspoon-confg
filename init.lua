-- https://www.hammerspoon.org/docs/
-- https://www.hammerspoon.org/docs/hs.screen.html
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
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
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
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
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
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
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
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
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "m", function()
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
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "9", function()
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
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "0", function()
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
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "-", function()
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
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "=", function()
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
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "]", function()
  local win = hs.window.focusedWindow()
  local screen = win:screen()
  win:moveToScreen(screen:next())
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "[", function()
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