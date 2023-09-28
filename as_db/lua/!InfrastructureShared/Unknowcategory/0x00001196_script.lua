-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001196_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if not peattributes.isdll then
    return mp.CLEAN
  end
  if not peattributes.hasexports then
    return mp.CLEAN
  end
  if ((pehdr.DataDirectory)[1]).Size == 0 then
    return mp.CLEAN
  end
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  local l_0_2 = {}
  l_0_2[".exe"] = true
  l_0_2[".dll"] = true
  l_0_2[".cpl"] = true
  l_0_2[".ocx"] = true
  l_0_2[".pyd"] = true
  l_0_2[".pyc"] = true
  if l_0_2[((string.lower)(l_0_1)):sub(-4)] then
    return mp.CLEAN
  end
  local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
  if not l_0_3:find("\160", 1, true) then
    return mp.CLEAN
  end
  if l_0_1:find("^%p+%.1%w-$") then
    local l_0_4 = ((pehdr.DataDirectory)[1]).RVA
    ;
    (mp.readprotection)(false)
    local l_0_5 = (mp.readfile)((pe.foffset_rva)(l_0_4), 36)
    if (mp.readu_u32)(l_0_5, 21) == 0 then
      return mp.CLEAN
    end
    if (mp.readu_u32)(l_0_5, 25) == 0 then
      return mp.CLEAN
    end
    local l_0_6 = (mp.readu_u32)(l_0_5, 33)
    l_0_5 = (pe.mmap_rva)(l_0_6, 4)
    local l_0_7 = (mp.readu_u32)(l_0_5, 1)
    local l_0_8 = (pe.mmap_rva)(l_0_7, 32)
    if l_0_8:find("^%w+") and ((string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "msiexec.exe" or (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "rundll32.exe") then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

