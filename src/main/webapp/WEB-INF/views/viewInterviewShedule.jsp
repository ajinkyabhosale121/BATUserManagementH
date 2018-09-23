<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="true"%>
<%@ page import="com.user.management.model.User"%>
<%@ page import="com.user.management.model.RecruitmentRequests"%>
<%@ page import="com.user.management.model.InterviewShedules"%>
<%@ page import="com.user.management.model.ResultStatus"%>
<%@ page import="com.user.management.model.Qualification"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">

<head>



<c:url value="/resources/css/font-face.css" var="fontfacecsscss" />

<c:url
	value="/resources/vendor/font-awesome-4.7/css/font-awesome.min.css"
	var="fontawesomemincss" />

<c:url
	value="/resources/vendor/font-awesome-5/css/fontawesome-all.min.css"
	var="fontawesomeallmincss" />

<c:url
	value="/resources/vendor/mdi-font/css/material-design-iconic-font.min.css"
	var="materialdesigniconicfontmincss" />

<c:url value="/resources/vendor/bootstrap-4.1/bootstrap.min.css"
	var="bootstrapmincss" />

<c:url value="/resources/vendor/animsition/animsition.min.css"
	var="animsitionmincss" />

<c:url
	value="/resources/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	var="bootstrapprogressbar33css" />

<c:url value="/resources/vendor/wow/animate.css" var="animatecsscss" />

<c:url value="/resources/vendor/css-hamburgers/hamburgers.min.css"
	var="hamburgersmincss" />

<c:url value="/resources/vendor/slick/slick.css" var="slickcsscss" />

<c:url value="/resources/vendor/select2/select2.min.css"
	var="select2mincss" />

<c:url value="/resources/vendor/perfect-scrollbar/perfect-scrollbar.css"
	var="perfectscrollbarcsscss" />

<c:url value="/resources/css/theme.css" var="themecsscss" />


<c:url value="/resources/vendor/jquery-3.2.1.min.js" var="jquery32js" />

<c:url value="/resources/vendor/bootstrap-4.1/popper.min.js"
	var="popperminjs" />

<c:url value="/resources/vendor/bootstrap-4.1/bootstrap.min.js"
	var="bootstrapminjs" />

<c:url value="/resources/vendor/slick/slick.min.js" var="slickminjs" />

<c:url value="/resources/vendor/wow/wow.min.js" var="wowminjs" />

<c:url value="/resources/vendor/animsition/animsition.min.js"
	var="animsitionminjs" />

<c:url
	value="/resources/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"
	var="bootstrapprogressbarminjs" />

<c:url value="/resources/vendor/counter-up/jquery.waypoints.min.js"
	var="jquerywaypointsjs" />

<c:url value="/resources/vendor/counter-up/jquery.counterup.min.js"
	var="jquerycounterupjs" />

<c:url value="/resources/vendor/circle-progress/circle-progress.min.js"
	var="circleprogressminjs" />

<c:url value="/resources/vendor/perfect-scrollbar/perfect-scrollbar.js"
	var="perfectscrollbarjsjs" />

<c:url value="/resources/vendor/chartjs/Chart.bundle.min.js"
	var="Chartbundlejs" />

<c:url value="/resources/vendor/select2/select2.min.js"
	var="select2minjs" />

<c:url value="/resources/js/main.js" var="mainjsjs" />

<c:url value="/resources/js/trigger.js" var="triggerjsjs" />


<c:url value="/resources/images/icon/logo.png" var="logopngpng" />

<c:url value="/resources/images/icon/avatar-06.jpg" var="avatar06jpgjpg" />

<c:url value="/resources/images/icon/avatar-04.jpg" var="avatar04jpgjpg" />

<c:url value="/resources/images/icon/avatar-05.jpg" var="avatar05jpgjpg" />

<c:url value="/resources/images/icon/avatar-01.jpg" var="avatar01jpgjpg" />

<c:url value="/resources/images/icon/avatar-10.jpg" var="avatar10jpgjpg" />

<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>View Interview Shedules</title>

<!-- Fontfaces CSS-->
<link href="${fontfacecsscss}" rel="stylesheet" media="all">
<link href="${fontawesomemincss}" rel="stylesheet" media="all">
<link href="${fontawesomeallmincss}" rel="stylesheet" media="all">
<link href="${materialdesigniconicfontmincss}" rel="stylesheet"
	media="all">

