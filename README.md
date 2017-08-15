# BBIC
My first SSH Project About Manager System

xxx管理系统 采用spring+springmvc+hibernate的方式，并未采用maven搭建，下一版本会考虑使用，里面使用ajax动态跳转异步刷新局部页面。


1，整个网页使用的是adminLTE的基于bootstrap的模板进行二次开发，相比easyUI要更加美观，但是只支持ie8以上浏览器，推荐使用chrome进行浏览。

2，采用了springmvc++spring+hibernate作为项目结构,springmvc采用注解的方式，相对于xml加快开发效率，而hibernate的映射文件仍采用xml，便于日后维护。
   项目运行后会自动生成数据库和表格，无需手动创建。
   
3，整体toast使用了第三方的美化插件。

4，使用了bootstrap-table进行绘制表格，整体使用json作为传输数据的格式.

5，添加了echarts作为绘制图表的第三方库，包含柱状图，饼图，动态图，地图等等，具体自行百度。

6，PoiExcel为读取excel的工具类，测试类为com.bbic.test下的testread,只需要输入excel地址即可测试。如需调整为自己的excel输入格式，只需修改com.bbic.utils下的ListConvertMap下的emp数组对于你excel中相应的列名即可。

具体可以关注
           个人微信公众号：HlmkTech.
           个人网站：lmk1010@github.io
