<%-- 
    Document   : UserBlogForm
    Created on : 28-Nov-2023, 9:33:01 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Blog Entry Form</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
            }

            form {
                background-color: #fff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                padding: 20px;
                border-radius: 8px;
                width: 80%;
                max-width: 400px;
                margin: auto;
            }

            label {
                display: block;
                margin-bottom: 8px;
            }

            input,
            textarea {
                width: 100%;
                padding: 10px;
                margin-bottom: 16px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            input[type="submit"] {
                background-color: #4caf50;
                color: #fff;
                cursor: pointer;
            }

            input[type="submit"]:hover {
                background-color: #45a049;
            }
        </style>
    </head>

    <body>

        <div>
            <h2 style="text-align: center;">Create a New Blog Entry</h2>

            <form action="/SHASHWAT/BlogInsert" method="post">
                <label for="title">Title:</label>
                <input type="text" id="title" name="title" required>


                <label for="category">Category:</label>
                <input type="text" id="category" name="category">

                <label for="content">Content:</label>
                <textarea id="content" name="content" required></textarea>

                <label for="img_url">Image URL:</label>
                <input type="file" id="img_url" name="image">

                <input type="submit" value="Submit">
            </form>
        </div>

    </body>

</html>