-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!QakbotSD\Includes\0x000000d0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetLnkInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
do
  do
    if not l_0_0.Arguments then
      local l_0_1, l_0_2 = not l_0_0.BasePath or not contains(l_0_0.BasePath, "cmd.exe") or nil
    end
    -- DECOMPILER ERROR at PC21: Confused about usage of register: R1 in 'UnsetPending'

    if l_0_1 == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC26: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC33: Confused about usage of register: R1 in 'UnsetPending'

    if l_0_1 > 3 and contains(l_0_1, "curl%.?e?x?e?%s+.*https?.*wscript%.?e?x?e?", false) then
      return mp.INFECTED
    end
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

