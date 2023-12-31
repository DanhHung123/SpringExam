<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-100">
<header class="w-full h-[80px] flex items-center justify-between bg-white px-8 shadow-md">
    <div class="h-full flex items-center">
        <img class="h-[70%] object-cover" src="https://cdn.onlinewebfonts.com/svg/img_110816.png" alt="logo">
        <h1 class="text-3xl font-bold ml-5">Management</h1>
    </div>
    <ul class="flex items-center text-xl">
        <li><a class="py-2 px-3" href="">#</a></li>
        <li><a class="py-2 px-3" href="">#</a></li>
        <li><a class="py-2 px-3" href="">#</a></li>
    </ul>
</header>
<main class="max-w-[1200px] mx-auto min-h-[calc(100vh-80px)]">
    <div class="py-6 border-b border-gray-300">
        <h3 class="font-semibold text-center text-2xl">List of employee </h3>
    </div>

    <div class="mt-5 flex items-center justify-between">
        <div>
            <a class="inline-block py-2 px-4 bg-blue-700 text-white font-medium rounded-md" href="<%=request.getContextPath()%>/employee/create">Create new employee</a>
        </div>
        <div class="w-1/2 flex justify-end">
            <form class="w-[70%] " action="<%=request.getContextPath()%>/employee/search" method="POST">
                <div class="relative">
                    <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                        <svg aria-hidden="true" class="w-5 h-5 text-gray-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                             xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                        </svg>
                    </div>
                    <input type="search" id="default-search" name="search"
                           class="outline-none shadow-md block w-full p-3 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500"
                           placeholder="Search..." required>
                    <button type="submit"
                            class="text-white absolute right-2.5 bottom-1 bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2">Search</button>
                </div>
            </form>
        </div>
    </div>

    <section>
        <div class="relative overflow-x-auto shadow-md sm:rounded-lg mt-6">
            <table class="w-full text-sm text-left text-gray-500">
                <thead class="text-xs text-gray-700 uppercase bg-gray-100">
                <tr>
                    <th scope="col" class="px-6 py-3">
                        ID
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Name
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Salary
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="employee" items="${employees}">
                    <tr class="bg-white border-b ">
                        <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                ${employee.employeeId}
                        </th>
                        <td class="px-6 py-4">
                                ${employee.employeeName}
                        </td>
                        <td class="px-6 py-4">
                                ${employee.salary}
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </section>
</main>
</body>

</html>