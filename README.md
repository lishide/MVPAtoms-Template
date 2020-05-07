# MVPAtoms-Template

## 出处说明
本模板参考自 [**JessYan**](https://github.com/JessYanCoding) 为其开源项目 [**MVPArms**](https://github.com/JessYanCoding/MVPArms) 打造的插件式模板修改而来，感谢大佬的开源，为我们提供学习和实践的机会。

下面的一些介绍和使用说明保留原项目 [MVPArmsTemplate](https://github.com/JessYanCoding/MVPArmsTemplate) 的说明文档，如果你有其他疑问或希望进一步学习，亦可查看原作的项目。

---


![Logo](https://raw.githubusercontent.com/JessYanCoding/MVPArms/master/image/arms_banner_v1.0.jpg)
![gif](art/MVPArmsTemplate.gif)

**A template for Android Studio to create [Atoms-mvp](https://github.com/xwc520/Atoms-mvp) Page**

**MVPAtoms-Template** 是为 [Atoms-mvp](https://github.com/xwc520/Atoms-mvp)  打造的一系列高度可配置且炒鸡炫酷的插件式模版, 可以为每个业务页面一键自动生成 **File**、**Xml**, 还可以自定义配置文件名、布局名和用于文件生成的目标包路径, 并且每一个文件都可以控制生成与否。

## 如何安装？

请将 **MVPAtoms-Template** 这个文件夹复制到 **AndroidStudio Activity** 模版的存放路径(其他模版同理), 请注意是复制整个文件夹, 不是里面的内容!

**AndroidStudio Activity** 模版存放路径 (**请注意是放在 activities 文件夹里, 不是 gradle-projects 文件夹!!!**):

* Windows : AS安装目录/plugins/android/lib/templates/activities

* Mac : /Applications/Android Studio.app/Contents/plugins/android/lib/templates/activities

**最后记得重启 AndroidStudio !**

## 如何使用?

一图胜千言, 两个红色的选项都可以打开模板, 至于快捷键自己百度, **Mac** 是 **Command + n**

![step](art/step.png)

## 注意事项

<img src="art/attention.png" width="80%" height="80%">

* 原则上在任何包下都可以点击上面的按钮生成文件, 您在哪个包下点击生成文件, **Root Package Name** 的值就是哪个包, 下面的 **Activity Package Name**, **Presenter Package Name** 的默认值 (根据 **MVPArms Demo** 的包结构) 都是根据这个 **Root Package Name** 联动的, 如上图, 以我 **MVPArms Demo** 的包结构, **Presenter** 应该是放在 **.mvp.presenter** 下的, 但是现在 **Presenter Package Name** 的值却显示的是 **.app.mvp.presenter**, 明显和预期的输出包名不一致, 所以您最好在您的根包名下点击生成文件 (如 **me.jessyan.wideeyes**), 当然这些输出包名都是可以修改, 您不一定要使用我的默认的输出包名, 因为每个人的包结构都不一样, 所以包名可配置是刚需       

* 生成 **Activity** 以及 **Fragment** 前, 必须填写 **Layout Name**, 您可以自行生成布局后, 再将布局名填写到 **Activity/Fragment Layout Name**, 也可以使用本模版自动生成布局, 自动生成布局请将 **Generate Activity/Fragment Layout** 勾选上 (默认勾选), 如果您已经自行生成了布局, 不想使用自动生成布局, 那请不要勾选 (一定要注意, 因为这个是默认勾选的)




