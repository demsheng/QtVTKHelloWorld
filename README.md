## QtVtkHelloWorld

- 作者：李长圣
- 邮箱：sheng0619@163.com
- 功能：演示如何编译运行 `qt` 和 `vtk` 程序。
- 支持 `window10` 和 `linux` 系统

![运行效果图](https://github.com/demsheng/QtVTKHelloWorld/blob/main/showcase.png)

### 编译运行
使用 `qtcreator` 打开 `QtVtkHelloWorld.pro` 编译运行

### window10 安装 qt 和 vtk

1. http://download.qt.io/archive/qt 下载安装Qt。   
本实例使用的版本 `Qt 5.12.9`
2. https://vtk.org/download/下载 vtk  
本实例使用的版本为 `VTK-8.2.0.zip` ，编译安装vtk 参考：https://sheng.geovbox.com/dem/vtk/。  
    - `cmake` 编译器选择64位
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

**注意：** qtcreator 中一定要选择 Desktop_Qt_5_12_9_MSVC2017_64bit 编译器， `Release` 版本。否则，会出不明原因错误。 
