-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000082af_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[5]).matched or (this_sigattrlog[6]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10 = (string.lower)((this_sigattrlog[5]).utf8p2)
    end
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC47: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC53: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC62: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC71: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC80: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC89: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC98: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC107: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC116: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil and (this_sigattrlog[7]).matched and (string.len)(l_0_1) > 3 then
      if (string.find)(l_0_1, ".part", 1, true) or (string.find)(l_0_1, "/wiki/pages/", 1, true) or (string.find)(l_0_1, "/ee-help/help-pdfs/", 1, true) or (string.find)(l_0_1, "downloadcoursiercli", 1, true) or (string.find)(l_0_1, "/softwarepackages/", 1, true) or (string.find)(l_0_1, "\\motorola\\", 1, true) or (string.find)(l_0_1, "\\positron\\", 1, true) or (string.find)(l_0_1, "\\bat4download\\", 1, true) then
        return mp.CLEAN
      end
      local l_0_11 = nil
      local l_0_12 = nil
      if (mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)) then
        if (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "download.windowsupdate.com", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "jquery.com", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "scm.dndev.net", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "mozilla.org", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "trendmicro.com", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "sharepoint.com", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "repo.anaconda.com/miniconda", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "openstreetmap.ru", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "honda.co.jp", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "google.com", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "google.com", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), ".zscaler.", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "www.att.com", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "microsoft.com", 1, true) or (string.find)(l_0_12, "aka.ms", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "fortinet.com", 1, true) or (string.find)((mp.GetMotwHostUrlForFile)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[7]).utf8p1)), "core.windows.net", 1, true) then
          return mp.CLEAN
        end
        local l_0_13 = nil
        local l_0_14 = {[".msu"] = true, [".msi"] = true, [".xml"] = true, [".cab"] = true, [".txt"] = true, [".mp4"] = true, [".gitignore"] = true, [".war"] = true, [".ts"] = true, [".zip"] = true, [".bz2"] = true, [".vdf"] = true, [".part"] = true, [".7z"] = true, [".html"] = true, [".ps1"] = true, [".gif"] = true, [".drift"] = true, [".ini"] = true, [".csv"] = true, [".mp3"] = true, [".sql"] = true}
        local l_0_15 = (string.sub)(l_0_12, -4)
        local l_0_16 = (string.sub)(l_0_12, -5)
        local l_0_17 = (string.sub)(l_0_12, -10)
        if l_0_14[l_0_15] or l_0_14[l_0_16] or l_0_14[l_0_17] or l_0_14[(string.sub)(l_0_12, -3)] then
          return mp.CLEAN
        end
        ;
        (bm.add_related_string)("bmurl", l_0_13, bm.RelatedStringBMReport)
        return mp.INFECTED
      end
    end
    do
      return mp.CLEAN
    end
  end
end

