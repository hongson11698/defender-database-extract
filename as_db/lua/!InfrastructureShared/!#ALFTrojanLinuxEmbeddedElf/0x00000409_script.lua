-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanLinuxEmbeddedElf\0x00000409_luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 4096 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = 0
for l_0_4 = 1, mp.HEADERPAGE_SZ - 4 do
  if (mp.readu_u32)(headerpage, l_0_4) == 1179403647 then
    local l_0_5 = (mp.readu_u32)(headerpage, l_0_4 + 4)
    if l_0_5 == 65794 or l_0_5 == 65793 then
      do
        do
          l_0_0 = l_0_4 - 1
          do break end
          -- DECOMPILER ERROR at PC36: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC36: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC36: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC36: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC36: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
if l_0_0 ~= 0 then
  (mp.readprotection)(true)
  return mp.INFECTED
end
;
(mp.readprotection)(true)
return mp.CLEAN

