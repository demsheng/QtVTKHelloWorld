cmake_minimum_required(VERSION 3.3...3.12 FATAL_ERROR)


PROJECT (Step8)

find_package(VTK REQUIRED)
vtk_module_config(VTK
  vtkCommonCore
  vtkFiltersSources
  vtkInteractionStyle
  vtkRenderingOpenGL2
)
include(${VTK_USE_FILE})

add_executable(Cone5 MACOSX_BUNDLE Cone8.cxx)
target_link_libraries(Cone5 ${VTK_LIBRARIES})
