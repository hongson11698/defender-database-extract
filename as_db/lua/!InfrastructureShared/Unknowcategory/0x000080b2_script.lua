-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000080b2_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)(tostring(footerpage))
l_0_0 = (string.gsub)(l_0_0, "[ \n\r\t]", "")
l_0_0 = (string.gsub)(l_0_0, "&?chrw%((%d+)%)", string.char)
l_0_0 = (string.gsub)(l_0_0, "&?chrw%((%d+)%+?%-(%d+)%)", function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_2 = string.char
  local l_1_3 = l_1_0 - l_1_1
  do return l_1_2(l_1_3) end
  -- DECOMPILER ERROR at PC5: Confused about usage of register R3 for local variables in 'ReleaseLocals'

end
)
l_0_0 = (string.gsub)(l_0_0, "&?chrw%((%d+)%+(%d+)%)", function(l_2_0, l_2_1)
  -- function num : 0_1
  local l_2_2 = string.char
  local l_2_3 = l_2_0 + l_2_1
  do return l_2_2(l_2_3) end
  -- DECOMPILER ERROR at PC5: Confused about usage of register R3 for local variables in 'ReleaseLocals'

end
)
l_0_0 = (string.gsub)(l_0_0, "&?string%(\"(.?)\"%)", "%1")
l_0_0 = (string.gsub)(l_0_0, "&?\"(.)\"", "%1")
l_0_0 = (string.gsub)(l_0_0, "&string%(%.%)", ".")
l_0_0 = (string.lower)(l_0_0)
if (string.match)(l_0_0, "\\googleupdate.lnk%).*thenfilecreateshortcut%(.*\\googlechrome.*exe,@startupcommondir\\googleupdate.lnk,") then
  return mp.INFECTED
end
return mp.LOWFI
