-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaDocumentXmlRels\0x00000cce_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1 = "->word/_rels/document.xml.rels"
if #l_0_1 < #l_0_0 and l_0_0:sub(-#l_0_1) == l_0_1 then
  return mp.INFECTED
end
return mp.CLEAN

