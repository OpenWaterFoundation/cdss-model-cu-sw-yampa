# StateCU #

This folder contains all files needed to run StateCU.
Files are created in one of three ways:

1. Edited in place here with a text editor (for example `ym2015.ccu`).  These files are saved in the repository.
2. Created through automated Data Management Interface (DMI) process, such as running TSTool and StateDMI, in one of the data component folders.  These files are not saved in the repository and must be created by running the DMIs.
3. Interactively created and saved to this folder (e.g., StateCU GUI wizard).  These files are saved in the repository but may need additional files to be added to the repository to completely represent the input data.

The method of creation for each file is indicated in parentheses below.  Files that are dynamically created are not saved to the repository.

The files are listed in approximate order of creation in order to ensure that dependencies are handled.

## Control Files ##

The following files control a StateCU run.

* `ym2015.ccu` (text editor) - controlling data for StateCU
* `ym2015.rcu` (text editor) - list of files in a StateCU model run
* `ym2015B.rcu` (text editor) - list of files in StateCU baseline model run

## Crop Characteristics and Consumptive Use Method Data ##

* `CDSS.CCH` (StateMod GUI wizard) - crop characteristics
* `CDSS_wEA.KBC` (StateMod GUI wizard) - Blaney-Criddle coefficients

## Climate Stations ##

Each consumptive use location requires association with one or more climate stations.  A statewide dataset is used consistently for all CDSS datasets.

* `COclim2015.cli` (from ClimateCU) - climate stations
* `COclim2015.fd` (from ClimateCU) - climate stations frost dates time series, annual
* `COclim2015.prc` (from ClimateCU) - climate stations precipitation time series, monthly
* `COclim2015.tem` (from ClimateCU) - climate stations temperature time series, monthly

## Consumptive Use Locations ##

Consumptive use locations are ditches and urban locations where consumptive use is being estimated.

* `ym2015.str` (from LocationCU) - locations where consumptive use is estimated, consistent with StateMod model nodes.

## Diversions ##

Diversions correspond to structures that divert water to meet demand.  Structures are predominantly for agriculture but also include urban demand.  Time series are used to estimate water short conditions.

* `ym2015_cu.ddh` (from DiversionsCU) - diversion time series, monthly

## Crop Patterns and Irrigation Water Requirements ##

Annual crop patterns and corresponding irrigation water requirement time series drive the analysis.

* `ym2015.ipy` (from Crops) - irrigation practice time series, yearly
* `ym2015B.ipy` (from Crops) - baseline irrigation practice time series, yearly
* `ym2015.cds` (from Crops) - crop pattern time series, annual
* `ym2015B.cds` (from Crops) - crop pattern time series, annual