<!-- Bootstrap CSS-->
<link href="${bootstrapmincss}" rel="stylesheet" media="all">

<!-- Vendor CSS-->
<link href="${animsitionmincss}" rel="stylesheet" media="all">
<link href="${bootstrapprogressbar33css}" rel="stylesheet" media="all">
<link href="${animatecsscss}" rel="stylesheet" media="all">
<link href="${hamburgersmincss}" rel="stylesheet" media="all">
<link href="${slickcsscss}" rel="stylesheet" media="all">
<link href="${select2mincss}" rel="stylesheet" media="all">
<link href="${perfectscrollbarcsscss}" rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="${themecsscss}" rel="stylesheet" media="all">

<% //notifi-dropdown
        pageContext.setAttribute("message", "");
        pageContext.setAttribute("noticount", 0);
        
        String failed = (String)session.getAttribute("failed");
        String message = (String)session.getAttribute("message");
        
        if (failed != null)
        {
            pageContext.setAttribute("noticount", 1);
            pageContext.setAttribute("message", message);
        }
        
        String success = (String)session.getAttribute("success");
        if (success != null)
        {
            pageContext.setAttribute("noticount", 1);
            pageContext.setAttribute("message", message);
        }
    %>


</head>

<body class="animsition">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<header class="header-mobile d-block d-lg-none">
			<div class="header-mobile__bar">
				<div class="container-fluid">
					<div class="header-mobile-inner">
						<a class="logo" href="<c:url value='/index' />"> <img
							src="${logopngpng}" alt="BATUserManagement" />
						</a>
						<button class="hamburger hamburger--slider" type="button">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<nav class="navbar-mobile">
				<div class="container-fluid">
					<ul class="navbar-mobile__list list-unstyled">
						<li class="has-sub"></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- END HEADER MOBILE-->

		<!-- MENU SIDEBAR-->
		<aside class="menu-sidebar d-none d-lg-block">
			<div class="logo">
				<a href="#"> <img src="${logopngpng}" alt="Cool Admin" />
				</a>
			</div>
			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list">
						<li><a class="js-arrow" href="<c:url value='/index' />">
								<i class="fas fa-tachometer-alt"></i>Dashboard
						</a></li>
						<li><a href="<c:url value='/viewusers' />"> <i
								class="fas fa-chart-bar"></i>Users
						</a></li>
						<li><a href="<c:url value='/viewrequests' />"> <i
								class="fas fa-table"></i>Recruitment Requests
						</a></li>
						<li class="active"><a
							href="<c:url value='/viewInterviewShedule' />"> <i
								class="far fa-check-square"></i>Interview Shedules
						</a></li>
						<li><a href="<c:url value='/viewSelectedCandidates' />">
								<i class="fas fa-calendar-alt"></i>Selected Candidates
						</a></li>

					</ul>
				</nav>
			</div>
		</aside>
		<!-- END MENU SIDEBAR-->

		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<!-- HEADER DESKTOP-->
			<header class="header-desktop">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="header-wrap">
							<form class="form-header" action="" method="POST"></form>
							<div class="header-button">
								<div class="noti-wrap">
									<div class="noti__item js-item-menu">
										<i class="zmdi zmdi-notifications"></i> <span class="quantity">${noticount}</span>
										<div class="notifi-dropdown js-dropdown">
											<div class="notifi__title">
												<p>You have ${noticount} Notifications</p>
											</div>

											<div class="notifi__item">
												<div class="bg-c3 img-cir img-40">
													<i class="zmdi zmdi-notifications"></i>
												</div>
												<div class="content">
													<p>${message}</p>
													<span class="date"></span>
												</div>
											</div>
											<div class="notifi__footer">
												<a href="#"></a>
											</div>
										</div>
									</div>
								</div>
								<div class="account-wrap">
									<div class="account-item clearfix js-item-menu">
										<div class="image">
											<img src="${avatar10jpgjpg}" alt="${curruser.getName()}" />
										</div>
										<div class="content">
											<a class="js-acc-btn" style="color: #4272d7;" href="#">${curruser.getName()}(${userrole})</a>
										</div>
										<div class="account-dropdown js-dropdown">
											<div class="info clearfix">
												<div class="image">
													<a href="#"> <img src="${avatar10jpgjpg}"
														alt="${curruser.getName()}" />
													</a>
												</div>
												<div class="content">
													<h5 class="name">
														<a style="color: #4272d7;" href="#">${curruser.getName()}(${userrole})</a>
													</h5>
													<span style="color: #00ad5f;" class="email">${curruser.getEmailID()}</span>
												</div>
											</div>
											<div class="account-dropdown__body">
												<div class="account-dropdown__item">
													<a href="<c:url value='/viewusers' />"> <i
														class="zmdi zmdi-account"></i>Account
													</a>
												</div>
												<div class="account-dropdown__item">
													<a href="<c:url value='/viewusers' />"> <i
														class="zmdi zmdi-settings"></i>Setting
													</a>
												</div>
											</div>
											<div class="account-dropdown__footer">
												<a href="<c:url value='/logout' />"> <i
													class="zmdi zmdi-power"></i>Logout
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- HEADER DESKTOP-->

			<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="row m-t-30">
						<div class="col-md-12">

							<form name="SheduleReg" action="editInterviewShedule"
								method="get" id="SheduleReg">
								<!-- DATA TABLE-->
								<div class="table-responsive m-b-40">
									<table class="table table-borderless table-data3">
										<thead>
											<tr>
												<th style="width: 5%;"></th>
												<th style="width: 20%;">Language</th>
												<th style="width: 20%;">Years Of Experience</th>
												<th style="width: 20%;">Job Desc</th>
												<th style="width: 20%;">Vacancies</th>
												<th style="width: 20%;">Interviewer</th>
												<th style="width: 20%;">Candidate Name</th>
												<th style="width: 20%;">Candidate Number</th>
												<th style="width: 40%;">Candidate EmailID</th>
												<th style="width: 30%;">Candidate Address</th>
												<th style="width: 20%;">Candidate Qualification</th>
												<th style="width: 20%;">Interview Datetime</th>
												<th style="width: 15%;">Result Status</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${shedules}" var="shedule">
												<tr class="shetr">
													<%
				
				ArrayList<User> users = null;
				ArrayList<RecruitmentRequests> requests = null;
				ArrayList<ResultStatus> rStatuses = null;
				ArrayList<Qualification> qualifications = null;
				
				users = (ArrayList<User>) request.getAttribute("users");
				requests = (ArrayList<RecruitmentRequests>) request.getAttribute("requests");
				rStatuses = (ArrayList<ResultStatus>) request.getAttribute("rStatuses");
				qualifications = (ArrayList<Qualification>) request.getAttribute("qualifications");
				InterviewShedules shedule = (InterviewShedules) pageContext.getAttribute("shedule");
				
				String strUsername = null;
				String strResultStatus = null;
				String qualification = null;
				RecruitmentRequests rrrequest = null;
				
				if (users == null || requests == null || shedule == null || rStatuses == null)
				{
					System.out.println("Users or Requests are not valid!");
				}
				else
				{
					for (Qualification qua:qualifications)
					{
						if(shedule.getQualification_Id() == qua.getId())
							qualification = qua.getQualification();
					}
					
					for (User user:users)
					{
						if (user.getUserid() == shedule.getUser_id())
							strUsername = user.getName();
					}
					
					for (ResultStatus rs:rStatuses)
					{
						if (rs.getId() == shedule.getResult_Status_Id())
						{
							strResultStatus = rs.getStatus();
						}
					}
					
					for (RecruitmentRequests rrequest:requests)
					{
						if (rrequest.getReqid() == shedule.getRequest_id())
							rrrequest = rrequest;
					}
					
					boolean bPending = false, bSelected = false;
					if (strResultStatus.equalsIgnoreCase("Rejected"))
					{
						bPending = false;
						bSelected = false;
					}
					else if (strResultStatus.equalsIgnoreCase("Selected"))
                    {
                        bPending = false;
                        bSelected = true;
                    }
					else
                    {
                        bPending = true;
                        bSelected = false;
                    }
					
					pageContext.setAttribute("Username", strUsername);
					pageContext.setAttribute("rrRequest", rrrequest);
					pageContext.setAttribute("ResultStatus", strResultStatus);
					pageContext.setAttribute("Qualification", qualification);
					pageContext.setAttribute("bPending", bPending);
					pageContext.setAttribute("bSelected", bSelected);
				}
				
				%>

													<td class="shetd" style="width: 5%;">
														<div>
															<input type="checkbox" class="fancy-check chkbox"
																name="chkbox" id="chkbox${shedule.getSheid()}"
																value="${shedule.getSheid()}" /> <label
																for="chkbox${shedule.getSheid()}"><span></span>
															</label>
														</div>
													</td>
													<td class="shetd" style="width: 20%;">${rrRequest.getLanguage()}</td>
													<td class="shetd" style="width: 20%;">${rrRequest.getYears_Of_Experience()}</td>
													<td class="shetd" style="width: 20%;">${rrRequest.getJob_Desc()}</td>
													<td class="shetd" style="width: 20%;">${rrRequest.getVacancies()}</td>
													<td class="shetd" style="width: 20%;">${Username}</td>
													<td class="shetd" style="width: 20%;">${shedule.getName()}</td>
													<td class="shetd" style="width: 20%;">${shedule.getNumber()}</td>
													<td class="shetd" style="width: 40%;">${shedule.getEmailID()}</td>
													<td class="shetd" style="width: 30%;">${shedule.getAddress()}</td>
													<td class="shetd" style="width: 20%;">${Qualification}</td>
													<td class="shetd" style="width: 20%;"><fmt:formatDate
															pattern="dd-MM-yyyy hh:mm a"
															value="${shedule.getInterview_datetime()}" /></td>

													<c:choose>
														<c:when test="${bPending == false && bSelected == false}">
															<td class="shetd" class="denied" style="width: 15%;">${ResultStatus}</td>
														</c:when>
														<c:when test="${bPending == true && bSelected == false}">
															<td class="shetd" style="width: 15%; color: #4272d7;">${ResultStatus}</td>
														</c:when>
														<c:otherwise>
															<td class="shetd" class="process" style="width: 15%;">${ResultStatus}</td>
														</c:otherwise>
													</c:choose>


												</tr>
											</c:forEach>
										</tbody>
									</table>

								</div>
								<!-- END DATA TABLE-->

								<input type="submit" value="Add" name="mysub"
									class="btn btn-success"> <input type="submit"
									value="Edit" name="mysub" class="btn btn-primary"> <input
									type="submit" value="Delete" name="mysub"
									class="btn btn-danger">

							</form>



						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Jquery JS-->
	<script src="${jquery32js}"></script>
	<!-- Bootstrap JS-->
	<script src="${popperminjs}"></script>
	<script src="${bootstrapminjs}"></script>
	<!-- Vendor JS       -->
	<script src="${slickminjs}">
    </script>
	<script src="${wowminjs}"></script>
	<script src="${animsitionminjs}"></script>
	<script src="${bootstrapprogressbarminjs}">
    </script>
	<script src="${jquerywaypointsjs}"></script>
	<script src="${jquerycounterupjs}">
    </script>
	<script src="${circleprogressminjs}"></script>
	<script src="${perfectscrollbarjsjs}"></script>
	<script src="${Chartbundlejs}"></script>
	<script src="${select2minjs}">
    </script>

	<!-- Main JS-->
	<script src="${mainjsjs}"></script>

	<script src="${triggerjsjs}"></script>

	<script type="text/javascript">

function notify(message){
    //alert(message);
    document.getElementsByClassName("js-item-menu")[0].click();
}

function notifyRe(message){
    //alert(message);
    document.getElementsByClassName("js-item-menu")[0].click();
}

var trs = document.getElementsByClassName("shetr");
for (var i = 0; i < trs.length; i++){
    tds = trs[i].getElementsByClassName("shetd");
    
    console.log("IS:" + tds[1].innerText + "-" + tds[2].innerText);
    
    var randCol = getCookie(tds[1].innerText + "-" + tds[2].innerText);
    
    console.log("IS:" + randCol);
  
    for (var j = 0; j < tds.length; j++){
    	tds[j].style.color = randCol;
    }
}

</script>

	<%
    if (failed != null)
    {
        %>
	<script>
        notify('<%= message %>');
        </script>
	<%
    }
    
    if (success != null)
    {
        %>
	<script>
        notifyRe('<%= message %>');
        </script>
	<%
    }
%>

</body>

</html>
<!-- end document-->
