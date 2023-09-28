-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008291_luac 

-- params : ...
-- function num : 0
IsSuspiciousFileExt = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  l_1_1.exe = 1
  l_1_1.dll = 1
  l_1_1.scr = 1
  l_1_1.ocx = 1
  l_1_1.com = 1
  l_1_1.js = 2
  l_1_1.vbs = 2
  l_1_1.hta = 2
  l_1_1.cmd = 2
  l_1_1.jar = 2
  l_1_1.jse = 2
  l_1_1.pif = 2
  l_1_1.vbe = 2
  l_1_1.wsc = 2
  l_1_1.wsf = 2
  l_1_1.wsh = 2
  l_1_1.bat = 2
  local l_1_2 = l_1_1[l_1_0]
  if l_1_2 == 1 then
    local l_1_3 = mp.get_mpattribute
    local l_1_4 = "BM_MZ_FILE"
    do return l_1_3(l_1_4) end
    -- DECOMPILER ERROR at PC26: Confused about usage of register R4 for local variables in 'ReleaseLocals'

  else
    if l_1_2 == 2 then
      return true
    end
  end
  do return false end
  -- DECOMPILER ERROR at PC33: Confused about usage of register R3 for local variables in 'ReleaseLocals'

end

IsArchiveFileExt = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = {}
  l_2_1.zip = true
  l_2_1.cab = true
  l_2_1.rar = true
  l_2_1["7z"] = true
  if l_2_1[l_2_0] == nil then
    return false
  end
  return true
end

IsWebmailDownloadURL = function()
  -- function num : 0_2
  local l_3_0 = (mp.IOAVGetDownloadUrl)()
  if l_3_0 == nil or (string.len)(l_3_0) < 15 then
    return false
  end
  local l_3_1 = (l_3_0:match("https?://([%w%.-]+)/")):lower()
  if l_3_1 == nil then
    return false
  end
  if l_3_1:find("mail.google", 1, true) ~= nil or l_3_1:find("mail-attachment", 1, true) ~= nil or l_3_1:find("attachment.outlook.", 1, true) ~= nil or l_3_1:find("dl-mail.ymail", 1, true) ~= nil or l_3_1:find(".yahoomail.", 1, true) ~= nil then
    return true
  end
  return false
end

IsWebmailDownloadURLNew = function()
  -- function num : 0_3
  local l_4_0 = (mp.IOAVGetDownloadUrl)()
  if l_4_0 == nil or #l_4_0 < 10 then
    l_4_0 = (mp.GetMOTWHostUrl)()
    if l_4_0 == nil or #l_4_0 < 10 then
      return false
    end
  end
  local l_4_1 = l_4_0:match("https?://([%w%.-]+)/?")
  if l_4_1 then
    l_4_1 = l_4_1:lower()
  end
  do
    local l_4_2 = {}
    -- DECOMPILER ERROR at PC33: No list found for R2 , SetList fails

    -- DECOMPILER ERROR at PC34: Overwrote pending register: R3 in 'AssignReg'

    -- DECOMPILER ERROR at PC35: Overwrote pending register: R4 in 'AssignReg'

    for l_4_6,l_4_7 in ("mail.google")("dl-mail.ymai") do
      if l_4_1:find(l_4_7, 1, true) then
        return true
      end
    end
    do return false end
    -- WARNING: undefined locals caused missing assignments!
  end
end

IsEmailCachePath = function(l_5_0)
  -- function num : 0_4
  local l_5_1 = {}
  local l_5_2 = {}
  -- DECOMPILER ERROR at PC4: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC7: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC8: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC10: Overwrote pending register: R4 in 'AssignReg'

  l_5_2 = l_5_2((("\\temporary internet files\\content.outlook\\").get_contextdata)(("\\inetcache\\content.outlook\\").CONTEXT_DATA_PROCESSNAME))
  local l_5_3 = l_5_1[l_5_2]
  if l_5_3 == nil then
    return false
  end
  for l_5_7,l_5_8 in pairs(l_5_3) do
    if l_5_0:find(l_5_8, 1, true) ~= nil then
      return true
    end
  end
  return false
end


