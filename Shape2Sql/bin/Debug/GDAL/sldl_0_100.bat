@echo off

set SDK_ROOT=%~dp0
set SDK_ROOT=%SDK_ROOT:\\=\%

echo %SDK_ROOT%

if "%1" == "setenv" goto setenv

%comspec% /k "%SDK_ROOT%sldl_0_100.bat" setenv %1
goto processdata
goto exit

:setenv
@echo Setting environment for using the GDAL and MapServer tools.

if "%2"=="hideoci" goto hideoci

set ocipath=0
set _path="%PATH:;=" "%"
for %%p in (%_path%) do if not "%%~p"=="" if exist %%~p\oci.dll set ocipath=1

if "%ocipath%"=="0" goto hideoci
@echo WARNING: If you encounter problems with missing oci libraries then type:
@echo   SDKShell hideoci
goto setenv2

:hideoci
@echo Hiding the OCI plugin library.
if not exist "%SDK_ROOT%bin\gdal\plugins-optional" mkdir "%SDK_ROOT%bin\gdal\plugins-optional"
if exist "%SDK_ROOT%bin\gdal\plugins\ogr_OCI.dll" move "%SDK_ROOT%bin\gdal\plugins\ogr_OCI.dll" "%SDK_ROOT%bin\gdal\plugins-optional\ogr_OCI.dll"
if exist "%SDK_ROOT%bin\gdal\plugins\gdal_GEOR.dll" move "%SDK_ROOT%bin\gdal\plugins\gdal_GEOR.dll" "%SDK_ROOT%bin\gdal\plugins-optional\gdal_GEOR.dll"

:setenv2
SET "PATH=%SDK_ROOT%bin;%SDK_ROOT%bin\gdal\python\osgeo;%SDK_ROOT%bin\proj\apps;%SDK_ROOT%bin\gdal\apps;%SDK_ROOT%bin\ms\apps;%SDK_ROOT%bin\gdal\csharp;%SDK_ROOT%bin\ms\csharp;%SDK_ROOT%bin\curl;%PATH%"
SET "GDAL_DATA=%SDK_ROOT%bin\gdal-data"
SET "GDAL_DRIVER_PATH=%SDK_ROOT%bin\gdal\plugins"
SET "PYTHONPATH=%SDK_ROOT%bin\gdal\python;%SDK_ROOT%bin\ms\python"
SET "PROJ_LIB=%SDK_ROOT%bin\proj\SHARE"

:processdata
@echo Processing File 1 of 50: tl_2015_01_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_01_sldl.shp"
@echo Processing File 2 of 50: tl_2015_02_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_02_sldl.shp"
@echo Processing File 3 of 50: tl_2015_04_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_04_sldl.shp"
@echo Processing File 4 of 50: tl_2015_05_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_05_sldl.shp"
@echo Processing File 5 of 50: tl_2015_06_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_06_sldl.shp"
@echo Processing File 6 of 50: tl_2015_08_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_08_sldl.shp"
@echo Processing File 7 of 50: tl_2015_09_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_09_sldl.shp"
@echo Processing File 8 of 50: tl_2015_10_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_10_sldl.shp"
@echo Processing File 9 of 50: tl_2015_12_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_12_sldl.shp"
@echo Processing File 10 of 50: tl_2015_13_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_13_sldl.shp"
@echo Processing File 11 of 50: tl_2015_15_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_15_sldl.shp"
@echo Processing File 12 of 50: tl_2015_16_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_16_sldl.shp"
@echo Processing File 13 of 50: tl_2015_17_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_17_sldl.shp"
@echo Processing File 14 of 50: tl_2015_18_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_18_sldl.shp"
@echo Processing File 15 of 50: tl_2015_19_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_19_sldl.shp"
@echo Processing File 16 of 50: tl_2015_20_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20_sldl.shp"
@echo Processing File 17 of 50: tl_2015_21_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_21_sldl.shp"
@echo Processing File 18 of 50: tl_2015_22_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_22_sldl.shp"
@echo Processing File 19 of 50: tl_2015_23_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_23_sldl.shp"
@echo Processing File 20 of 50: tl_2015_24_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_24_sldl.shp"
@echo Processing File 21 of 50: tl_2015_25_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_25_sldl.shp"
@echo Processing File 22 of 50: tl_2015_26_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_26_sldl.shp"
@echo Processing File 23 of 50: tl_2015_27_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_27_sldl.shp"
@echo Processing File 24 of 50: tl_2015_28_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_28_sldl.shp"
@echo Processing File 25 of 50: tl_2015_29_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_29_sldl.shp"
@echo Processing File 26 of 50: tl_2015_30_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_30_sldl.shp"
@echo Processing File 27 of 50: tl_2015_32_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_32_sldl.shp"
@echo Processing File 28 of 50: tl_2015_33_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_33_sldl.shp"
@echo Processing File 29 of 50: tl_2015_34_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_34_sldl.shp"
@echo Processing File 30 of 50: tl_2015_35_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_35_sldl.shp"
@echo Processing File 31 of 50: tl_2015_36_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_36_sldl.shp"
@echo Processing File 32 of 50: tl_2015_37_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_37_sldl.shp"
@echo Processing File 33 of 50: tl_2015_38_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_38_sldl.shp"
@echo Processing File 34 of 50: tl_2015_39_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_39_sldl.shp"
@echo Processing File 35 of 50: tl_2015_40_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_40_sldl.shp"
@echo Processing File 36 of 50: tl_2015_41_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_41_sldl.shp"
@echo Processing File 37 of 50: tl_2015_42_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_42_sldl.shp"
@echo Processing File 38 of 50: tl_2015_44_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_44_sldl.shp"
@echo Processing File 39 of 50: tl_2015_45_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_45_sldl.shp"
@echo Processing File 40 of 50: tl_2015_46_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46_sldl.shp"
@echo Processing File 41 of 50: tl_2015_47_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47_sldl.shp"
@echo Processing File 42 of 50: tl_2015_48_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48_sldl.shp"
@echo Processing File 43 of 50: tl_2015_49_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49_sldl.shp"
@echo Processing File 44 of 50: tl_2015_50_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_50_sldl.shp"
@echo Processing File 45 of 50: tl_2015_51_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_51_sldl.shp"
@echo Processing File 46 of 50: tl_2015_53_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_53_sldl.shp"
@echo Processing File 47 of 50: tl_2015_54_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_54_sldl.shp"
@echo Processing File 48 of 50: tl_2015_55_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_55_sldl.shp"
@echo Processing File 49 of 50: tl_2015_56_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_56_sldl.shp"
@echo Processing File 50 of 50: tl_2015_72_sldl.shp
ogr2ogr -progress -append -skipfailures -nln "sldl_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_72_sldl.shp"

:exit