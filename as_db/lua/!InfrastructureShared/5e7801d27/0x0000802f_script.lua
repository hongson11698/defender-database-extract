-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5e7801d27\0x0000802f_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
if peattributes.isdll == true and peattributes.hasexports == true and ((pehdr.DataDirectory)[1]).Size ~= 0 then
  local l_0_0 = ((pehdr.DataDirectory)[1]).RVA
  ;
  (mp.readprotection)(false)
  local l_0_1 = (mp.readfile)((pe.foffset_rva)(l_0_0), 36)
  if (mp.readu_u32)(l_0_1, 21) == 2 and (mp.readu_u32)(l_0_1, 25) == 2 then
    local l_0_2 = (mp.readu_u32)(l_0_1, 33)
    l_0_1 = (pe.mmap_rva)(l_0_2, 4)
    local l_0_3 = (mp.readu_u32)(l_0_1, 1)
    local l_0_4 = (pe.mmap_rva)(l_0_3, 10)
    if (string.sub)(l_0_4, 1, 8) == "Setting\000" or (string.sub)(l_0_4, 1, 15) == "CsOptionsEntry\000" then
      return mp.INFECTED
    end
  end
end
do
  return mp.LOWFI
end

