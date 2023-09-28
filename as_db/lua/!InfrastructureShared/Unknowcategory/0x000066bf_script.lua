-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000066bf_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
do
  if l_0_0 then
    local l_0_1 = (string.lower)((MpCommon.ExpandEnvironmentVariables)("%WINDIR%\\"))
    if l_0_0:find(l_0_1, 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

