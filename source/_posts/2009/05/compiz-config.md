---
layout: post
title: compiz设置
date: 2009-05-26
tags: ["compiz","linux","快捷键","特效","透明"]
---

Advanced Desktop Effects Settings设置：
Desktop Size--设置桌面个数。
Commands--设置gnome下的全局快捷键。

<!--more-->

Opacity Setting--设置不透明度。
展开"Window opacities"，点击"Add"按钮。设置菜单透明：在打开的对话框中输入"Tooltip ' Menu ' PopupMenu ' DropdownMenu"，并设置透明值为 85。你可根据自己的需要酌情修改该值。设置标题透明： Utility ' ModalDialog

<辅助功能>
Enabale Zoom Desktop --手动放大/缩小 = Super + 滚轮
opacify --移动到窗口后透明度改变
<桌面>
Desktop Cube --立方体特效设置
Desktop Plane --平面虚拟桌面切换特效设置
expo --设置 "按键组合"－－"Expo button",把鼠标光标移到画面左上角，就有类似Mac OS X的expose特效
Rotate cube --旋转立方体
<特效>
Blur Windows    --窗口模糊设置
Wobbly Windows --窗口凝胶效果
动画                --最大/小化，开启的特效
<窗口管理>
Shift Switcher -- 按键，实现Cover或Flip特效

Ubuntu 8.04下设置Compiz Fusion
点击 系统->首选项->Advanced Desktop Effects Settings 打开CompizConfig设置管理器(即CCSM)

1、3D桌面设置：点击General options，把Desktop Size选项卡里的"Horizontal Virtual Size（水平虚拟大小）"设置为4，"Vertical Virtual Size（垂直虚拟大小）"设置为1，"Number of Desktop（桌面数）"设置为4（论坛中有很多人提到这一点做不到，我的体会是这一点和上一点，默认设置是1，不用修改）。
后退，勾选 "Desktop Cube（桌面立方体）"、"Rotate Cube（旋转立方体）"、"立方体倒映" 、"Cube Caps "几项，按住Ctrl+alt，再按住鼠标左键移动，3D桌面效果出现。（"立方体倒映" 、"Cube Caps "并不是必须的，是为了增加效果）

2、立方体变透明：在Cube Gears（立方体齿轮）（在特效类别中）前面打钩，然后点击Desktop Cube(桌面立方体)，选择Transparent Cube，将Opacity During Rotation降到50左右，再将3D桌面调出来，立方体成半透明的了，并且里面有三个齿轮在滚动！

3、调节立方体的大小等：点击Rotate Cube（旋转立方体）（在桌面类别中） -> 一般，把Zoom(缩放)调整到1.0，把Speed(速度调整)到0.7，再按Ctrl+alt+向左/向右键，可以看到立方体运动时的慢动作，并且立方体小了很多。

4、自动把打开的窗口排列到屏幕：勾选Scale（在窗口管理类别中） -> Bindings 点击Initiate Window Picker For All Window 项目右边的选择按钮，用鼠标点击弹出窗口的左下角，然后"确定"，按钮变为"Bottom Left"。将鼠标移动到桌面的左下角，窗口在自动排列在屏幕上（类似Mac os X的Expose特效）。

5、自动把桌面排列在屏幕上：在Expo（在桌面类别中）前面打钩，点击Expo，点击"按键组合"页框，点击Expo Edgo项目右边的选项按钮，用鼠标点击弹出窗口的右上角，然后"确定"，按钮变为"Top Right"。将鼠标移动到桌面的右上角，4个桌面整齐排列在一个3D空间内（同 super+E 效果），可以将窗口从一个桌面拖动到另一个桌面，甚至放在两个桌面中间！ 再将鼠标移动到桌面的右上角，恢复正常桌面。

6、添加立方体的背景：点击Desktop Cube（桌面立方体）（在桌面类别中），进入其属性，在Appearance选项中，点击Skydome,选中Skydome，并在Skydome image中添加图片（即3D桌面旋转时的天空背景图片）；选中Animate Skydome，可以使天空图片随立方体桌面移动。

