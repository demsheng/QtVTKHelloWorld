## QtVtkHelloWorld

- 作者：李长圣
- 邮箱：sheng0619@163.com
- 功能：演示如何编译运行 `qt 5.12.9` 和 `vtk 8.2.0` 程序。
- 支持 `window10` 和 `linux` 系统

### 编译运行
使用 `qtcreator` 打开 `./Step7QtVTK/QtVtkHelloWorld.pro` 编译运行

### 示例介绍
- `Step1 - Step6` 为vtk官方示例，添加 `.pro`, 实现用`qtcreator` 编译
    - `Step1` 一个旋转360°的锥体
    - `Step2` 一个旋转360°的锥体，使用observer输出相机信息
    - `Step3` 在一个窗口中显示两个个渲染器
    - `Step4` 创建两个actors并旋转它们
    - `Step5` 用鼠标控制物体旋转、放大缩小
    - `Step6` 用鼠标修改物体形状
- `Step7QtVTK` 在 Qt 窗口中创建显示vtk的三维对象
- `Step8` 修改三维球体的大小、颜色

### window10 安装 qt5 和 vtk8

1.  下载安装Qt, http://download.qt.io/archive/qt/  
    本实例使用的版本 `Qt 5.12.9`
2. 下载vtk, https://vtk.org/download/  
    本实例使用的版本为 `VTK-8.2.0.zip` ，编译安装vtk 参考：https://sheng.geovbox.com/dem/vtk/ 
    - `cmake` 编译器选择64位，版本 `cmake-3.8.0-rc2-win64-x64.msi`
    - 编译目录
        1. VTK-8.2.0-src `源码`
        2. VTK-8.2.0-build `构建目录`
        3. VTK-8.2.0-Install-VS2017-x64-Release `CMAKE_INSTALL_PREFIX`
        4. VTK-8.2.0-Install-VS2017-x64-Debug `CMAKE_INSTALL_PREFIX`
    - cmake 注意勾选中 `VTK_Group_Qt`
    - `Qt5_DIR` 为 `D:/Qt/5.12.9/msvc2017_64/lib/cmake/Qt5`
    - **编译vtk** cmake Generate 之后， 去 `VTK-8.2.0-build` 中 使用 `visual stdio 2017` 打开 `VTK.sln`，选择【生成】-->【批生成】，在ALL_BUILD  Release x64 栏 勾选 √---->点击【生成】
    - **安装vtk** 把刚刚勾选的ALL_BUILD Release后面的√去掉，下拉，在INSTALL Release后面勾选
3. 配置 `QtVtkHelloWorld.pro`，见源码。
4. 打开 `qtcreator` 编译运行项目 `QtVtkHelloWorld.pro` 。

### 错误处理

1. qtcreator 中一定要选择 Desktop_Qt_5_12_9_MSVC2017_64bit 编译器， `Release` 版本。否则，可能出现不明原因错误。
2. cmd中运行程序提示 `no override found for vtkPolyDataMapper之类的错误`，在源码开头加入
    ```
    #include "vtkAutoInit.h"
    VTK_MODULE_INIT(vtkRenderingOpenGL2); // VTK was built with vtkRenderingOpenGL2
    VTK_MODULE_INIT(vtkInteractionStyle);
    ```
3. 将vtk安装目录的bin目录 `G:\bin\vtk\VTK-8.2.0-Install-VS2017-x64-Release\bin` 加入 `PATH`，否则exe可能找不到dll

### VTK-8.2.0-src\Examples\Tutorial

These examples demonstrate some basic VTK concepts. They are organized in
increasing order of complexity. These examples are described in more detail
in the textbook "The Visualization Toolkit An Object-Oriented Approach to 3D
Graphics" Third Edition available for purchase from Kitware. The examples are
implemented in the programming languages C++, Python, and Java. (Note:
in order to use Python, and/or Java, you will need to compile with
wrapping on.)

1. 绘制图形
    * Step1 - A "Hello World" style example of a simple visualization pipeline
    * Step2 - Adding observers to Step1 (i.e., processing events)
    * Step3 - Rendering with multiple renderers
    * Step4 - Modifying properties and transformations
2. 旋转移动
    * Step5 - Specifying a particular interaction style
    * Step6 - Adding a 3D widget
    ```
    Once you finish this mini-tutorial, you may wish to explore the other
    VTK/Examples/ subdirectories. In particular, the VTK/Examples/Rendering
    and VTK/Examples/VisualizationAlgorithms are worth exploring. The
    subdirectory VTK/Examples/GUI has other 3D widget examples.
    ```
3. qt 中嵌入 vtk  
    - Step7QtVTK  
    ![Step7QtVTK运行效果图](https://git.nju.edu.cn/demsheng/QtVTKHelloWorld/-/blob/main/showcase.png)
    - Step1-Step6
        * Step1  
        ![Step1运行效果图](https://git.nju.edu.cn/demsheng/QtVTKHelloWorld/-/blob/main/Step1Cone/Step1.PNG)
        * Step2 同Step1
        * Step3  
        ![Step3运行效果图](https://git.nju.edu.cn/demsheng/QtVTKHelloWorld/-/blob/main/Step3/Step3.PNG)
        * Step4
        ![Step4运行效果图](https://git.nju.edu.cn/demsheng/QtVTKHelloWorld/-/blob/main/Step4/Step4.PNG)
        * Step5
        ![Step5运行效果图](https://git.nju.edu.cn/demsheng/QtVTKHelloWorld/-/blob/main/Step5/Step5.PNG)
        * Step6
        ![Step6运行效果图](https://git.nju.edu.cn/demsheng/QtVTKHelloWorld/-/blob/main/Step6/Step6.PNG)
    - Step8
    ![Step8运行效果图](https://git.nju.edu.cn/demsheng/QtVTKHelloWorld/-/blob/main/Step8/Step8.PNG)



