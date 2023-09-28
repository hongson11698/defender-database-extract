-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!MalmailA\ObMpAttributes\0x0000007a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if (l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  if peattributes.isdll then
    return mp.CLEAN
  end
  local l_0_1 = (mp.getfilesize)()
  if (l_0_1 > 17664 and l_0_1 < 26112) or l_0_1 > 32768 and l_0_1 < 44288 then
    local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
    local l_0_3 = (string.sub)(l_0_2, -4)
    if l_0_3 == ".zip" or l_0_2:find(".7z", 1, true) ~= nil or l_0_3 == ".rar" or l_0_3 == ".exe" or l_0_3 == ".pif" or l_0_3 == ".scr" then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

