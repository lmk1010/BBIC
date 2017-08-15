<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>欢迎登陆蚌埠市邮政积分管理系统</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
        <script>setInterval("linkweb.innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
</script>
<script src="../../BBIC/js/jquery.min.js" type="text/javascript"></script>
<script src="../../BBIC/js/jquery.cookie.js" type="text/javascript"></script>
<script type="text/javascript">

    $(document).ready(function () { 
        if ($.cookie("rmbUser") == "true") {
        console.log("success");
        $("#loginkeeping").attr("checked", true);
        $("#username").val($.cookie("username"));
        $("#password").val($.cookie("password"));
        }
    });

    //记住用户名密码
    function Save() {
        if ($("#loginkeeping").attr("checked")) {
            var str_username = $("#username").val();
            var str_password = $("#password").val();
            $.cookie("rmbUser", "true", { expires: 7 }); //存储一个带7天期限的cookie
            $.cookie("username", str_username, { expires: 7 });
            $.cookie("password", str_password, { expires: 7 });
        }
        else {
            $.cookie("rmbUser", "false", { expire: -1 });
            $.cookie("username", "", { expires: -1 });
            $.cookie("password", "", { expires: -1 });
        }
    };

    
    function test(){ 
    	var message = IEVersion();
    	alert(message);
    	if (message=="chrome"){
    		alert("您的浏览器版本符合要求!");

    	}
    	else if(message=="-1"){
    		window.location.href='http://localhost:8331/BBIC/CheckIE.jsp';
    	}
    	
    	$("#ie").click(function(){
    		var message = IEVersion();
        	if (message=="chrome"){
        		alert("您的浏览器版本符合要求!");

        	}
        	else if(message=="-1"){
        		window.location.href='http://localhost:8331/BBIC/CheckIE.jsp';
        	}
    		
    	});
    }
    
    function IEVersion()  
    {  //Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko
       var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串  
       var isChorme = userAgent.indexOf("Chrome") > -1;
       var isIE = userAgent.indexOf("MSIE") > -1; //判断是否IE浏览器  
       var isIE11 = userAgent.indexOf("Windows NT 10.0") > -1 && userAgent.indexOf("rv") > -1;
       var isEdge = userAgent.indexOf("Windows NT 10.0") > -1 && userAgent.indexOf("Edge") > -1; //判断是否IE的Edge浏览器  
       if(isIE)  
       {  
            var reIE = new RegExp("MSIE (\\d+\\.\\d+);");  
            reIE.test(userAgent);  
            var fIEVersion = parseFloat(RegExp["$1"]);  
            if(fIEVersion == 7)  
            { return "IE7";}  
            else if(fIEVersion == 8)  
            { return "IE8";}  
            else if(fIEVersion == 9)  
            { return "IE9";}  
            else if(fIEVersion == 10)  
            { return "IE10";}  
            else if(fIEVersion == 11)  
            { return "IE11";}  
            else  
            { return "0"}//IE版本过低  
       }  
 else if(isEdge)  
 {  
     return "Edge";  
 }  
 else if(isChorme){
	 return "Chrome";
 }
 else if(isIE11){
	 var point = userAgent.indexOf("rv");
	 var level = userAgent.substring(point+2,point+5);
	 return "IE"+level;
 }
       else  
       {  
           return "-1";//非IE  
       }  
    }  
    
</script>
    </head>
    <body>
        <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
                <a href="">
                    <strong>&laquo; 如有问题请拨打: </strong>telephone:0552-6023331
                </a>
                <span class="right">
                    <a href="www.baidu.com">
                        <strong><div id="linkweb"></div></strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
            <header>
                <h1>安徽省蚌埠市邮政分公司市场积分管理系统</h1>
				<nav class="codrops-demos">
				</nav>
            </header>
            <section>				
                <div id="container_demo" >
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="/BBIC/login.do" autocomplete="on" method="post"> 
                                <h1>登 陆</h1> 
                                <p> ${message}
                                    <label for="username" class="uname" data-icon="u" > 你的工号或者用户名 </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="工号例如0110xxxx"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> 你的密码 </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="密码" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">记住密码</label>
								</p>
                                <p class="login button"> 
                                    <input id="checkie" type="submit" value="登 陆" onclick="Save()" /> 
								</p>
                                <p class="change_link">
                                    <button type="button" onclick="test()">测试IE</button>
								</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>

            <div>
                <span class="right">
                    <a href="www.baidu.com">
                        <strong>蚌埠邮政信息中心 2017-2020 版本1.0.1 联系电话0110-1111221</strong>
                    </a>
                </span>
            </div>
        </div>
    </body>
</html>