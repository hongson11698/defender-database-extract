-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELfopex_shellter_trick\0x000011e7_luac 

-- params : ...
-- function num : 0
if not peattributes.isexe or peattributes.packed or not peattributes.no_exception or not peattributes.no_exports or not peattributes.no_security or not peattributes.x86_image or not peattributes.dt_error_heur_exit_criteria then
  return mp.CLEAN
end
if (mp.get_mpattribute)("TEL:lua_codepatch_shellter_trick") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("TEL:fopex_shellter_trick") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if (mp.getfilesize)() > 5242880 then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_LOWERCASE, mp.FILEPATH_QUERY_FULL))
if (string.find)(l_0_0, "\\windows\\", 1, true) or (string.find)(l_0_0, "\\program files", 1, true) then
  return mp.CLEAN
end
if (string.find)((mp.getfilename)(), "->[ShellterEP]", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_1 = (mp.get_mpattributevalue)("Lua:fopex_shellter_trick")
if l_0_1 == nil then
  return mp.CLEAN
end
if l_0_1 == pehdr.AddressOfEntryPoint + pehdr.ImageBase then
  return mp.CLEAN
end
local l_0_2 = check_expensive_loop(l_0_1, 384, 196608)
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = check_expensive_loop(l_0_2 + 2, 384, 196608)
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = check_expensive_loop(l_0_3 + 2, 384, 196608)
if l_0_4 == nil then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_5 = (mp.readfile)(0, (mp.getfilesize)())
local l_0_6 = (mp.readu_u32)(l_0_5, 61)
;
(mp.writeu_u32)(l_0_5, l_0_6 + 40 + 1, l_0_1 - pehdr.ImageBase)
;
(mp.vfo_add_buffer)(l_0_5, "[ShellterEP]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED

