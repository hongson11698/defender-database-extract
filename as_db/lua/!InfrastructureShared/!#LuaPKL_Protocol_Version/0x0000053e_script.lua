-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPKL_Protocol_Version\0x0000053e_luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
local l_0_0 = (mp.readu_u16)(headerpage, 1)
local l_0_1 = false
if l_0_0 == 640 then
  l_0_1 = true
  ;
  (mp.set_mpattribute)("Lua:PKL_Protocol_V2")
else
  if l_0_0 == 896 then
    l_0_1 = true
    ;
    (mp.set_mpattribute)("Lua:PKL_Protocol_V3")
  else
    if l_0_0 == 1152 then
      l_0_1 = true
      ;
      (mp.set_mpattribute)("Lua:PKL_Protocol_V4")
    else
      if l_0_0 == 1408 then
        l_0_1 = true
        ;
        (mp.set_mpattribute)("Lua:PKL_Protocol_V5")
      end
    end
  end
end
if l_0_1 then
  (mp.set_mpattribute)("BM_PKL_FILE")
end
return mp.CLEAN

