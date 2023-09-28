-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaThirdPartyCertListSubstringA\0x0000106a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetCertificateInfo)()
if l_0_0 == nil or type(l_0_0) ~= "table" or #l_0_0 == 0 then
  return mp.CLEAN
end
local l_0_1 = {}
l_0_1.mcafee = "mcafee"
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.AuthenticodeContentType == nil or l_0_6.AuthenticodeContentType ~= "PE" then
    return mp.CLEAN
  end
  local l_0_7 = l_0_6.Certificates
  if l_0_7 ~= nil and type(l_0_7) == "table" then
    for l_0_11,l_0_12 in pairs(l_0_6.Certificates) do
      local l_0_13 = l_0_12.Subject
      if l_0_13 ~= nil and type(l_0_12) == "table" then
        local l_0_14 = l_0_13.Organization
        if l_0_14 ~= nil and type(l_0_14) == "string" then
          local l_0_15 = (string.lower)((mp.utf16to8)(l_0_14))
          for l_0_19,l_0_20 in pairs(l_0_1) do
            if (string.find)(l_0_15, l_0_19, 1, true) ~= nil then
              local l_0_21 = "Lua:ThirdPartyCertListSubstring.A!" .. l_0_20
              ;
              (mp.set_mpattribute)(l_0_21)
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
end
do return mp.CLEAN end
-- DECOMPILER ERROR at PC98: Confused about usage of register R5 for local variables in 'ReleaseLocals'


