-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000003fd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil then
  l_0_0 = (string.lower)((string.sub)(l_0_0, -13))
  if l_0_0 == "\\wmiprvse.exe" then
    return mp.CLEAN
  end
end
local l_0_1 = nil
if (this_sigattrlog[1]).matched then
  l_0_1 = (this_sigattrlog[1]).np2
end
if l_0_1 == nil or (mp.bitand)(l_0_1, 42) == 0 then
  return mp.CLEAN
end
if MpCommon.SECURITY_MANDATORY_MEDIUM_RID < ((bm.get_current_process_startup_info)()).integrity_level then
  return mp.CLEAN
end
return mp.INFECTED

