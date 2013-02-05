-- get-rss-age.lua
-- fetch most recent date from stdin, which is in RSS form
-- Charles Stewart (C) 2013

local stdin, stdout, stderr = io.stdin, io.stdout, io.stderr

rssfile = stdin:read("*a")
-- hopefully the file isn't too big
-- really should match line by line, but am being lazy

if #rssfile == 0 then
   stderr:write "No input, no date\n"
   return 1
end

datepat = "%a*[dD][aA][tT][eE]"
dateitem = rssfile:match ( "<" ..datepat.. ">(.-)</" ..datepat.. ">" )
-- dateitem will be incorrect if date tag doesn't end in date

if not dateitem then
   stderr:write "Found no RSS-format date in data read from stdin\n"
   return 1
end

stdout:write (dateitem.."\n")
return 0