7、自动最小化桌面：点击General options，一般选项中 Show Desktop，点右边选择钮（默认显示为"无"），用鼠标点击弹出窗口的左下角，然后"确定"，按钮变为"BottomLeft"。将鼠标移动到桌面的左下角，桌面上的窗口则自动最小化。

8、预览窗口内容：勾选Windows Previews（在额外功能类别中），这样将鼠标移动到任务栏会出现预览窗口。

9、在屏幕上绘制火焰：勾选"在屏幕上绘制火焰"（在特效类别中），直接按住 Super+shift键，然后用鼠标左键在屏幕写了。火焰的默认颜色是红色，可以直接进入"在屏幕上绘制火焰"设置项里，调整火焰颜色，或者干脆"随机 "，取消火焰的时候同时按Super+Shift+C。

10、水纹特效：够选Water Effect（在特效类别中）-> （里面的说明很简单）

11、窗口等移动时出现半透明：选择Move Window（移动窗口）（在未分类类别中），将其设置界面中的Opacity（不透明度）设置到60左右，这样你移动窗口的时候就会有半透明的效果。同样在主界面中选择General Options->Opacity Settings，点击新建，在OpacityWindows 中输入Dock（任务栏、系统栏或系统托盘），OpacityWIndow Values输入数值80，再以同样的方式新建DropDownMenu（下拉菜单）和PopupMenu(即弹出菜单)，数值都为80。输入完毕之后，不管是什么菜单，现在都是以半透明的方式显示了，包括右键菜单。

12、窗口开启、关闭、最小化时动画效果：勾选动画（Animations）（在特效类别中）-> （里面有许多效果，自己慢慢选）

13、windows vista中的Flip3D特效：勾选Shift Switcher（在窗口管理类别中） -> 组合按键 -> Initial(All workspace)下，勾选Bottomleft。鼠标移动到桌面的左下角，出现iPhone的Cover Flow特效。可以用鼠标滚轮和方向键切换桌面。回到Shift Switcher，点击外观，在Switcher mode中选择Flip。鼠标移动到桌面的左下角，出现windows vista中的Flip3D特效。

14、旋转立方体的上下两面加图片：Desktop Cube（桌面立方体）（在桌面类别中）-> Appearance -> 把Cube Caps里面的钩去掉，再到Cube Caps -> 外观 把Top image files和Bottom image files里的默认图片删除，再把需要的图片"新建"进去。

15、把旋转立方体的上、下面作为桌面：Rotate Cube（旋转立方体）（在桌面类别中） -> 一般，将Snap To Top Face和Snap To Bottom Face 选中，具体放置桌面时，窗口处于最小化状态效果最好。

<span style="color: #800000;">+++++++++++++++++++++++++</span>

先简要说一下各插件的作用：

Animation Effects
使得窗口的打开、关闭、聚焦等产生诸如神灯、梦幻、旋转、波浪、缩放等动画效果。

Benchmark：测试compiz下的3D加速情况。调用方法：super+F12。

Blur：使窗口边框产生磨砂玻璃的模糊特效，默认开启且质量为fast。

Brightness and Saturation：设置窗口的亮度和色彩饱和度，默认启用。调用方法：按住ctrl并滚动鼠标滚轮调节色彩饱和度，按住shift并滚动鼠标滚轮调节亮度。

Crash handler：XGL/compiz崩溃时可以自动重启XGL。

Desktop Cube：设置3D立方体的背景、顶部和底部，速度等，默认开启。

Window Decoration：窗口的边框，配合透明度、饱和度和亮度，默认开启。

Fading Windows：给窗口和其他 GUI 部件提供淡入淡出效果，默认开启。

Minimize Effect：对窗口最大化/最小化过程进行渲染，默认开启。

Move Window：移动窗口，可以调整移动时的透明度，默认开启。调用方法：按住alt和鼠标左键，出现一个十字架，或者用组合键alt+F7。

Negtive：使整个桌面或者当前窗口反色。调用方法：super+m，super+n。

Place Windows：打开窗口时放到合适位置，默认开启。

