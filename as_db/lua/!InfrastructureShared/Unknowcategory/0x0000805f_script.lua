-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000805f_luac 

-- params : ...
-- function num : 0
if peattributes.isexe then
  if (mp.readu_u32)(footerpage, 4025) ~= 17780832 then
    return mp.CLEAN
  end
  if (mp.readu_u32)(footerpage, 4029) ~= 1493050444 then
    return mp.CLEAN
  end
  local l_0_0 = nil
  local l_0_1 = false
  local l_0_2 = (mp.crc32)(-1, footerpage, 4033, 64)
  if l_0_2 == 1763915979 then
    l_0_0 = 3426
  else
    if l_0_2 == 2558714366 then
      l_0_0 = 3057
    else
      if l_0_2 == 2981753981 then
        l_0_0 = 3055
      else
        return mp.CLEAN
      end
    end
  end
  local l_0_3 = (mp.crc32)(-1, footerpage, l_0_0, 400)
  if l_0_3 == 3208132055 then
    l_0_1 = true
  else
    return mp.CLEAN
  end
  if l_0_1 == true then
    local l_0_4 = false
    if pevars.epsec < pehdr.NumberOfSections or (mp.readu_u32)(epcode, 1) ~= 2030270560 or peattributes.epoutofimage or peattributes.amd64_image then
      l_0_4 = true
    end
    if l_0_4 == true then
      (mp.changedetectionname)(805306412)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

