# cdss-model-cu-sw-yampa #

[Colorado's Decision Support Systems (CDSS)](http://cdss.state.co.us) StateCU and StateMod model dataset files for Yampa Basin.

This repository is an experiment created by the [Open Water Foundation](http://openwaterfoundation.org)
to illustrate how a StateCU and StateMod dataset can be maintained under version control using Git/GitHub.
The original version of the dataset was downloaded from the
[CDSS StateMod website](http://cdss.state.co.us/Modeling/Pages/ConsumptiveUseStateCU.spx) on Aug 16, 2017.
It remains to be seen if this repository version is allowed to become the official master copy of the dataset.

* [Repository Contents for StateCU](#repo-contents-statecu)
* [Repository Contents for StateMod](#repo-contents-statemod)
* [Compatibility and Integration with other CDSS Models](#compatibility)
* [Running the Yampa StateCU Model](#running-statecu)
* [Running the Yampa StateMod Model](#running-statemod)
* [License](#license)
* [Contributing](#contributing)
* [Maintainers](#maintainers)
* [Contributors](#contributors)
* [Release Notes](#release-notes)
-----

<a name="repo-contents-statecu"></a>
## Repository Contents for StateCU ##

The repository contains only the input files needed to create the Yampa Basin StateCU dataset:

* Data files used as input, such as time series that are from third parties and not found in HydroBase.
* Data Management Interface (DMI) software command files, such as for StateDMI and TSTool software.
* Documentation source files.

Dynamic files that can be created from the above source files or are created by running StateCU
are not saved in the repository
([.gitignore file](https://github.com/OpenWaterFoundation/cdss-model-statecu-yampa/blob/master/.gitignore) is used to ignore):

* StateCU input files created by DMI programs.
* StateCU output files, such as reports and binary files.

Specific folders in the repository are described below.
It is convention that files created in a data component folder are
written to the main `StateCU` folder, which is used to run the model.
The components listed alphabetically include:

* [ClimateCU](https://github.com/OpenWaterFoundation/cdss-model-statecu-yampa/tree/master/ClimateCU) - files related to climate stations
* [Crops](https://github.com/OpenWaterFoundation/cdss-model-statecu-yampa/tree/master/Crops) - files related to crop
* [DocsCU](https://github.com/OpenWaterFoundation/cdss-model-statecu-yampa/tree/master/DocsCU) - dataset documentation
* [LocationCU](https://github.com/OpenWaterFoundation/cdss-model-statecu-yampa/tree/master/LocationCU) - files for locations where consumptive use is being estimated
* [StateCU](https://github.com/OpenWaterFoundation/cdss-model-statecu-yampa/tree/master/StateCU) - input files that are used to run the StateCU software
* [StateMod](https://github.com/OpenWaterFoundation/cdss-model-statecu-yampa/tree/master/StateMod) - input files that are shared with the StateMod model

<a name="repo-contents-statemod"></a>
## Repository Contents ##

The repository contains only the input files needed to create the Yampa Basin StateMod dataset:

* Data files used as input, such as time series that are from third parties and not found in HydroBase.
* Data Management Interface (DMI) software command files, such as for StateDMI and TSTool software.
* Documentation source files.

Dynamic files that can be created from the above source files or are created by
running StateMod are not saved in the repository
([.gitignore file](https://github.com/OpenWaterFoundation/cdss-model-statemod-yampa/blob/master/.gitignore) is used to ignore):

* StateMod input files created by DMI programs.
* StateMod output files, such as reports and binary files.

Specific folders in the repository are described below.
It is convention that files created in a data component folder are
written to the main `StateMod` folder, which is used to run the model.  The components listed alphabetically include:

* [bin](https://github.com/OpenWaterFoundation/cdss-model-statemod-yampa/tree/master/bin) - location for StateMod executable, called by `StateMod/run*.bat` files
* [Diversions](https://github.com/OpenWaterFoundation/cdss-model-statemod-yampa/tree/master/Diversions) - files related to direct diversions
* [DocsSW](https://github.com/OpenWaterFoundation/cdss-model-statemod-yampa/tree/master/DocsSW) - Yampa River Basin Water Resources Planning Model User's Manual as PDF
* [Instream]() - files related to instream flow rights
* [Network](https://github.com/OpenWaterFoundation/cdss-model-statemod-yampa/tree/master/Network) - files related to model network
* [Reservoirs](https://github.com/OpenWaterFoundation/cdss-model-statemod-yampa/tree/master/Reservoirs) - files related to reservoirs
* [StateMod](https://github.com/OpenWaterFoundation/cdss-model-statemod-yampa/tree/master/StateMod) - folder where all generated files are placed as the complete dataset
* [StreamSW](https://github.com/OpenWaterFoundation/cdss-model-statemod-yampa/tree/master/StreamSW) - files related to surface water streams

<a name="compatibility"></a>
## Compatibility and Integration with other CDSS Models ##

The current dataset was created using the following software versions
(versions assumed based on the file headers of the downloaded dataset).
It is generally safe to use later versions.

* HydroBase - 20160802
* StateDMI - 4.06.00+
* TSTool - 12.00.00+
* StateCU - 13.03

Additional information may need to be provided to explain how this StateCU dataset
integrates with other CDSS models such as the StateMod water allocation model.
Currently the focus is simply to demonstrate how the StateCU dataset can be
maintained in GitHub while allowing data processing and StateCU runs in the dataset folder structure.

<a name="running-statecu"></a>
## Running the Yampa StateCU Model ##

The following is a short guide on how to use the dataset:

1. Use the GitHub feature to download a zip file, or if Git client software is installed,
clone the repository:  `git clone https://github.com/OpenWaterFoundation/cdss-model-statecu-yampa.git`.
This will result in a folder structure with StateCU dataset input files.
2. Download the StateCU model executable program from the
[CDSS StateCU website](http://cdss.state.co.us/software/Pages/StateCU.aspx) and install.
The StateCU executable program will be installed as `C:\CDSS\StateCU\bin\statecu.exe`.
3. Create StateMod input files by running TSTool and StateDMI command files in the following order:
	1. Use StateDMI to run `LocationCU/ym2015.str.StateDMI`.
	2. Need to document the remaining steps.
4. Run the StateCU model using input files prepared in the previous steps.
	1. Run StateCU\run\*.bat batch files from a command prompt in the numbered order.

<a name="running"></a>
## Running the Yampa StateMod Model ##

The following is a short guide on how to use the dataset:

1. Use the GitHub feature to download a zip file,
or if Git client software is installed, clone the repository:
`git clone https://github.com/OpenWaterFoundation/cdss-model-statemod-yampa.git`.
This will result in a folder structure with StateMod dataset input files.
2. Download the StateMod model executable program from the
[CDSS StateMod website](http://cdss.state.co.us/Modeling/Pages/SurfaceWaterStateMod.aspx)
and save in the `bin` folder from step 1 above.
3. Create StateMod input files by running TSTool and StateDMI command files in the following order:
	1. Use StateDMI to run `Network/rin.commands.StateDMI`.
	2. Need to document the remaining steps.
4. Run the StateMod model using input files prepared in the previous steps.
	1. Run StateMod\run\*.bat batch files from a command prompt in the numbered order.

<a name="license"></a>
## License ##

Currently there is no license for the dataset.
This topic is being discussed as CDSS software is moved to open source licensing.
The dataset is provided for public benefit to help with water resources planning.

<a name="contributing"></a>
## Contributing ##

Contributions to the datasets can be made using one of the following methods:

* GitHub repository issue, especially for small changes
* Pull request,
* Contact the maintainers with suggested changes

<a name="maintainers"></a>
## Maintainers ##

CDSS is a program within the [Colorado Water Conservation Board (CWCB)](http://cwcb.state.co.us).
The primary contact for CDSS is [Andy Moore](mailto:andy.moore@state.co.us).

The Yampa dataset is maintained by [Wilson Water Group](http://www.wilsonwatergroup.com/)
under contract with the State of Colorado and others.  Contact [Lisa Wade](mailto:lisa.wade@wilsonwatergroup.com) with questions.

The Open Water Foundation has created this repository as a test of using GitHub for
version control of a dataset and is coordinating with the CWCB and WWG to evaluate
if the approach should be used by modelers.
Contact [Steve Malers](mailto:steve.malers@openwaterfoundation.org) with questions.

<a name="contributors"></a>
## Contributors ##

* None yet - just the maintainers.

<a name="release-notes"></a>
## Release Notes ##

* [2017-10-01] Initialize Git/GitHub repository using StateCU and StateMod ym2015 datasets from CDSS website.
