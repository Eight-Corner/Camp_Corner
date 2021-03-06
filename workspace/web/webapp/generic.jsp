<%--
  Created by IntelliJ IDEA.
  User: corne
  Date: 2021-03-05
  Time: 오후 5:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>

<html>
<head>
    <title>generic</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/../assets/css/main.css"/>
    <link rel="shortcut icon" type="image/x-icon" href=${pageContext.request.contextPath}/"../images/title-icon.png">
</head>
<body class="is-preload">

<c:set var = 'userStatus' value = "false"></c:set>
<c:if test="${param.type eq 'login' }">
	<c:set var = 'userStatus' value = 'true'/>
</c:if>

<!-- Header -->
<jsp:include page="${pageContext.request.contextPath}/./assets/public/header.jsp"></jsp:include>

<!-- Main -->
<div id="main">
    <div class="wrapper">
        <div class="inner">
            <span class="image fit"><img src="${pageContext.request.contextPath}/../images/pic11.jpg" alt=""/></span>
            <header>
                <h2>Phasellus pellentesque</h2>
            </header>
            <p>Phasellus sem tellus, consequat in euismod at, ultricies et eros. Duis congue faucibus erat, accumsan
                aliquet velit aliquet nec. Nullam mattis tellus in urna imperdiet mattis. Aliquam non eros ligula, vitae
                bibendum mauris. Nam suscipit nisl non leo lobortis molestie. Quisque urna velit, vestibugravida varius
                ullamcorper in, fermentum ut purus. In hac habitasse platea dictumst. Integer quis justo in dui
                sollicitudin elementum. Sed ac elit erat. Vivamus pellentesque libero purus, at posuere magna. Etiam at
                lacus molestie risus volutpat laoreet veroeros lorem ipsum. Consectetuer adipiscing elit. Nam pede erat,
                porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl. Nullam non
                wisi a sem semper eleifend. Donec mattis libero eget urna. Duis pretium velit ac mauris.</p>
            <p>Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed
                blandit. Phasellus pellentesque, ante nec iaculis dapibus, eros justo auctor lectus, a lobortis lorem
                mauris quis nunc. Praesent pellentesque facilisis elit. Class aptent taciti sociosqu ad litora torquent
                per conubia nostra, per inceptos hymenaeos. In hac habitasse platea dictumst. Nullam id ante eget dui
                vulputate aliquam. Pellentesque erat erat, tincidunt in, eleifend accumsan, malesuada eget, augue.
                Suspendisse sit amet tellus in eros bibendum condimentum. Vestibulum suscipit volutpat nulla. Maecenas
                pede nisl, elementum eu, ornare ac, malesuada at, erat. Proin gravida orci porttitor enim accumsan
                lacinia. Donec condimentum, urna non molestie semper, ligula enim ornare nibh, quis laoreet eros quam
                eget ante. Aliquam libero. Vivamus nisl nibh, iaculis vitae, viverra sit amet, ullamcorper vitae,
                turpis. Aliquam erat volutpat. Vestibulum dui sem, pulvinar sed, imperdiet nec, iaculis nec, leo. Fusce
                odio. Etiam arcu dui, faucibus eget, placerat vel, sodales eget, orci. Donec ornare neque ac sem. Mauris
                aliquet. Aliquam sem leo, vulputate sed, convallis at, ultricies quis, justo. Donec nonummy magna quis
                risus. Quisque eleifend. Phasellus tempor vehicula justo.</p>
            <p>Praesent a lacus at urna congue rutrum. Nulla enim eros, porttitor eu, tempus id, varius non, nibh. Duis
                enim nulla, luctus eu, dapibus lacinia, venenatis id, quam. Vestibulum imperdiet, magna nec eleifend
                rutrum, nunc lectus vestibulum velit, euismod lacinia quam nisl id lorem. Quisque erat. Vestibulum
                pellentesque, justo mollis pretium suscipit, justo nulla blandit libero, in blandit augue justo quis
                nisl. Fusce mattis viverra elit. Fusce quis tortor. Vestibulum suscipit volutpat nulla. Maecenas pede
                nisl, elementum eu, ornare ac, malesuada at, erat. Proin gravida orci porttitor enim accumsan lacinia.
                Donec condimentum, urna non molestie semper, ligula enim ornare nibh, quis laoreet eros quam eget ante.
                Aliquam libero. Vivamus nisl nibh, iaculis vitae, viverra sit amet, ullamcorper vitae, turpis. Aliquam
                erat volutpat. Vestibulum dui sem, pulvinar sed, imperdiet nec, iaculis nec, leo. Fusce odio. Etiam arcu
                dui, faucibus eget, placerat vel, sodales eget, orci. Donec ornare neque ac sem. Mauris aliquet. Aliquam
                sem leo, vulputate sed, convallis at, ultricies quis, justo. Donec nonummy magna quis risus. Quisque
                eleifend. Phasellus tempor vehicula justo. Aliquam lacinia metus ut elit. Suspendisse iaculis mauris nec
                lorem. Donec leo. Vivamus fermentum nibh in augue. Praesent a lacus at urna congue rutrum. Nulla enim
                eros, porttitor eu, tempus id, varius non, nibh. Duis enim nulla, luctus eu, dapibus lacinia, venenatis
                id, quam. Vestibulum imperdiet, magna nec eleifend rutrum, nunc lectus.</p>
        </div>
    </div>
</div>

<!-- Three -->
<section id="newsletter">
    <div class="wrapper style2 special">
        <div class="inner">
            <header>
                <h2>Sapien mauris blandit?</h2>
                <p>Lorem ipsum dolor mauris, consectetur id ipsum sit amet lorem sed amet consequat.</p>
            </header>
            <form method="post" action="#" class="combined">
                <input type="email" name="email" id="email" placeholder="Your email address" class="invert"/>
                <input type="submit" class="special" value="Subscribe"/>
            </form>
        </div>
    </div>
</section>

<!-- Footer -->
<jsp:include page="${pageContext.request.contextPath}/./assets/public/footer.jsp"></jsp:include>

<!-- Scripts -->
<script src="${pageContext.request.contextPath}/../assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/../assets/js/browser.min.js"></script>
<script src="${pageContext.request.contextPath}/../assets/js/jquery.dropotron.min.js"></script>
<script src="${pageContext.request.contextPath}/../assets/js/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/../assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/../assets/js/main.js"></script>

</body>
</html>