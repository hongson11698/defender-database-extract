-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#Drivers\0x00001293_luac 

-- params : ...
-- function num : 0
if not peattributes.isdriver then
  return mp.CLEAN
end
if peattributes.no_security == true then
  (mp.set_mpattribute)("BM_ESRP:Lua:UnsignedDriver")
  return mp.CLEAN
end
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 == nil then
  (mp.set_mpattribute)("BM_ESRP:Lua:UnversionedSignedDriver")
  return mp.CLEAN
end
if l_0_0.OriginalFilename == nil then
  return mp.CLEAN
end
do
  if ((l_0_0.OriginalFilename):lower()):match("(.+)%.") == nil then
    local l_0_1 = (l_0_0.OriginalFilename):lower()
  end
  local l_0_2 = nil
  if (string.find)((string.sub)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)), 0, -5), l_0_2, 1, true) == nil then
    (mp.set_mpattribute)("BM_ESRP:Lua:RenamedSignedDriver")
  else
    ;
    (mp.set_mpattribute)("BM_ESRP:Lua:VersionedSignedDriver")
  end
  local l_0_3 = nil
  -- DECOMPILER ERROR at PC141: Confused about usage of register: R3 in 'UnsetPending'

  if ({aiwsys = "Aiwsys", bandai = "Bandai", capcom = "Capcom", cpuz = "Cpuz", elbycdio = "Elbycdio", goad = "Goad", initdrv = "Initdrv", jtaxdfgznc = "Jtaxdfgznc", kmclass_x64 = "Kmclass_x64", libnicm = "Libnicm", nicm = "Nicm", nscm = "Nscm", rwdrv = "Rwdrv", termdd = "Termdd", tlsdrivegtw = "Tlsdrivegtw", vboxdrv = "Vboxdrv", xueman3 = "Xueman3", HwOs2Ec = "HwOs2Ec", phymem = "Phymem", asrdrv = "AsrDrv", atillk64 = "AtiLlk", bs_hwmio64_w10 = "BS_HWMIO64_W10", bs_i2cio = "BS_I2c64", bsmi = "BSMIx64", ucorew64 = "Ucorew64", ucoresys = "Ucoresys", amifldrv64 = "amifldrv64", glckio2 = "GLCKIO2", gvcidrv = "GVCIDrv", gdrv = "GDrv", gvcidrv64 = "GVCIDrv64", segwindrv = "segwindrv", segwindrvx64 = "segwindrvx64", msio64 = "MSIO64", ntiolib_x64 = "NTIOLib_X64", ntiolib = "NTIOLib", nbiolib_x64 = "NBIOLib_X64", nbiolib = "NBIOLib", winring0x64 = "WinRing0x64", winring0 = "WinRing0", modapi = "MODAPI", nvflash = "NvFlash", rtkio64 = "rtkio64", rtkio86 = "rtkio86", rtkiow8x86 = "rtkiow8x86", rtkiow8x64 = "rtkiow8x64", rtkiow10x86 = "rtkiow10x86", rtkiow10x64 = "rtkiow10x64", speedfan = "speedfan", sfdrvx32 = "speedfan", sfdrvx64 = "speedfan", kevp64 = "powertool", amdryzenmasterdriver = "amdryzenmaster"})[l_0_2] ~= nil then
    (mp.set_mpattribute)("BM_ESRP:Lua:" .. ({aiwsys = "Aiwsys", bandai = "Bandai", capcom = "Capcom", cpuz = "Cpuz", elbycdio = "Elbycdio", goad = "Goad", initdrv = "Initdrv", jtaxdfgznc = "Jtaxdfgznc", kmclass_x64 = "Kmclass_x64", libnicm = "Libnicm", nicm = "Nicm", nscm = "Nscm", rwdrv = "Rwdrv", termdd = "Termdd", tlsdrivegtw = "Tlsdrivegtw", vboxdrv = "Vboxdrv", xueman3 = "Xueman3", HwOs2Ec = "HwOs2Ec", phymem = "Phymem", asrdrv = "AsrDrv", atillk64 = "AtiLlk", bs_hwmio64_w10 = "BS_HWMIO64_W10", bs_i2cio = "BS_I2c64", bsmi = "BSMIx64", ucorew64 = "Ucorew64", ucoresys = "Ucoresys", amifldrv64 = "amifldrv64", glckio2 = "GLCKIO2", gvcidrv = "GVCIDrv", gdrv = "GDrv", gvcidrv64 = "GVCIDrv64", segwindrv = "segwindrv", segwindrvx64 = "segwindrvx64", msio64 = "MSIO64", ntiolib_x64 = "NTIOLib_X64", ntiolib = "NTIOLib", nbiolib_x64 = "NBIOLib_X64", nbiolib = "NBIOLib", winring0x64 = "WinRing0x64", winring0 = "WinRing0", modapi = "MODAPI", nvflash = "NvFlash", rtkio64 = "rtkio64", rtkio86 = "rtkio86", rtkiow8x86 = "rtkiow8x86", rtkiow8x64 = "rtkiow8x64", rtkiow10x86 = "rtkiow10x86", rtkiow10x64 = "rtkiow10x64", speedfan = "speedfan", sfdrvx32 = "speedfan", sfdrvx64 = "speedfan", kevp64 = "powertool", amdryzenmasterdriver = "amdryzenmaster"})[l_0_2])
  end
  local l_0_4 = nil
  local l_0_5 = nil
  if ((pe.get_fixedversioninfo)()).FileVersion ~= nil then
    local l_0_6 = nil
    local l_0_7 = {}
    l_0_7.cpuz = {"cpuz_asr_driver", 0, 2.814749769728e+14}
    l_0_7.elbycdio = {"elby_asr_driver", 0, 1.6888498604605e+15}
    l_0_7.libnicm = {"libnicm_asr_driver", 0, 8.4442922582016e+14}
    l_0_7.mtcbsv64 = {"mtcbsv64_asr_driver", 0, 5.9109831008584e+15}
    l_0_7.nicm = {"nicm_asr_driver", 0, 8.4442922582016e+14}
    l_0_7.nscm = {"nscm_asr_driver", 0, 8.4442922582016e+14}
    l_0_7.sandra = {"sandra_asr_driver", 0, 2.8148013067141e+15}
    l_0_7.rtkio64 = {"rtkio64_asr_driver", 0, 0}
    l_0_7.rtkiow10x64 = {"rtkiow10x64_asr_driver", 0, 0}
    l_0_7.rtkiow8x64 = {"rtkiow8x64_asr_driver", 0, 0}
    l_0_7.bsmi = {"bsmi_asr_driver", 0, 2.8147497671066e+14}
    l_0_7.bs_hwmio64_w10 = {"bs_hwmio64_asr_driver", 0, 2.8147498855158e+15}
    l_0_7.bs_i2cio = {"biostar_io_asr_driver", 0, 2.8147927167795e+14}
    l_0_7.ntiolib = {"ntiolib_asr_driver", 0, 2.8147497671066e+14}
    l_0_7.nchgbios2x64 = {"nchgbios2x64_asr_driver", 0, 1.1259084970394e+15}
    l_0_7.segwindrvx64 = {"segwindrvx64_asr_driver", 0, 2.8147497671524e+16}
    l_0_7.gdrv = {"gdrv_asr_driver", 0, 0}
    l_0_7["kernel-bridge"] = {"kernelbridge_asr_driver", 0, 0}
    l_0_7.rwdrv = {"rwdrv_asr_driver", 0, 0}
    l_0_7.speedfan = {"speedfan_asr_driver", 0, 0}
    l_0_7.sfdrvx32 = {"speedfan_asr_driver", 0, 0}
    l_0_7.sfdrvx64 = {"speedfan_asr_driver", 0, 0}
    l_0_7.kevp64 = {"powertoolx64_asr_driver", 0, 0}
    l_0_7.amdryzenmasterdriver = {"amdryzenmaster_asr_driver", 0, 2.8149645154714e+14}
    l_0_7.viragt = {"viragt_asr_driver", 0, 2.8181857409434e+14}
    l_0_7.viragt64 = {"viragt64_asr_driver", 0, 2.8147497671067e+14}
    l_0_7.kprocesshacker = {"processhacker_asr_driver", 0, 0}
    l_0_7.physmem = {"physicalmem_asr_driver", 0, 0}
    l_0_7.phymem = {"phymem_asr_driver", 0, 0}
    l_0_7.amp = {"sm_amp_asr_driver", 0, 0}
    l_0_7.iqvw64 = {"iqvw64_asr_driver", 0, 2.8149215657986e+14}
    l_0_7.winring0 = {"winring0_asr_driver", 0, 0}
    l_0_7.hpportiox64 = {"hpportiox64_asr_driver", 0, 0}
    l_0_7.lha = {"lha_asr_driver", 0, 0}
    l_0_7.gmer64 = {"gmer_asr_driver", 0, 0}
    l_0_7.pchunter = {"pchunter_asr_driver", 0, 0}
    l_0_7.tvichw64 = {"tvicp_asr_driver", 0, 0}
    l_0_7.tvicport = {"tvicf_asr_driver", 0, 0}
    l_0_7.ssport = {"ssport_asr_driver", 2.8147497671066e+14, 2.8147497671066e+14}
    l_0_7.vmdrv = {"vmdrv_asr_driver", 0, 0}
    l_0_7.aswarpot = {"aswarpot_asr_driver", 0, 5.9109959857603e+15}
    l_0_7.bs_rcio64 = {"bs_rcio64_asr_driver", 0, 0}
    l_0_7.atszio = {"atszio_asr_driver", 0, 8590000135}
    l_0_7.lgcoretemp = {"lgcoretemp_asr_driver", 0, 2.8147497671066e+14}
    l_0_7.sandbox = {"agsandbox_asr_driver", 0, 0}
    l_0_7.amdpowerprofiler = {"amdpowerprofiler_asr_driver", 1.6888498602639e+15, 1.6888541552312e+15}
    l_0_7.aswsnx = {"aswsnx_asr_driver", 0, 4.7850831940157e+15}
    l_0_7.asrdrv = {"asrdrv_asr_driver", 0, 0}
    l_0_7.hwos2ec = {"hwos2ec_asr_driver", 0, 2.8147497671066e+14}
    l_0_7.bs_def64 = {"bsdef64_asr_driver", 0, 0}
    l_0_7.lenovodiagnosticsdriver = {"lenovodiag_asr_driver", 0, 5.6294995342131e+14}
    l_0_7.superbmc = {"superbmc_asr_driver", 0, 5.6294995342131e+14}
    l_0_7.procexp = {"procexp_asr_driver", 0, 4.7850746040812e+15}
    l_0_7.iobitunlocker = {"iobitunlocker_asr_driver", 0, 0}
    l_0_7.agent64 = {"agent64_asr_driver", 0, 0}
    l_0_7.nvflash = {"nvflash_asr_driver", 0, 2.8151363141632e+14}
    l_0_7.inpoutx64 = {"inpoutx64_asr_driver", 0, 0}
    l_0_7.alsysio = {"alsysio_asr_driver", 0, 5.6294995401114e+14}
    l_0_7.atillk64 = {"atillk64_asr_driver", 0, 0}
    l_0_7.hw = {"hw_asr_driver", 0, 1.4073748835533e+15}
    l_0_7.wiseunlo = {"wiseunlo_asr_driver", 0, 0}
    l_0_7.klmd = {"klmd_asr_driver", 0, 5.6300578799617e+14}
    l_0_7.tmel = {"tmel_asr_driver", 0, 0}
    l_0_7.lv561v64 = {"lv561v64_asr_driver", 0, 0}
    l_0_7.symelam = {"symelam_asr_driver", 0, 5.6296713329058e+14}
    local l_0_8 = "hwrwdrv"
    l_0_7[l_0_8] = {"hwrwdrv_asr_driver", 0, 0}
    l_0_8 = "monitor"
    l_0_7[l_0_8] = {"monitor_asr_driver", 0, 2.8148356664526e+14}
    l_0_8 = "otipcibus64"
    l_0_7[l_0_8] = {"otipcibus64_asr_driver", 0, 0}
    l_0_8 = "asrsetupdrv103"
    l_0_7[l_0_8] = {"asrsetupdrv_asr_driver", 0, 0}
    l_0_8 = "hardwarering0"
    l_0_7[l_0_8] = {"hwring0_asr_driver", 0, 0}
    l_0_8 = "mydrivers"
    l_0_7[l_0_8] = {"dghwmonitor_asr_driver", 0, 0}
    l_0_8 = "driver7"
    l_0_7[l_0_8] = {"ectool_asr_driver", 0, 0}
    l_0_8 = "iuforcedelete"
    l_0_7[l_0_8] = {"iuforcedelete_asr_driver", 0, 0}
    l_0_8 = "aswelam"
    l_0_7[l_0_8] = {"avgelam_asr_driver", 0, 6.1924752837181e+15}
    l_0_8 = "avgelam"
    l_0_7[l_0_8] = {"avgelam_asr_driver", 0, 6.1924752837181e+15}
    l_0_8 = "eelam"
    l_0_7[l_0_8] = {"eelam_asr_driver", 0, 2.8147497681551e+15}
    l_0_8 = "rzpnk"
    l_0_7[l_0_8] = {"rzpnk_asr_driver", 0, 0}
    l_0_8 = "hwinfo64a"
    l_0_7[l_0_8] = {"hwinfo_asr_driver", 0, 2.2532515126313e+15}
    l_0_8 = "hwinfo64i"
    l_0_7[l_0_8] = {"hwinfo_asr_driver", 0, 2.2532515126313e+15}
    l_0_8 = "eio"
    l_0_7[l_0_8] = {"eio_asr_driver", 0, 0}
    l_0_8 = "bsmem64_w10"
    l_0_7[l_0_8] = {"bsmiw10_asr_driver", 0, 0}
    l_0_8 = "aswsp"
    l_0_7[l_0_8] = {"aswsp_asr_driver", 0, 5.6295338939515e+15}
    l_0_8 = "ctiio64"
    l_0_7[l_0_8] = {"ctiio64_asr_driver", 0, 2.8147927318568e+14}
    l_0_7.msio64, l_0_8 = l_0_8, {"msio64_asr_driver", 0, 2.8148786312028e+14}
    l_0_8 = "pcdsrvc"
    l_0_7[l_0_8] = {"pcdsrvc_asr_driver", 0, 1.6888627451658e+15}
    l_0_8 = "corsair ll access"
    l_0_7[l_0_8] = {"corsairllaccess_asr_driver", 0, 2.8147497828352e+14}
    l_0_8 = "openlibsys"
    l_0_7[l_0_8] = {"openlibsys_asr_driver", 0, 0}
    l_0_8 = "sysdrv3s"
    l_0_7[l_0_8] = {"sysdrv3s_asr_driver", 0, 8.4445069993574e+14}
    l_0_8 = "iomem"
    l_0_7[l_0_8] = {"iomem_asr_driver", 5.629585433559e+14, 5.629628383232e+14}
    l_0_8 = "etdsupp"
    l_0_7[l_0_8] = {"etdsupport_asr_driver", 0, 0}
    l_0_8 = l_0_7[l_0_2]
    if l_0_8 ~= nil then
      local l_0_9 = l_0_8[2]
      -- DECOMPILER ERROR at PC731: Confused about usage of register: R9 in 'UnsetPending'

      if (l_0_9 <= l_0_6 and l_0_6 <= l_0_8[3]) or l_0_9 == 0 and l_0_8[3] == 0 then
        if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
          (mp.set_mpattribute)("BM_ESRP:Lua:" .. l_0_8[1])
          ;
          (mp.set_mpattribute)("BM_ESRP:Lua:VulnerableAsrDriverMatched")
        else
          ;
          (mp.set_mpattribute)("BM_ESRP:Lua:VulnerableAsrNotOnClose")
          ;
          (mp.set_mpattribute)("VulnDrv:Lua:" .. l_0_8[1])
        end
      end
    end
  end
  do
    return mp.CLEAN
  end
end

