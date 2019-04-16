<%--
  Created by IntelliJ IDEA.
  User: daniel
  Date: 11/04/19
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add comment</title>
</head>
<body>
<form method="post" action="/comment/add?userId=1&tweetId=1" modelAttribute="comment">
    <div class="form-group" style="width: 20%">
        <label for="commentTextArea">Add comment</label>
        <textarea class="form-control" name="commentText" id="commentTextArea" rows="8"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>


<%--<div id='form'>--%>
    <%--<div class="row">--%>
        <%--<div class="col-md-12">--%>

            <%--<form method="POST" action="/comment/add" modelAttribute="comment">--%>

                <%--&lt;%&ndash;<div id="comment-name" class="form-row">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<input type = "text" placeholder = "Name (required)" name = "commentText"  id = "name" >&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div id="comment-email" class="form-row">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<input type = "text" placeholder = "Mail (will not be published) (required)" name = "demail"  id = "email">&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div id="comment-url" class="form-row">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<input type = "text" placeholder = "Website" name = "url"  id = "url" >&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--<div id="comment-message" class="form-row">--%>
                    <%--<textarea name = "comment" placeholder = "commentText" id = "comment" ></textarea>--%>
                <%--</div>--%>
                <%--<a href="#"><input type="submit" name="dsubmit" id="commentSubmit" value="Submit Comment"></a>--%>
                    <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
                <%--<p1><b>Notify me when new comments are added.</b></p1>--%>
            <%--</form>--%>

</body>
</html>
