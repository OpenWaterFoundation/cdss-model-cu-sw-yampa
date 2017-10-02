# Diversions #

This folder contains files related to the StateMod diversion stations (nodes).

## Aggregate/System Definitions ##

* `ym_agg.csv` - aggregate station list (rights aggregated)
* `ym_divsys.csv` - diversion system list (all rights retained)
* `ym_multistr.csv` - diversion "multi-structures"
* `ym_nodiv_agg.csv` - ?

## TSTool Command Files to Process Data ##

* `58_SteamboatWells.commands.TSTool` - process historical diversions for wells - **has error because missing input file that should be referenced as a local file (Steve could not fix because he does not have the file): `C:\Google Drive\CDSS\ym2015\Diversions\2003-2013 Yampa Well Usage.xlsx`**
	+ Output: `58_SteamboatWells_B.stm`
	+ Output: `58_SteamboatWells_H.stm`
* `5402068.commands.TSTool` - process STATE LINE WW DITCH
	+ Output: **had error because output file location should be referenced as a local file (Steve fixed): `C:\Google Drive\CDSS\ym2015\Diversions\5402068.stm`**
* `Future_Demands.commands.TSTool` - future demands **had error because input and output file locations were using Google Drive (Steve fixed)**
	+ Output: `Future_Demands.stm`
* `HaydenStation_570512.TSTool`
	+ Output: `5700512_Hist.stm`
* `M&I_Baseline.commands.TSTool` **Steve put input files in a folder to avoid confusion with output files**
	+ Output: `M&I_Baseline.stm`
* `WYD.commands.TSTool` - Wyoming demands **had error because input and output file locations were using Google Drive and some files had extra zero in IDs (Steve fixed)**
	+ Output: `WYD.stm`

## StateDMI Command Files to Process Data ##

* `dds.commands.StateDMI`
	+ Output: `ym2015_dds.dds`
* `ddr.commands.StateDMI`
	+ Output: `../StateMod/ym2015_ddr`
	+ Output: `../StateMod/ym2045_ddr` (commented out)
* `ddh.commands.StateDMI`
	+ Output: `../StateMod/ym2015.ddh`
	+ Output: `ym2015_ddh.dds`
* `B.iwr.commands.StateDMI` **Must install StateCU dataset first for ym2015B.ddc file**
	+ Output: `ym2015B.iwr`
* `Bddm.commands.StateDMI`
	+ Output: `../StateMod/ym2015B.ddm`