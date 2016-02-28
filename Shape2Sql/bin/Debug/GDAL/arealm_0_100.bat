@echo off

set SDK_ROOT=%~dp0
set SDK_ROOT=%SDK_ROOT:\\=\%

echo %SDK_ROOT%

if "%1" == "setenv" goto setenv

%comspec% /k "%SDK_ROOT%arealm_0_100.bat" setenv %1
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
@echo Processing File 1 of 56: tl_2015_01_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_01_arealm.shp"
@echo Processing File 2 of 56: tl_2015_02_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_02_arealm.shp"
@echo Processing File 3 of 56: tl_2015_04_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_04_arealm.shp"
@echo Processing File 4 of 56: tl_2015_05_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_05_arealm.shp"
@echo Processing File 5 of 56: tl_2015_06_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_06_arealm.shp"
@echo Processing File 6 of 56: tl_2015_08_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_08_arealm.shp"
@echo Processing File 7 of 56: tl_2015_09_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_09_arealm.shp"
@echo Processing File 8 of 56: tl_2015_10_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_10_arealm.shp"
@echo Processing File 9 of 56: tl_2015_11_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_11_arealm.shp"
@echo Processing File 10 of 56: tl_2015_12_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_12_arealm.shp"
@echo Processing File 11 of 56: tl_2015_13_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_13_arealm.shp"
@echo Processing File 12 of 56: tl_2015_15_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_15_arealm.shp"
@echo Processing File 13 of 56: tl_2015_16_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_16_arealm.shp"
@echo Processing File 14 of 56: tl_2015_17_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_17_arealm.shp"
@echo Processing File 15 of 56: tl_2015_18_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_18_arealm.shp"
@echo Processing File 16 of 56: tl_2015_19_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_19_arealm.shp"
@echo Processing File 17 of 56: tl_2015_20_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20_arealm.shp"
@echo Processing File 18 of 56: tl_2015_21_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_21_arealm.shp"
@echo Processing File 19 of 56: tl_2015_22_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_22_arealm.shp"
@echo Processing File 20 of 56: tl_2015_23_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_23_arealm.shp"
@echo Processing File 21 of 56: tl_2015_24_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_24_arealm.shp"
@echo Processing File 22 of 56: tl_2015_25_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_25_arealm.shp"
@echo Processing File 23 of 56: tl_2015_26_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_26_arealm.shp"
@echo Processing File 24 of 56: tl_2015_27_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_27_arealm.shp"
@echo Processing File 25 of 56: tl_2015_28_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_28_arealm.shp"
@echo Processing File 26 of 56: tl_2015_29_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_29_arealm.shp"
@echo Processing File 27 of 56: tl_2015_30_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_30_arealm.shp"
@echo Processing File 28 of 56: tl_2015_31_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_31_arealm.shp"
@echo Processing File 29 of 56: tl_2015_32_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_32_arealm.shp"
@echo Processing File 30 of 56: tl_2015_33_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_33_arealm.shp"
@echo Processing File 31 of 56: tl_2015_34_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_34_arealm.shp"
@echo Processing File 32 of 56: tl_2015_35_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_35_arealm.shp"
@echo Processing File 33 of 56: tl_2015_36_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_36_arealm.shp"
@echo Processing File 34 of 56: tl_2015_37_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_37_arealm.shp"
@echo Processing File 35 of 56: tl_2015_38_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_38_arealm.shp"
@echo Processing File 36 of 56: tl_2015_39_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_39_arealm.shp"
@echo Processing File 37 of 56: tl_2015_40_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_40_arealm.shp"
@echo Processing File 38 of 56: tl_2015_41_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_41_arealm.shp"
@echo Processing File 39 of 56: tl_2015_42_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_42_arealm.shp"
@echo Processing File 40 of 56: tl_2015_44_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_44_arealm.shp"
@echo Processing File 41 of 56: tl_2015_45_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_45_arealm.shp"
@echo Processing File 42 of 56: tl_2015_46_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46_arealm.shp"
@echo Processing File 43 of 56: tl_2015_47_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47_arealm.shp"
@echo Processing File 44 of 56: tl_2015_48_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48_arealm.shp"
@echo Processing File 45 of 56: tl_2015_49_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49_arealm.shp"
@echo Processing File 46 of 56: tl_2015_50_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_50_arealm.shp"
@echo Processing File 47 of 56: tl_2015_51_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_51_arealm.shp"
@echo Processing File 48 of 56: tl_2015_53_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_53_arealm.shp"
@echo Processing File 49 of 56: tl_2015_54_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_54_arealm.shp"
@echo Processing File 50 of 56: tl_2015_55_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_55_arealm.shp"
@echo Processing File 51 of 56: tl_2015_56_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_56_arealm.shp"
@echo Processing File 52 of 56: tl_2015_60_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_60_arealm.shp"
@echo Processing File 53 of 56: tl_2015_66_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_66_arealm.shp"
@echo Processing File 54 of 56: tl_2015_69_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_69_arealm.shp"
@echo Processing File 55 of 56: tl_2015_72_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_72_arealm.shp"
@echo Processing File 56 of 56: tl_2015_78_arealm.shp
ogr2ogr -progress -append -skipfailures -nln "arealm_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_78_arealm.shp"

:exit