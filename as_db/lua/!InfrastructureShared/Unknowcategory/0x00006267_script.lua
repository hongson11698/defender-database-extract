-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006267_luac 

-- params : ...
-- function num : 0
do
  if (nri.IsResponse)() then
    local l_0_0 = (nri.GetRawResponseBlob)()
    if l_0_0 and (string.find)(l_0_0, "Server: Microsoft%-IIS/7.5") then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

