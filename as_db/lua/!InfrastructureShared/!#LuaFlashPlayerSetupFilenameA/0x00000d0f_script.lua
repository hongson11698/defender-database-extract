-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFlashPlayerSetupFilenameA\0x00000d0f_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC10: Overwrote pending register: R0 in 'AssignReg'

local l_0_0 = nil
do
  if l_0_0 ~= nil then
    local l_0_1 = {}
    l_0_1["flashplayer_setup.exe"] = ""
    if l_0_1[l_0_0] ~= nil then
      (mp.set_mpattribute)("Lua:FlashPlayerSetupFilename.A")
    end
  end
  return mp.CLEAN
end

