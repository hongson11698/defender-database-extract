-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000809f_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("BM_PDF_FILE") and not (mp.get_mpattribute)("MpInternal_IsPliScan") and not (mp.get_mpattribute)("MpAlwaysLowfiMatch") and not (mp.get_mpattribute)("Lua:Guid.1") and not (mp.get_mpattribute)("//Lua:ContextFromWebmail") and not (mp.get_mpattribute)("//Lua:ContextualDropFileByEmailClient") then
  local l_0_0 = (mp.GetBruteMatchData)()
  local l_0_1 = l_0_0.match_offset + 1
  local l_0_2 = 128
  local l_0_3 = ""
  if l_0_0.is_header then
    l_0_3 = (tostring(headerpage)):sub(l_0_1, l_0_1 + l_0_2)
  else
    l_0_3 = (tostring(footerpage)):sub(l_0_1, l_0_1 + l_0_2)
  end
  local l_0_4, l_0_5 = l_0_3:find("http", 1, true)
  if l_0_5 ~= nil then
    l_0_3 = l_0_3:sub(l_0_5 - 3, l_0_2 - l_0_5)
    local l_0_6, l_0_7 = l_0_3:find(")", 1, true)
    if l_0_7 ~= nil then
      (mp.vfo_add_buffer)(l_0_3:sub(1, l_0_7 - 1), "[pdfuri2rdata]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

