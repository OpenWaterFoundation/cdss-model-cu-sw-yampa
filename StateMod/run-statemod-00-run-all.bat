@echo off
rem Run all the run*.bat files needed to run the full simulation
rem - this is appropriate when it is certain that no errors exist in any step

call run-statemod-01-rsp-baseflow.bat
call run-statemod-02-rsp-mixed-station-model.bat
call run-statemod-03-rsp-baseflow-ungaged.bat
call run-statemod-04-rsp-shift-trout-creek.bat
call run-statemod-05-rspH-simulate.bat
call run-statemod-06-rspB-simulate.bat

rem Need to decide when check is run
rem call run-statemod-99-rsp-check.bat
