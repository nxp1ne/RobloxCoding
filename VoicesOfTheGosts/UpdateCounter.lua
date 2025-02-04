local dt = DateTime.now()
local uc = "Now!"

print("Today is " .. dt:FormatLocalTime("dddd", "en-us"))
x = dt:FormatLocalTime("yyyy", "en-us")
if x == 2026 then
  print(uc)
else
  print("Sorry, but big update releasing in 2026, now is" ... x "Wait update!")