Dektop Plane
将所有窗口放在一个平面上。不是很好看。

Put：将窗口放到当前工作区的上左、上中、上右、左、正中、右、左下、下中和右下，以及放到其他工作区。自己可以定义组合键。

Implements reflections on decorations：将一张png格式的图片作为窗口边框的背景。不建议开启，与blur插件有点小冲突，特别是你有上面板的话。

Resize Window：改变窗口的大小，默认开启。调用方法：alt+鼠标中键（即按下滚轮）或者alt+F8。

Rotate Cube：旋转3D桌面。

Scale：像mac一样的平铺窗口，默认开启。调用方法：鼠标移到屏幕四角（严格讲，右下角不是该插件的作用，而是Shows the desktop插件的）或者按F8，F10，F11，F12。

Screenshot：抓鼠标选定的区域的图。调用方法：super+鼠标左键（按住并选定一块区域）。

Shows the desktop：显示桌面，其实是将窗口向屏幕的上下或者其他方向移动，默认开启。调用方法：按F7，或者鼠标移到屏幕右下角。

Set Window Attribs by various criteria：单独设置某些桌面元素如窗口、菜单、面板等的属性（如透明度、色彩饱和度、亮度等）。

Application Switcher：切换窗口实现胶片预览效果。除了当前窗口其他都半透明。默认开启。调用方法：alt+tab等，可自定义。

Window focus leaves a trial：依照窗口未被使用的时间改变亮度、色彩饱和度和不透明度。默认开启。

Water Effect：使屏幕产生雨点效果，水波纹效果以及窗口标题栏的水波效果。调用方法：shift+F9，shift+F8，可自定义。

Wobbly Windows：使窗口等产生凝胶效果（象橡皮糖一样），默认开启。

Zoom Desktop：放大屏幕，默认开启。调用方法：super+鼠标滚轮或super+鼠标右键。

下面说一下各插件的设置。一般情况下，默认设置就可以了，有些插件如果有特殊要求可以自己修改参数。

先把几个通用的选项说一下。

Keyboard：键盘组合键的设置，一般是ctrl, alt, super(win), shift+其他键。可以自定义。
Mouse：鼠标和键盘的组合键。button number就是鼠标上的按键。常用的有 1: 鼠标左键，2：鼠标中键（即按下滚轮），3：鼠标右键，4：滚轮向上，5：滚轮向下。
Screen Edges：鼠标移动到屏幕的某个角落并执行特定操作。
如果有可以更换或添加图片或者图标的框，一定要把图片转换成png格式，并完整填入图片所在地址。

General Options
一般设置。Choices中除了TextFilter可以改成best以使窗口锯齿更平滑外，其他保持默认即可。Commands中可自定义用组合键打开的程序或者命令，和Keyboard联合使用。
比如，你在Commands的Command line 0中填入 gnome-system-monitor，然后在Keyboard找到Run Command 0，把Control、Alt 钩上，并在Key Name中填入Delete；你就可以用ctrl+alt+delete组合来打开系统监视器了。

Animation Effects
可自己选择各种效果以及持续时间、波的宽度、波的幅度。grid resolution 越高，分辨率越大，资源占用越多。该插件调用时比较耗资源。

Benchmark
保持默认即可。

Blur
模糊质量可调成fast, best和nonfragment。nonfragment可以自己调节模糊程度，与Numeric Values配合使用。建议只用fast，其他的并不是很好。感觉这个插件非常耗资源，而且是一直都在消耗。关闭后benchmark可以增加100多，而且效果还不如换一个不是非常透明的边框主题来的好，有不少缺陷。大可把他关闭。

Brightness and Saturation
保持默认。可以更改调节亮度和饱和度的步长。

Crash handler
保持默认。

Desktop Cube
可以钩上Scale image on top、Skydome、Animate Skydome、Scale image on bottom使立方体更漂亮。顶部、底部的图片可以更换。

Window Decoration
保持默认。

Fading Windows
保持默认。可以把Visual Bell 和 Urgent钩上，在某些情况下如系统出问题，msn对话中会使屏幕反复变暗。可在Urgent Count修改变暗的次数。

