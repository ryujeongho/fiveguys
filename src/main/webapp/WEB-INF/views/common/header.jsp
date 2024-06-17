<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.sh.guys.user.model.entity.Role" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Five Guys</title>
<%--    <link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600&family=Rubik+Doodle+Shadow&display=swap"--%>
<%--          rel="stylesheet">--%>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600&family=Lemon&family=Rubik+Doodle+Shadow&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/c3a117ab33.js" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/js/tailwind.config.js"></script>
    <script
            src="https://code.jquery.com/jquery-3.7.1.js"
            integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
            crossorigin="anonymous"></script>
    <script>
        const contextPath = '${pageContext.request.contextPath}';
        <c:if test="${msg != null}">
        alert(`${msg}`); // 여러줄 입력이 가능하도록 `(백틱)으로 감싸야한다.
        <%-- session속성 msg 제거해서 1회만 출력되도록 한다. --%>
        <%-- session.removeAttribute("msg"); --%>
        <c:remove var="msg" scope="session" />
        </c:if>
    </script>
    <c:if test="${loginUser != null}">
        <script src="${pageContext.request.contextPath}/js/ws/ws.js"></script>
    </c:if>
</head>
<body>
<div class="3xl:container">
    <header>
        <nav class="bg-white rounded-lg shadow m-4 dark:bg-gray-800">
            <div class="flex flex-wrap justify-between items-center mx-auto max-w-screen-xl p-4">
                <!-- drawer init and show -->
                <div class="text-center">
                    <button class="text-white hover:bg-sky-100 focus:ring-4 focus:ring-sky-200 font-medium rounded-lg text-sm px-5 py-2.5 dark:ring-sky-200 dark:hover:bg-sky-100 focus:outline-none dark:focus:ring-sky-200"
                            type="button" data-drawer-target="drawer-navigation" data-drawer-show="drawer-navigation"
                            aria-controls="drawer-navigation">
                        <img src="${pageContext.request.contextPath}/images/free-icon-menu-148806.png" alt="">
                    </button>
                </div>
                <a href="${pageContext.request.contextPath}" class="flex items-center space-x-3 rtl:space-x-reverse">
                    <img src="${pageContext.request.contextPath}/images/free-icon-hamburguer-5508475.png" class="h-8"
                         alt="Flowbite Logo"/>
                    <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">Five Guys</span>
                </a>
                <nav class="bg-white border-gray-200 dark:bg-gray-900">
                    <%--                        <form name="searchFrm" method="get">--%>
                    <%--                            <div class="flex">--%>
                    <%--                                <label for="searchKeyword" class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white"></label>--%>
                    <%--                                <button id="dropdown-button" data-dropdown-toggle="dropdown" class="flex-shrink-0 z-10 inline-flex items-center py-2.5 px-4 text-sm font-medium text-center text-gray-900 bg-gray-100 border border-gray-300 rounded-s-lg hover:bg-gray-200 focus:ring-4 focus:outline-none focus:ring-gray-100 dark:bg-gray-700 dark:hover:bg-gray-600 dark:focus:ring-gray-700 dark:text-white dark:border-gray-600" type="button">All<svg class="w-2.5 h-2.5 ms-2.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">--%>
                    <%--                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>--%>
                    <%--                                </svg></button>--%>
                    <%--                                <div id="dropdown" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700">--%>
                    <%--                                    <ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdown-button">--%>
                    <%--                                        <li>--%>
                    <%--                                            <button type="button" class="inline-flex w-full px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">카테고리</button>--%>
                    <%--                                        </li>--%>
                    <%--                                        <li>--%>
                    <%--                                            <button type="button" class="inline-flex w-full px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">주소</button>--%>
                    <%--                                        </li>--%>
                    <%--                                        <li>--%>
                    <%--                                            <button type="button" class="inline-flex w-full px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">식당이름</button>--%>
                    <%--                                        </li>--%>
                    <%--                                    </ul>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="relative w-full">--%>
                    <%--                                    <input type="search" id="searchKeyword" name="searchKeyword" class="block p-2.5 w-full z-20 text-sm text-gray-900 bg-gray-50 rounded-e-lg border-s-gray-50 border-s-2 border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-s-gray-700  dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:border-blue-500" placeholder="Search">--%>
                    <%--                                    <button type="submit" class="absolute top-0 end-0 p-2.5 text-sm font-medium h-full text-white bg-blue-700 rounded-e-lg border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">--%>
                    <%--                                        <svg class="w-4 h-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">--%>
                    <%--                                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>--%>
                    <%--                                        </svg>--%>
                    <%--                                        <span class="sr-only">Search</span>--%>
                    <%--                                    </button>--%>
                    <%--                                </div>--%>
                    <%--                            </div>--%>
                    <%--                        </form>--%>

                    <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
                        <div class="flex md:order-2">
                            <button type="button" data-collapse-toggle="navbar-search" aria-controls="navbar-search"
                                    aria-expanded="false"
                                    class="md:hidden text-gray-500 dark:text-gray-400 hover:bg-sky-100 dark:hover:bg-gray-700 focus:outline-none focus:ring-4 focus:ring-sky-200 dark:focus:ring-gray-700 rounded-lg text-sm p-2.5 me-1">
                                <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                     viewBox="0 0 20 20">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                          stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
                                </svg>
                                <span class="sr-only">Search</span>
                            </button>
                            <form name="searchFrm" method="get">
                                <div class="p-4 bg-white flex">
                                    <select id="search-type" name="search-type" required class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 p-1.5">
                                        <option value="" disabled selected>검색</option>
                                        <option value="category" ${param['search-type'] eq 'category' ? 'selected' : ''}>카테고리</option>
                                        <option value="name" ${param['search-type'] eq 'name' ? 'selected' : ''}>식당이름</option>
                                        <option value="address" ${param['search-type'] eq 'address' ? 'selected' : ''}>식당주소</option>
                                    </select>
                                    <div class="relative hidden md:block">
                                        <div class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none">
                                            <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true"
                                                 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
                                            </svg>
                                            <span class="sr-only">Search icon</span>
                                        </div>
                                        <input type="text" id="search-Keyword" name="search-Keyword"
                                               class="block w-full p-2 ps-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-sky-200 focus:border-sky-200 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                               placeholder="Search...">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <%--                            <button data-collapse-toggle="navbar-search" type="button" class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="navbar-search" aria-expanded="false">--%>
                        <%--                                <span class="sr-only">Open main menu</span>--%>
                        <%--                                <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">--%>
                        <%--                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15"/>--%>
                        <%--                                </svg>--%>
                        <%--                            </button>--%>
                        <div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1"
                             id="navbar-search">
                            <div class="relative mt-3 md:hidden">
                                <div class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none">
                                    <svg class="w-4 h-4 text-gray-500 dark:bg-sky-100" aria-hidden="true"
                                         xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                              stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
                                    </svg>
                                </div>
                                <input type="text" id="search-navbar2"
                                       class="block w-full p-2 ps-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-sky-200 focus:border-sky-200 dark:bg-sky-100 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                       placeholder="Search...">
                            </div>
                        </div>
                    </div>
                </nav>

                <!-- drawer component -->
                <div id="drawer-navigation"
                     class="fixed top-0 left-0 z-40 w-64 h-screen p-4 overflow-y-auto transition-transform -translate-x-full bg-white dark:bg-gray-800"
                     tabindex="-1" aria-labelledby="drawer-navigation-label">
                    <h5 id="drawer-navigation-label"
                        class="text-base font-semibold text-gray-500 uppercase dark:text-gray-400">Menu</h5>

                    <c:if test="${loginUser != null}">
                        <ul class="space-y-2 font-medium">
                            <a href="${pageContext.request.contextPath}/user/userDetail"
                               class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                                    ${loginUser.id}님 안녕하세요
                            </a>
                            <li>
                                <a href="${pageContext.request.contextPath}" class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                                    <svg class="flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 18 18">
                                        <path d="M6.143 0H1.857A1.857 1.857 0 0 0 0 1.857v4.286C0 7.169.831 8 1.857 8h4.286A1.857 1.857 0 0 0 8 6.143V1.857A1.857 1.857 0 0 0 6.143 0Zm10 0h-4.286A1.857 1.857 0 0 0 10 1.857v4.286C10 7.169 10.831 8 11.857 8h4.286A1.857 1.857 0 0 0 18 6.143V1.857A1.857 1.857 0 0 0 16.143 0Zm-10 10H1.857A1.857 1.857 0 0 0 0 11.857v4.286C0 17.169.831 18 1.857 18h4.286A1.857 1.857 0 0 0 8 16.143v-4.286A1.857 1.857 0 0 0 6.143 10Zm10 0h-4.286A1.857 1.857 0 0 0 10 11.857v4.286c0 1.026.831 1.857 1.857 1.857h4.286A1.857 1.857 0 0 0 18 16.143v-4.286A1.857 1.857 0 0 0 16.143 10Z"/>
                                    </svg>
                                    <span class="flex-1 ms-3 whitespace-nowrap">Home</span>
                                </a>
                            </li>
                                <%--                            <div class="py-4 overflow-y-auto">--%>
                                <%--                                <ul class="space-y-2 font-medium">--%>
                            <button id="dropdownBottomButton" data-dropdown-toggle="dropdownBottom" data-dropdown-placement="bottom" class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group" type="button">
                                <svg class="flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="m17.418 3.623-.018-.008a6.713 6.713 0 0 0-2.4-.569V2h1a1 1 0 1 0 0-2h-2a1 1 0 0 0-1 1v2H9.89A6.977 6.977 0 0 1 12 8v5h-2V8A5 5 0 1 0 0 8v6a1 1 0 0 0 1 1h8v4a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1v-4h6a1 1 0 0 0 1-1V8a5 5 0 0 0-2.582-4.377ZM6 12H4a1 1 0 0 1 0-2h2a1 1 0 0 1 0 2Z"/>
                                </svg>
                                <span class="flex-1 ms-3 whitespace-nowrap">Inbox</span>
                                    <%--                                <span class="inline-flex items-center justify-center w-3 h-3 p-3 ms-3 text-sm font-medium text-blue-800 bg-blue-100 rounded-full dark:bg-blue-900 dark:text-blue-300">3</span>--%>
                            </button>
                            <!-- Dropdown menu -->
                            <div id="dropdownBottom" class="z-10 m-4 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700">
                                <ul id="notification-container" class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownBottomButton">
                                    <c:if test="${notifications != null or notification != ''}">
                                    <c:forEach items="${notifications}" var="noti" varStatus="vs">
                                    <li class="w-full px-4 border-b border-gray-200 rounded-t-lg">
                                            <%--                                                <a href="#" class="hover:underline text-blue-500">${noti.content}</a>--%>
                                            ${noti.content.replaceAll("#([^#]+)§([^#]+)#", '<a href="##$2" class="hover:underline text-blue-500">$1</a>').replaceAll('##', pageContext.request.contextPath)}
                                        <button type="button"
                                                onclick="confirm('정말 삭제하시겠습니까?') && document.querySelector('#notificationDeleteFrm').submit()"
                                                class="bg-red-50 text-red-500 text-xs font-medium me-2 px-2.5 py-0.5 rounded-full dark:bg-red-900 dark:text-red-300">
                                            X</button>
                                        <form id="notificationDeleteFrm"
                                              action="${pageContext.request.contextPath}/notification/notificationDelete"
                                              method="post">
                                            <input type="hidden" name="no" id="no" value="${noti.no}">
                                        </form>
                                    </li>
                                    </c:forEach>
                                    </c:if>

                                    <c:if test="${notifications == null or notification == ''}">
                                    <li class="w-full px-4 border-b border-gray-200 rounded-t-lg">
                                        새로운 알림이 없습니다.
                                    </li>
                                    </c:if>
                            </div>
                            <c:if test="${loginUser.role == Role.O}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/oner/onerReservationList"
                                       class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                                        <svg class="flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"
                                             aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor"
                                             viewBox="0 0 20 20">
                                            <path d="M5 5V.13a2.96 2.96 0 0 0-1.293.749L.879 3.707A2.96 2.96 0 0 0 .13 5H5Z"/>
                                            <path d="M6.737 11.061a2.961 2.961 0 0 1 .81-1.515l6.117-6.116A4.839 4.839 0 0 1 16 2.141V2a1.97 1.97 0 0 0-1.933-2H7v5a2 2 0 0 1-2 2H0v11a1.969 1.969 0 0 0 1.933 2h12.134A1.97 1.97 0 0 0 16 18v-3.093l-1.546 1.546c-.413.413-.94.695-1.513.81l-3.4.679a2.947 2.947 0 0 1-1.85-.227 2.96 2.96 0 0 1-1.635-3.257l.681-3.397Z"/>
                                            <path d="M8.961 16a.93.93 0 0 0 .189-.019l3.4-.679a.961.961 0 0 0 .49-.263l6.118-6.117a2.884 2.884 0 0 0-4.079-4.078l-6.117 6.117a.96.96 0 0 0-.263.491l-.679 3.4A.961.961 0 0 0 8.961 16Zm7.477-9.8a.958.958 0 0 1 .68-.281.961.961 0 0 1 .682 1.644l-.315.315-1.36-1.36.313-.318Zm-5.911 5.911 4.236-4.236 1.359 1.359-4.236 4.237-1.7.339.341-1.699Z"/>
                                        </svg>
                                        <span class="flex-1 ms-3 whitespace-nowrap">Oner</span>
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${loginUser.role == Role.M}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/admin/adminUsersList"
                                       class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                                        <svg class="flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"
                                             aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor"
                                             viewBox="0 0 20 20">
                                            <path d="M5 5V.13a2.96 2.96 0 0 0-1.293.749L.879 3.707A2.96 2.96 0 0 0 .13 5H5Z"/>
                                            <path d="M6.737 11.061a2.961 2.961 0 0 1 .81-1.515l6.117-6.116A4.839 4.839 0 0 1 16 2.141V2a1.97 1.97 0 0 0-1.933-2H7v5a2 2 0 0 1-2 2H0v11a1.969 1.969 0 0 0 1.933 2h12.134A1.97 1.97 0 0 0 16 18v-3.093l-1.546 1.546c-.413.413-.94.695-1.513.81l-3.4.679a2.947 2.947 0 0 1-1.85-.227 2.96 2.96 0 0 1-1.635-3.257l.681-3.397Z"/>
                                            <path d="M8.961 16a.93.93 0 0 0 .189-.019l3.4-.679a.961.961 0 0 0 .49-.263l6.118-6.117a2.884 2.884 0 0 0-4.079-4.078l-6.117 6.117a.96.96 0 0 0-.263.491l-.679 3.4A.961.961 0 0 0 8.961 16Zm7.477-9.8a.958.958 0 0 1 .68-.281.961.961 0 0 1 .682 1.644l-.315.315-1.36-1.36.313-.318Zm-5.911 5.911 4.236-4.236 1.359 1.359-4.236 4.237-1.7.339.341-1.699Z"/>
                                        </svg>
                                        <span class="flex-1 ms-3 whitespace-nowrap">Admin</span>
                                    </a>
                                </li>
                            </c:if>
                            <li>
                                <a href="${pageContext.request.contextPath}/user/userLogout" class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                                    <svg class="flex-shrink-0 w-6 h-6 transform rotate-180 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3"></path>
                                    </svg>
                                    <span class="flex-1 ms-3 whitespace-nowrap text-lg">Logout</span>
                                </a>
                            </li>
                        </ul>
                    </c:if>
                    <button type="button" data-drawer-hide="drawer-navigation" aria-controls="drawer-navigation"
                            class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 absolute top-2.5 end-2.5 inline-flex items-center dark:hover:bg-gray-600 dark:hover:text-white">
                        <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                  clip-rule="evenodd"></path>
                        </svg>
                        <span class="sr-only">Close menu</span>
                    </button>
                    <c:if test="${loginUser == null}">
                        <ul class="space-y-2 font-medium">
                            <li>
                                <a href="${pageContext.request.contextPath}" class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                                    <svg class="flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 18 18">
                                        <path d="M6.143 0H1.857A1.857 1.857 0 0 0 0 1.857v4.286C0 7.169.831 8 1.857 8h4.286A1.857 1.857 0 0 0 8 6.143V1.857A1.857 1.857 0 0 0 6.143 0Zm10 0h-4.286A1.857 1.857 0 0 0 10 1.857v4.286C10 7.169 10.831 8 11.857 8h4.286A1.857 1.857 0 0 0 18 6.143V1.857A1.857 1.857 0 0 0 16.143 0Zm-10 10H1.857A1.857 1.857 0 0 0 0 11.857v4.286C0 17.169.831 18 1.857 18h4.286A1.857 1.857 0 0 0 8 16.143v-4.286A1.857 1.857 0 0 0 6.143 10Zm10 0h-4.286A1.857 1.857 0 0 0 10 11.857v4.286c0 1.026.831 1.857 1.857 1.857h4.286A1.857 1.857 0 0 0 18 16.143v-4.286A1.857 1.857 0 0 0 16.143 10Z"/>
                                    </svg>
                                    <span class="flex-1 ms-3 whitespace-nowrap">Home</span>
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/user/userLogin"
                                   class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                                    <svg class="flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"
                                         aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                         viewBox="0 0 18 16">
                                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                              stroke-width="2"
                                              d="M1 8h11m0 0L8 4m4 4-4 4m4-11h3a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-3"/>
                                    </svg>
                                    <span class="flex-1 ms-3 whitespace-nowrap">Sign In</span>
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/user/userRegister"
                                   class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                                    <svg class="flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"
                                         aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor"
                                         viewBox="0 0 20 20">
                                        <path d="M5 5V.13a2.96 2.96 0 0 0-1.293.749L.879 3.707A2.96 2.96 0 0 0 .13 5H5Z"/>
                                        <path d="M6.737 11.061a2.961 2.961 0 0 1 .81-1.515l6.117-6.116A4.839 4.839 0 0 1 16 2.141V2a1.97 1.97 0 0 0-1.933-2H7v5a2 2 0 0 1-2 2H0v11a1.969 1.969 0 0 0 1.933 2h12.134A1.97 1.97 0 0 0 16 18v-3.093l-1.546 1.546c-.413.413-.94.695-1.513.81l-3.4.679a2.947 2.947 0 0 1-1.85-.227 2.96 2.96 0 0 1-1.635-3.257l.681-3.397Z"/>
                                        <path d="M8.961 16a.93.93 0 0 0 .189-.019l3.4-.679a.961.961 0 0 0 .49-.263l6.118-6.117a2.884 2.884 0 0 0-4.079-4.078l-6.117 6.117a.96.96 0 0 0-.263.491l-.679 3.4A.961.961 0 0 0 8.961 16Zm7.477-9.8a.958.958 0 0 1 .68-.281.961.961 0 0 1 .682 1.644l-.315.315-1.36-1.36.313-.318Zm-5.911 5.911 4.236-4.236 1.359 1.359-4.236 4.237-1.7.339.341-1.699Z"/>
                                    </svg>
                                    <span class="flex-1 ms-3 whitespace-nowrap">Sign Up</span>
                                </a>
                            </li>
                        </ul>
                    </c:if>
                </div>
            </div>
        </nav>
    </header>
    <main class="w-full min-h-[80vh]">