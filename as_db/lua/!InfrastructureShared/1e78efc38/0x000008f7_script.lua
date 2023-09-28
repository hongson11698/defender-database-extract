-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1e78efc38\0x000008f7_luac 

-- params : ...
-- function num : 0
if ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_DEBUG]).Size == 0 or ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_DEBUG]).Size == 0 then
  return mp.INFECTED
end
return mp.CLEAN