Minimize Effect
可以把Window Types中的Unknown 钩上，使右键菜单和应用程序菜单有淡入淡出效果。

Move Window
保持默认。

Negtive
保持默认。

Place Windows
保持默认。

Desktop Plane
类似rotate cube的一个插件，不过似乎效果很差，不建议使用。（跟rotate也有一点冲突）

Put
可以自己照着例子修改一下组合键。

Implements reflections on decorations
填入一个png图片的地址即可。不建议使用。

Resize Window
保持默认即可。可以更改resize的模式，有normal、stretch、outline、filled outline。透明度也可以改，我是把两个都设成75。

Rotate Cube
保持默认即可。可自定义选装的组合键。

Scale
保持默认。可更改平铺的算法，normal, enhanced, organic。建议将Initiate Window Picker for Current App键的F11改成F6，以免和全屏快捷键冲突。

Screenshot
保持默认。可以修改图片的保存目录。

Shows the desktop
保持默认。可以修改窗口的隐藏方向，在window direction。0是上，1是下，2是左，3是右，4是上下，5是左右。

Set Window Attribs by various criteria
我只会调节透明度、饱和度和亮度。知道其他设置的朋友可否教我一下 Very Happy 。格式是
代码:
w:窗口类型名:整数

比如：
代码:
w:Dock:60
w:Unknown:75
w:Splash:75
等等。

Application Switcher
一般保持默认。如果觉得组合键不方便，可以自己改。建议钩上 Auto Rotate和Temp UnMinimize。

Window focus leaves a trial
可以根据需要调节最低透明度、饱和度、亮度。

Water Effect
可以把Title wave on System Bell钩上，最典型的效果就是在终端按Backspace，就会在标题栏显示水波纹。另外，可以把initiate 里面的键设成super+w，按住可以看到鼠标周围有水波纹。该插件被调用时非常耗资源。

Wobbly Windows
该插件比较耗资源。如果有人不喜欢，可以不用把这个插件钩上。可以修改各种你喜欢的窗口类型，使其拥有凝胶效果，一般默认的即可。不过有些朋友讨厌菜单也这样的，可以把Map Window Types里的Unknown去掉前面的钩。可以任意修改各种窗口的弹度系数（Spring K）和摩擦系数（Friction）。另外可以把Grid Resolution（栅格分辨率）调到60，我调到60以上会有部分窗口出现褶皱；Minimun Grid Size可以调到4（越小越精细）。还可以把Keyboard中的Shiver（颤动）设成super+s，按住这两个键，当前窗口会颤动（非常耗资源）。

Zoom Desktop
建议把Filter Linear 钩上，可使放大时比较平滑。其他保持默认。该插件调用时比较耗资源。

<span style="color: #800000;">+++++++++++++++++++++++++++</span>

compiz的一些快捷键

* 切换窗口 = Alt + Tab
* 铺开显示全部窗口 = 指针移到屏幕右上角作为开关；单击窗口使之缩放到前台。
* 切换立方体桌面 = Ctrl + Alt + 左/右箭头
* 切换立方体桌面 + 活动窗口跟随 = Ctrl + Shift + Alt + 左/右箭头
* 手动旋转立方体 = Ctrl + Alt + 左键单击并拖拽桌面空白处
* 窗口透明/不透明 = possible with the "transset" utility or Alt + 滚轮
* 放大一次 = 超级键 + 右击
* 手动放大 = 超级键 + 滚轮向上
* 手动缩小 = 超级键 + 滚轮向下
* 移动窗口 = Alt + 左键单击
* 移动窗口时贴住边框 = 左键开始拖动后再 Ctrl + Alt
* 调整窗口大小 = Alt + 中击
* Bring up the window below the top window = Alt + 右键单击
* 动态效果减速 = Shift + F10
* 水纹 = 按住 Ctrl+超级键
* 雨点 = Shift + F9
* 桌面展开＝ Ctrl + Alt + 下箭头，然后按住 Ctrl + Alt 和左/右箭头选择桌面