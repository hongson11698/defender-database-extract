-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\57783507c\0x0000556c_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).VA == 0 + pehdr.ImageBase + 3 then
  return mp.INFECTED
end
return mp.CLEAN

