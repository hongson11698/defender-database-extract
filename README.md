# Defender database extract

## extract_sig.cpp

Patch delta vdm and extract signatures into csv.
* Require wdextract.exe

Usage
```
extract_sig.exe out_folder vdm_base [vdm_dlta]
Eg.
wdextract.exe mpavdlta.vdm
extract_sig.exe mpavdlta_vdm_data_folder mpavdlta.vdm.extracted
extract_sig.exe mpavdlta_vdm_data_folder mpavbase.vdm.extracted mpavdlta.vdm.extracted
```
## lua_sig_parser_decompile.py
Parse lua csv result and decompile lua signature scripts inside vdm using luadec5.1

Usage
```
lua_sig_parser_decompile.py lua_standalone_sig_mpasbase.vdm.extracted.csv

```
## as_db & av_db
Patched database and extracted result from mpav\mpas database version 1.397.0.0, delta version 1.397.1634.0

## References:
* https://github.com/commial/experiments/tree/master/windows-defender
* https://github.com/SafeBreach-Labs/wd-pretender
* https://github.com/hfiref0x/WDExtract
