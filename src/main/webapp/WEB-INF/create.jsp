<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
        <li><a class="py-2 px-3" href="">Create</a></li>
        <li><a class="py-2 px-3" href="">Create</a></li>
        <li><a class="py-2 px-3" href="">Create</a></li>
    </ul>
</header>
<main class="max-w-[1200px] mx-auto min-h-[calc(100vh-80px)]">
    <div class="py-6 border-b border-gray-300">
        <h3 class="font-semibold text-center text-2xl">Add Users</h3>
    </div>

    <div class="flex justify-center">
        <div class="bg-white w-[700px] rounded-md shadow-md p-6 mt-6">
            <form method="POST" action="<%=request.getContextPath()%>/employee/create">
                <div class="mb-6">
                    <label for="employeeName" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Employee name</label>
                    <input type="text" id="employeeName" name="employeeName"
                           class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
                           placeholder="Enter employee nam " required>
                </div>
                <div class="mb-6">
                    <label for="salary" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Salary</label>
                    <input type="number" id="salary" placeholder="Enter salary" name="salary"
                           class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
                           required>
                </div>
                <button type="submit"
                        class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center ">
                    Create new employee
                </button>
            </form>
        </div>
    </div>

</main>
</body>

</html>