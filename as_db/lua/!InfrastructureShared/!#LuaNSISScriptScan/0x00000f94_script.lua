-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaNSISScriptScan\0x00000f94_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 33554432 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_1, "(nsis-instdata)", -15, true) then
  local l_0_2 = 0
  local l_0_3 = 64
  ;
  (mp.readprotection)(false)
  local l_0_4 = (mp.readfile)(l_0_2, 8)
  do
    if (mp.readu_u32)(l_0_4, 1) == l_0_0 then
      local l_0_5 = (mp.readu_u32)(l_0_4, 5)
      l_0_2 = 4
    end
    -- DECOMPILER ERROR at PC48: Confused about usage of register: R5 in 'UnsetPending'

    if l_0_5 > 512 then
      return mp.CLEAN
    end
    do
      local l_0_6 = nil
      for l_0_10 = 1, l_0_3, 8 do
        local l_0_7 = (mp.readfile)(l_0_2 + 4, l_0_3)
        -- DECOMPILER ERROR at PC65: Confused about usage of register: R10 in 'UnsetPending'

        if l_0_0 < (mp.readu_u32)(l_0_7, R10_PC65) then
          return mp.CLEAN
        end
      end
      ;
      (mp.set_mpattribute)("MpIsExhaustiveScriptScan")
      return mp.CLEAN
    end
  end
end

