-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000081aa_luac 

-- params : ...
-- function num : 0
GetSuspiciuousFileType = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  l_1_1[".au"] = "Bin"
  l_1_1[".ax"] = "Bin"
  l_1_1[".js"] = "Script"
  l_1_1[".7z"] = "Archive"
  local l_1_2 = {}
  l_1_2.exe = "Bin"
  l_1_2.com = "Bin"
  l_1_2.scr = "Bin"
  l_1_2.cpl = "Bin"
  l_1_2.dll = "Bin"
  l_1_2.ocx = "Bin"
  l_1_2.msi = "Bin"
  l_1_2.sys = "Bin"
  l_1_2.bin = "Bin"
  l_1_2.fon = "Bin"
  l_1_2.drv = "Bin"
  l_1_2.app = "Bin"
  l_1_2.apl = "Bin"
  l_1_2.bat = "Script"
  l_1_2.cmd = "Script"
  l_1_2.vbs = "Script"
  l_1_2.reg = "Script"
  l_1_2.shs = "Script"
  l_1_2[".vb"] = "Script"
  l_1_2.vbe = "Script"
  l_1_2.wsc = "Script"
  l_1_2.wsf = "Script"
  l_1_2.wsh = "Script"
  l_1_2.asm = "Script"
  l_1_2.ini = "Script"
  l_1_2.pif = "Script"
  l_1_2.htm = "Script"
  l_1_2.chm = "Script"
  l_1_2.msp = "Script"
  l_1_2.tlb = "Script"
  l_1_2.asp = "Script"
  l_1_2.msc = "Script"
  l_1_2.api = "Script"
  l_1_2.rar = "Archive"
  l_1_2.zip = "Archive"
  l_1_2.cab = "Archive"
  l_1_2.tar = "Archive"
  l_1_2.jar = "Archive"
  l_1_2.doc = "Office"
  l_1_2.xls = "Office"
  l_1_2.ppt = "Office"
  local l_1_3 = {}
  l_1_3.docm = "Office"
  l_1_3.xlsm = "Office"
  l_1_3.pptm = "Office"
  l_1_3.docx = "Office"
  l_1_3.xlsx = "Office"
  l_1_3.pptx = "Office"
  l_1_3.html = "Script"
  l_1_3.aspx = "Script"
  l_1_3.bzip = "Archive"
  if l_1_0 == nil or (string.len)(l_1_0) < 4 then
    return nil
  end
  local l_1_4 = (string.lower)(l_1_0)
  local l_1_5 = (string.match)(l_1_4, "%.(%l+)$")
  if l_1_5 == nil then
    return nil
  end
  local l_1_6 = ((string.len)(l_1_5))
  local l_1_7 = nil
  if l_1_6 == 2 then
    l_1_7 = l_1_1[l_1_5]
  else
    if l_1_6 == 3 then
      l_1_7 = l_1_2[l_1_5]
    else
      if l_1_6 == 4 then
        l_1_7 = l_1_3[l_1_5]
      end
    end
  end
  return l_1_7
end


