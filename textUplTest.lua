local testText =[[oooo
test]]


local textUpl = require(script.Parent.textUpl)

local haste = textUpl.haste()

print("Testing haste")
print("	Upload")
local key = haste.save(testText)
print("		Key ".. key)
print("	Get")
local text = haste.get(key)
print("		Return ".. text)

