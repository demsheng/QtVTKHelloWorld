#include "vtkAutoInit.h"
VTK_MODULE_INIT(vtkRenderingOpenGL2);  // VTK was built with vtkRenderingOpenGL2
VTK_MODULE_INIT(vtkInteractionStyle);
VTK_MODULE_INIT(vtkRenderingFreeType);

#include <iostream>
//VTK includes
#include <vtkGenericOpenGLRenderWindow.h>
#include <vtkSmartPointer.h>
#include <vtkRenderer.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkPolyDataMapper.h>
#include <vtkActor.h>
#include <vtkLODActor.h>
#include <vtkAssembly.h>
#include <vtkSTLReader.h>
#include <vtkProperty.h>
#include <vtkCamera.h>
#include <vtkPlaneSource.h>
#include <vtkTransform.h>
#include <vtkAxesActor.h>
#include <vtkCaptionActor2D.h>
#include <vtkRenderWindow.h>
#include <vtkSmartPointer.h>
#include <vtkInteractorStyleTrackballCamera.h>
#include <vtkCylinderSource.h>
#include <vtkPolyDataMapper.h>
#include <vtkSphereSource.h>

#include <QVTKOpenGLWidget.h>
#include <QApplication>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QToolButton>
#include <QSurfaceFormat>
#include <QDebug>

int vtk_with_qt(int argc, char* argv[]);

void setGround();
void setAxes();
void setCamera();

vtkSmartPointer<vtkRenderer> renderer;
vtkSmartPointer<vtkGenericOpenGLRenderWindow> renWin;

//主函数
int main(int argc, char* argv[]) {
    std::cout << "Hello, World!" << std::endl;
    //QSurfaceFormat::setDefaultFormat(QVTKOpenGLWidget::defaultFormat());
    return vtk_with_qt(argc, argv);
}

int vtk_with_qt(int argc, char* argv[]){

    QApplication a(argc, argv);

    QWidget w;// = new QWidget(0);
    QVBoxLayout layout;// = new QVBoxLayout(0);
    QVTKOpenGLWidget v;// = new QVTKOpenGLWidget();
    //v.setFixedSize(300, 300);
    layout.addWidget(&v);
    w.setLayout(&layout);

    //layout.setSpacing(0);//设置布局内的布局与布局之间或控件与控件之间的距离
    //layout.setContentsMargins(0, 0, 0, 0);//设置主窗口dialog与此主布局之间的margin

    //给主窗口设置 尺寸策略，为了内部布局可以跟着窗口一起扩展，需要用“Expanding”
    QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
    w.setSizePolicy(sizePolicy);
    w.setMinimumSize(QSize(500, 500));

// 1. 建立renderer
    renderer = vtkSmartPointer<vtkRenderer>::New();
    renderer->SetBackground(0.1, 0.2, 0.4);

// 2. 建立圆柱
//    auto cylinder = vtkSmartPointer<vtkCylinderSource>::New();
//    cylinder->SetHeight(2.0);
//    cylinder->SetRadius(1.0);
//    cylinder->SetResolution(10);
//    auto cylinderMapper = vtkSmartPointer<vtkPolyDataMapper>::New();
//    cylinderMapper->SetInputConnection(cylinder->GetOutputPort());
//    auto cylinderActor = vtkSmartPointer<vtkActor>::New();
//    cylinderActor->SetMapper(cylinderMapper);

//    renderer->AddActor(cylinderActor);

// 3. 建立球 sphere
    vtkSmartPointer<vtkSphereSource> sphereSource = vtkSmartPointer<vtkSphereSource>::New();
    sphereSource->SetCenter(0, 1, 0);//设置球的中心
    sphereSource->SetRadius(1.0);//设置球的半径
    sphereSource->SetThetaResolution(30);//设置球表面精度，值越大球的光滑程度越高

    vtkSmartPointer<vtkPolyDataMapper> sphereMapper = vtkSmartPointer<vtkPolyDataMapper>::New();
    sphereMapper->SetInputConnection( sphereSource->GetOutputPort() );

    vtkSmartPointer<vtkActor> sphereActor = vtkSmartPointer<vtkActor>::New();
    sphereActor->SetMapper( sphereMapper );
    sphereActor->GetProperty()->SetColor(255/255, 0/255,0/255);
//    sphereActor->GetProperty()->SetRepresentationToWireframe();//以线框的方式显示
    sphereActor->GetProperty()->SetRepresentationToSurface();//以表面的方式显示

    renderer->AddActor( sphereActor );

//4. 建立 render window
    renWin = vtkSmartPointer<vtkGenericOpenGLRenderWindow>::New();
    renWin->AddRenderer(renderer);

    setAxes();
    setGround();
    setCamera();

    v.SetRenderWindow(renWin);
    w.show();
    return a.exec();
}

void setCamera() {
    qDebug() << "setCamera";
    if(renderer == nullptr) {
        qDebug() << "Renderer is nullptr";
        return;
    }

    vtkSmartPointer<vtkCamera> camera = vtkSmartPointer<vtkCamera>::New();
    //camera->SetFocalPoint(1, 0, 1);
    camera->SetPosition(10, 2, 5);
    //camera->Zoom(0.1);
    camera->SetViewUp(0, 0, 1);
    renderer->SetActiveCamera(camera);
}

void setGround() {
    qDebug() << "setGround";
    vtkSmartPointer<vtkActor> ground = vtkSmartPointer<vtkActor>::New();
    vtkSmartPointer<vtkPlaneSource> ground_plane = vtkSmartPointer<vtkPlaneSource>::New();

    ground_plane->SetXResolution(50);
    ground_plane->SetYResolution(50);
    ground_plane->SetCenter(0, 0, 0);
    ground_plane->SetNormal(0, 0, 1);

    vtkSmartPointer<vtkPolyDataMapper> ground_mapper = vtkSmartPointer<vtkPolyDataMapper>::New();
    ground_mapper->SetInputConnection(ground_plane->GetOutputPort());
    ground->SetMapper(ground_mapper);
    ground->GetProperty()->SetRepresentationToWireframe();
    vtkSmartPointer<vtkTransform> ground_transform = vtkSmartPointer<vtkTransform>::New();
    ground_transform->Scale(4, 4, 1);
    ground->SetUserTransform(ground_transform);

    renderer->AddActor(ground);

}

void setAxes() {
    qDebug() << "setAxes";
    if(renderer == nullptr) {
        qDebug() << "Renderer is nullptr";
        return;
    }

    vtkSmartPointer<vtkAxesActor> axes = vtkSmartPointer<vtkAxesActor>::New();
    axes->SetTotalLength(2, 2, 2); //  # Set the total length of the axes in 3 dimensions
    axes->SetShaftType(1);
    axes->SetCylinderRadius(0.02);
    axes->GetXAxisCaptionActor2D()->SetWidth(0.04);
    axes->GetYAxisCaptionActor2D()->SetWidth(0.04);
    axes->GetZAxisCaptionActor2D()->SetWidth(0.04);

    renderer->AddActor(axes);
}


