-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000061db_luac 

-- params : ...
-- function num : 0
do
  if (mp.getfilesize)() <= 4096 then
    local l_0_0 = nil
    l_0_0 = (mp.getfilename)()
    if l_0_0 == nil then
      return mp.CLEAN
    end
    if l_0_0:sub(-19) == "->word/document.xml" then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

