#-------------------------------------------------
#
# Project created by QtCreator 2017-09-28T12:03:12
#
#-------------------------------------------------
#cmake -G "Visual Studio 15 2017 Win64" ..
# Desktop_Qt_5_12_9_MSVC2017_64bit-Release

QT       += core gui

QT += widgets

TARGET = vtkqt5
TEMPLATE = app


SOURCES += \
    main.cpp

unix:INCLUDEPATH += $$quote(/usr/local/include/vtk-8.2)
unix:LIBS += $$quote(/usr/local/lib/*.so)

#HEADERS += \
    win32 {
    INCLUDEPATH += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\include\vtk-8.2)
    #LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Release\lib\*.lib)

    #win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkalglib-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkChartsCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonColor-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonComputationalGeometry-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonDataModel-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonExecutionModel-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonMath-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonMisc-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonSystem-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonTransforms-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkDICOMParser-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkDomainsChemistry-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkDomainsChemistryOpenGL2-8.2.lib)
    #win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkexoIIc-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkexpat-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersAMR-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersExtraction-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersFlowPaths-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersGeneral-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersGeneric-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersGeometry-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersHybrid-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersHyperTree-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersImaging-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersModeling-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersParallel-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersParallelImaging-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersPoints-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersProgrammable-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersSelection-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersSMP-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersSources-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersStatistics-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersTexture-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersVerdict-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkfreetype-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkGeovisCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkgl2ps-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkglew-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkGUISupportQt-8.2.lib)
    #win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkGUISupportQtOpenGL-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkGUISupportQtSQL-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkhdf5-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkhdf5_hl-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingColor-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingFourier-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingGeneral-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingHybrid-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingMath-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingMorphological-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingSources-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingStatistics-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingStencil-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkInfovisCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkInfovisLayout-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkInteractionImage-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkInteractionStyle-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkInteractionWidgets-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOAMR-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOEnSight-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOExodus-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOExport-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOGeometry-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOImage-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOImport-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOInfovis-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOLegacy-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOLSDyna-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOMINC-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOMovie-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIONetCDF-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOParallel-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOParallelXML-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOPLY-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOSQL-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOTecplotTable-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOVideo-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOXML-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOXMLParser-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkjpeg-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkjsoncpp-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtklibxml2-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkmetaio-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkNetCDF-8.2.lib)
    #win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkNetCDF_cxx-8.2.lib)
    #win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkoggtheora-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkParallelCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkpng-8.2.lib)
    #win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkproj4-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingAnnotation-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingContext2D-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingContextOpenGL2-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingFreeType-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingGL2PSOpenGL2-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingImage-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingLabel-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingLOD-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingOpenGL2-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingQt-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingVolume-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingVolumeOpenGL2-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtksqlite-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtksys-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtktiff-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkverdict-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkViewsContext2D-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkViewsCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkViewsInfovis-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkViewsQt-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkzlib-8.2.lib)#win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkalglib-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkChartsCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonColor-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonComputationalGeometry-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonDataModel-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonExecutionModel-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonMath-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonMisc-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonSystem-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkCommonTransforms-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkDICOMParser-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkDomainsChemistry-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkDomainsChemistryOpenGL2-8.2.lib)
    #win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkexoIIc-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkexpat-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersAMR-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersExtraction-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersFlowPaths-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersGeneral-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersGeneric-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersGeometry-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersHybrid-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersHyperTree-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersImaging-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersModeling-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersParallel-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersParallelImaging-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersPoints-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersProgrammable-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersSelection-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersSMP-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersSources-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersStatistics-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersTexture-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkFiltersVerdict-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkfreetype-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkGeovisCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkgl2ps-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkglew-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkGUISupportQt-8.2.lib)
    #win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkGUISupportQtOpenGL-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkGUISupportQtSQL-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkhdf5-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkhdf5_hl-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingColor-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingFourier-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingGeneral-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingHybrid-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingMath-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingMorphological-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingSources-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingStatistics-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkImagingStencil-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkInfovisCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkInfovisLayout-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkInteractionImage-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkInteractionStyle-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkInteractionWidgets-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOAMR-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOEnSight-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOExodus-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOExport-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOGeometry-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOImage-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOImport-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOInfovis-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOLegacy-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOLSDyna-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOMINC-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOMovie-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIONetCDF-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOParallel-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOParallelXML-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOPLY-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOSQL-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOTecplotTable-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOVideo-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOXML-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkIOXMLParser-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkjpeg-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkjsoncpp-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtklibxml2-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkmetaio-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkNetCDF-8.2.lib)
    #win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkNetCDF_cxx-8.2.lib)
    #win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkoggtheora-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkParallelCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkpng-8.2.lib)
    #win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkproj4-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingAnnotation-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingContext2D-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingContextOpenGL2-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingFreeType-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingGL2PSOpenGL2-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingImage-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingLabel-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingLOD-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingOpenGL2-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingQt-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingVolume-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkRenderingVolumeOpenGL2-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtksqlite-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtksys-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtktiff-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkverdict-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkViewsContext2D-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkViewsCore-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkViewsInfovis-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkViewsQt-8.2.lib)
    win32:LIBS += $$quote(D:\vtk_complie1\VTK-8.2.0-Install-VS2017-x64-Debug\lib\vtkzlib-8.2.lib)
}
