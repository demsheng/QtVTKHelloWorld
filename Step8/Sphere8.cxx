/*=========================================================================

  Program:   Visualization Toolkit
  Module:    Cone5.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
//
// 演示如何修改球的大小、颜色
// This example introduces the concepts of interaction into the
// C++ environment. A different interaction style (than
// the default) is defined.
//

#include "vtkAutoInit.h"
VTK_MODULE_INIT(vtkRenderingOpenGL2); // VTK was built with vtkRenderingOpenGL2
VTK_MODULE_INIT(vtkInteractionStyle);

// First include the required header files for the VTK classes we are using.
#include <vtkSmartPointer.h>
#include <vtkPolyData.h>
#include <vtkCellArray.h>
#include <vtkSphereSource.h>
#include <vtkPolyDataMapper.h>
#include <vtkRenderer.h>
#include <vtkRenderWindow.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkActor.h>
#include <vtkPoints.h>
#include <math.h>
#include <vtkPointData.h>
#include <vtkFloatArray.h>
#include <vtkGlyph3D.h>
#include <vtkUnstructuredGrid.h>
#include <vtkLookupTable.h>

#include "vtkInteractorStyleTrackballCamera.h"

#define PI 3.14159265

int main(int, char *[])
{
    srand(time(NULL));

    // create points
    vtkSmartPointer<vtkPoints> points = vtkSmartPointer<vtkPoints>::New();

    // setup scales
    vtkSmartPointer<vtkFloatArray> scales = vtkSmartPointer<vtkFloatArray>::New();
    scales->SetName("scales");

     // setup color label
    vtkSmartPointer<vtkFloatArray> col = vtkSmartPointer<vtkFloatArray>::New();
    col->SetName("col");

    // setup lookupTable and add some colors
    vtkSmartPointer<vtkLookupTable> colors = vtkSmartPointer<vtkLookupTable>::New();
    colors->SetNumberOfTableValues(4);
    colors->SetTableValue(0 ,1.0 ,0.0 ,0.0 ,1.0); // red
    colors->SetTableValue(1 ,0.0 ,1.0 ,0.0 ,1.0); // green
    colors->SetTableValue(2 ,0.0 ,0.0 ,1.0 ,1.0); // blue
    colors->SetTableValue(3 ,1.0 ,1.0 ,0.0 ,1.0); // yellow
    // the last double value is for opacity (1->max, 0->min)

    for(int i=0; i<100; i++)
    {
        points->InsertNextPoint(15*cos(i*PI/50), 15*sin(i*PI/50), 0); // sphere in circle
        scales->InsertNextValue((rand()% 100)/double(100)); // random radius between 0 and 0.99
        col->InsertNextValue((rand()% 4)); // random color label
    }

    // grid structured to append center, radius and color label
    vtkSmartPointer<vtkUnstructuredGrid> grid = vtkSmartPointer<vtkUnstructuredGrid>::New();
    grid->SetPoints(points);
    grid->GetPointData()->AddArray(scales);
    grid->GetPointData()->SetActiveScalars("scales"); // !!!to set radius first
    grid->GetPointData()->AddArray(col);

    // create anything you want here, we will use a sphere for the demo
    vtkSmartPointer<vtkSphereSource> sphereSource = vtkSmartPointer<vtkSphereSource>::New();

    // object to group sphere and grid and keep smooth interaction
    vtkSmartPointer<vtkGlyph3D> glyph3D = vtkSmartPointer<vtkGlyph3D>::New();
    glyph3D->SetInputData(grid);
    glyph3D->SetSourceConnection(sphereSource->GetOutputPort());

    // create a mapper and actor
    vtkSmartPointer<vtkPolyDataMapper> mapper = vtkSmartPointer<vtkPolyDataMapper>::New();
    mapper->SetInputConnection(glyph3D->GetOutputPort());

    mapper->SetScalarModeToUsePointFieldData(); // without, color are displayed regarding radius and not color label
    mapper->SetScalarRange(0, 3); // to scale color label (without, col should be between 0 and 1)
    mapper->SelectColorArray("col"); // !!!to set color (nevertheless you will have nothing)
    mapper->SetLookupTable(colors);

    vtkActor *actor = vtkActor::New();
    actor->SetMapper(mapper);

    // create a renderer, render window, and interactor
    vtkSmartPointer<vtkRenderer> renderer = vtkSmartPointer<vtkRenderer>::New();
    vtkSmartPointer<vtkRenderWindow> renderWindow = vtkSmartPointer<vtkRenderWindow>::New();
    renderWindow->AddRenderer(renderer);
    vtkSmartPointer<vtkRenderWindowInteractor> renderWindowInteractor = vtkSmartPointer<vtkRenderWindowInteractor>::New();
    renderWindowInteractor->SetRenderWindow(renderWindow);

    // 修改鼠标操作的交互模式
    // By default the vtkRenderWindowInteractor instantiates an instance
    // of vtkInteractorStyle. vtkInteractorStyle translates a set of events
    // it observes into operations on the camera, actors, and/or properties
    // in the vtkRenderWindow associated with the vtkRenderWinodwInteractor.
    // Here we specify a particular interactor style.
    vtkSmartPointer<vtkInteractorStyleTrackballCamera> style =
      vtkSmartPointer<vtkInteractorStyleTrackballCamera>::New();
    renderWindowInteractor->SetInteractorStyle(style);


    // add the actor to the scene
    renderer->AddActor(actor);
    renderer->SetBackground(0, 0, 0);
    // render and interact
    renderWindow->Render();
    renderWindowInteractor->Start();
    return EXIT_SUCCESS;
}

