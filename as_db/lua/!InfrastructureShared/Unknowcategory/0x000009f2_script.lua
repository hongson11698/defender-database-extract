-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000009f2_luac 

-- params : ...
-- function num : 0
local l_0_0 = "unk"
if (this_sigattrlog[2]).matched then
  l_0_0 = "warn"
else
  if (this_sigattrlog[3]).matched then
    l_0_0 = "block"
  end
end
local l_0_1 = (this_sigattrlog[1]).utf8p1 .. ":" .. (this_sigattrlog[1]).np2
local l_0_2 = {}
l_0_2.SIG_CONTEXT = "NP:COCO:100"
l_0_2.CONTENT_SOURCE = "NP"
l_0_2.NP_LEVEL = l_0_0
l_0_2.C2 = "true"
local l_0_3 = mp.GetUrlReputation
local l_0_4 = {}
-- DECOMPILER ERROR at PC31: No list found for R4 , SetList fails

-- DECOMPILER ERROR at PC32: Overwrote pending register: R5 in 'AssignReg'

l_0_3 = l_0_3(l_0_4, l_0_1)
if l_0_3 ~= nil then
  l_0_4 = l_0_3.urls
  for l_0_8,l_0_9 in ipairs(l_0_4) do
    if l_0_9.determination == 2 and l_0_9.confidence > 90 then
      if (l_0_9.urlresponsecontext).family then
        local l_0_10 = {}
        l_0_10[1] = 805306694
        l_0_10[2] = 805306695
        l_0_10[3] = 805306694
        local l_0_11 = l_0_10[(l_0_9.urlresponsecontext).family]
        if l_0_11 then
          (mp.changedetectionname)(l_0_11)
        end
      end
      do
        do
          do return mp.INFECTED end
          -- DECOMPILER ERROR at PC67: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC67: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC67: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
l_0_4 = mp
l_0_4 = l_0_4.CLEAN
return l_0_4

