-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFPSb64ExeB\0x00000514_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 5000000 then
  (mp.readprotection)(false)
  local l_0_1 = (mp.readfile)(0, l_0_0)
  if (string.find)((string.lower)(l_0_1), "io.file]::writeallbytes(", 1, true) then
    local l_0_2 = 1
    for l_0_6 in (string.gmatch)(l_0_1, "TV[%w+/]+=?=?") do
      local l_0_7 = nil
      l_0_7 = (MpCommon.Base64Decode)(l_0_6)
      if l_0_7 ~= nil and l_0_7 ~= "" then
        (mp.vfo_add_buffer)(l_0_7, (string.format)("[PSBase64][%02X]", l_0_2), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        l_0_2 = l_0_2 + 1
      end
    end
    return mp.INFECTED
  end
else
  do
    ;
    (mp.set_mpattribute)("Lua:Psb64ExeBSize")
    return mp.CLEAN
  end
end

