@echo off

set SDK_ROOT=%~dp0
set SDK_ROOT=%SDK_ROOT:\\=\%

echo %SDK_ROOT%

if "%1" == "setenv" goto setenv

%comspec% /k "%SDK_ROOT%faces_900_1000.bat" setenv %1
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
@echo Processing File 1 of 100: tl_2015_20025_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20025_faces.shp"
@echo Processing File 2 of 100: tl_2015_20027_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20027_faces.shp"
@echo Processing File 3 of 100: tl_2015_20029_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20029_faces.shp"
@echo Processing File 4 of 100: tl_2015_20031_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20031_faces.shp"
@echo Processing File 5 of 100: tl_2015_20033_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20033_faces.shp"
@echo Processing File 6 of 100: tl_2015_20035_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20035_faces.shp"
@echo Processing File 7 of 100: tl_2015_20037_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20037_faces.shp"
@echo Processing File 8 of 100: tl_2015_20039_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20039_faces.shp"
@echo Processing File 9 of 100: tl_2015_20041_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20041_faces.shp"
@echo Processing File 10 of 100: tl_2015_20043_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20043_faces.shp"
@echo Processing File 11 of 100: tl_2015_20045_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20045_faces.shp"
@echo Processing File 12 of 100: tl_2015_20047_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20047_faces.shp"
@echo Processing File 13 of 100: tl_2015_20049_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20049_faces.shp"
@echo Processing File 14 of 100: tl_2015_20051_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20051_faces.shp"
@echo Processing File 15 of 100: tl_2015_20053_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20053_faces.shp"
@echo Processing File 16 of 100: tl_2015_20055_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20055_faces.shp"
@echo Processing File 17 of 100: tl_2015_20057_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20057_faces.shp"
@echo Processing File 18 of 100: tl_2015_20059_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20059_faces.shp"
@echo Processing File 19 of 100: tl_2015_20061_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20061_faces.shp"
@echo Processing File 20 of 100: tl_2015_20063_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20063_faces.shp"
@echo Processing File 21 of 100: tl_2015_20065_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20065_faces.shp"
@echo Processing File 22 of 100: tl_2015_20067_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20067_faces.shp"
@echo Processing File 23 of 100: tl_2015_20069_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20069_faces.shp"
@echo Processing File 24 of 100: tl_2015_20071_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20071_faces.shp"
@echo Processing File 25 of 100: tl_2015_20073_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20073_faces.shp"
@echo Processing File 26 of 100: tl_2015_20075_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20075_faces.shp"
@echo Processing File 27 of 100: tl_2015_20077_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20077_faces.shp"
@echo Processing File 28 of 100: tl_2015_20079_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20079_faces.shp"
@echo Processing File 29 of 100: tl_2015_20081_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20081_faces.shp"
@echo Processing File 30 of 100: tl_2015_20083_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20083_faces.shp"
@echo Processing File 31 of 100: tl_2015_20085_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20085_faces.shp"
@echo Processing File 32 of 100: tl_2015_20087_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20087_faces.shp"
@echo Processing File 33 of 100: tl_2015_20089_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20089_faces.shp"
@echo Processing File 34 of 100: tl_2015_20091_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20091_faces.shp"
@echo Processing File 35 of 100: tl_2015_20093_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20093_faces.shp"
@echo Processing File 36 of 100: tl_2015_20095_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20095_faces.shp"
@echo Processing File 37 of 100: tl_2015_20097_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20097_faces.shp"
@echo Processing File 38 of 100: tl_2015_20099_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20099_faces.shp"
@echo Processing File 39 of 100: tl_2015_20101_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20101_faces.shp"
@echo Processing File 40 of 100: tl_2015_20103_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20103_faces.shp"
@echo Processing File 41 of 100: tl_2015_20105_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20105_faces.shp"
@echo Processing File 42 of 100: tl_2015_20107_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20107_faces.shp"
@echo Processing File 43 of 100: tl_2015_20109_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20109_faces.shp"
@echo Processing File 44 of 100: tl_2015_20111_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20111_faces.shp"
@echo Processing File 45 of 100: tl_2015_20113_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20113_faces.shp"
@echo Processing File 46 of 100: tl_2015_20115_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20115_faces.shp"
@echo Processing File 47 of 100: tl_2015_20117_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20117_faces.shp"
@echo Processing File 48 of 100: tl_2015_20119_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20119_faces.shp"
@echo Processing File 49 of 100: tl_2015_20121_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20121_faces.shp"
@echo Processing File 50 of 100: tl_2015_20123_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20123_faces.shp"
@echo Processing File 51 of 100: tl_2015_20125_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20125_faces.shp"
@echo Processing File 52 of 100: tl_2015_20127_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20127_faces.shp"
@echo Processing File 53 of 100: tl_2015_20129_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20129_faces.shp"
@echo Processing File 54 of 100: tl_2015_20131_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20131_faces.shp"
@echo Processing File 55 of 100: tl_2015_20133_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20133_faces.shp"
@echo Processing File 56 of 100: tl_2015_20135_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20135_faces.shp"
@echo Processing File 57 of 100: tl_2015_20137_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20137_faces.shp"
@echo Processing File 58 of 100: tl_2015_20139_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20139_faces.shp"
@echo Processing File 59 of 100: tl_2015_20141_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20141_faces.shp"
@echo Processing File 60 of 100: tl_2015_20143_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20143_faces.shp"
@echo Processing File 61 of 100: tl_2015_20145_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20145_faces.shp"
@echo Processing File 62 of 100: tl_2015_20147_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20147_faces.shp"
@echo Processing File 63 of 100: tl_2015_20149_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20149_faces.shp"
@echo Processing File 64 of 100: tl_2015_20151_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20151_faces.shp"
@echo Processing File 65 of 100: tl_2015_20153_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20153_faces.shp"
@echo Processing File 66 of 100: tl_2015_20155_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20155_faces.shp"
@echo Processing File 67 of 100: tl_2015_20157_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20157_faces.shp"
@echo Processing File 68 of 100: tl_2015_20159_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20159_faces.shp"
@echo Processing File 69 of 100: tl_2015_20161_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20161_faces.shp"
@echo Processing File 70 of 100: tl_2015_20163_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20163_faces.shp"
@echo Processing File 71 of 100: tl_2015_20165_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20165_faces.shp"
@echo Processing File 72 of 100: tl_2015_20167_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20167_faces.shp"
@echo Processing File 73 of 100: tl_2015_20169_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20169_faces.shp"
@echo Processing File 74 of 100: tl_2015_20171_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20171_faces.shp"
@echo Processing File 75 of 100: tl_2015_20173_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20173_faces.shp"
@echo Processing File 76 of 100: tl_2015_20175_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20175_faces.shp"
@echo Processing File 77 of 100: tl_2015_20177_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20177_faces.shp"
@echo Processing File 78 of 100: tl_2015_20179_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20179_faces.shp"
@echo Processing File 79 of 100: tl_2015_20181_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20181_faces.shp"
@echo Processing File 80 of 100: tl_2015_20183_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20183_faces.shp"
@echo Processing File 81 of 100: tl_2015_20185_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20185_faces.shp"
@echo Processing File 82 of 100: tl_2015_20187_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20187_faces.shp"
@echo Processing File 83 of 100: tl_2015_20189_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20189_faces.shp"
@echo Processing File 84 of 100: tl_2015_20191_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20191_faces.shp"
@echo Processing File 85 of 100: tl_2015_20193_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20193_faces.shp"
@echo Processing File 86 of 100: tl_2015_20195_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20195_faces.shp"
@echo Processing File 87 of 100: tl_2015_20197_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20197_faces.shp"
@echo Processing File 88 of 100: tl_2015_20199_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20199_faces.shp"
@echo Processing File 89 of 100: tl_2015_20201_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20201_faces.shp"
@echo Processing File 90 of 100: tl_2015_20203_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20203_faces.shp"
@echo Processing File 91 of 100: tl_2015_20205_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20205_faces.shp"
@echo Processing File 92 of 100: tl_2015_20207_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20207_faces.shp"
@echo Processing File 93 of 100: tl_2015_20209_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_20209_faces.shp"
@echo Processing File 94 of 100: tl_2015_21001_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_21001_faces.shp"
@echo Processing File 95 of 100: tl_2015_21003_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_21003_faces.shp"
@echo Processing File 96 of 100: tl_2015_21005_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_21005_faces.shp"
@echo Processing File 97 of 100: tl_2015_21007_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_21007_faces.shp"
@echo Processing File 98 of 100: tl_2015_21009_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_21009_faces.shp"
@echo Processing File 99 of 100: tl_2015_21011_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_21011_faces.shp"
@echo Processing File 100 of 100: tl_2015_21013_faces.shp
ogr2ogr -progress -append -skipfailures -nln "faces_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_21013_faces.shp"

:exit