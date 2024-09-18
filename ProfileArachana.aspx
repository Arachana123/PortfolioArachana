﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileArachana.aspx.cs" Inherits="PortfolioArachana.ProfileArachana" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        /* Basic Reset */
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Header */
        header {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 50px 0;
        }

        nav ul {
            list-style: none;
            padding: 0;
        }

            nav ul li {
                display: inline;
                margin: 0 15px;
            }

                nav ul li a {
                    color: #fff;
                    text-decoration: none;
                    font-weight: bold;
                }

        .intro {
            padding: 20px;
        }

            .intro h1 {
                font-size: 2.5rem;
            }

            .intro p {
                font-size: 1.2rem;
            }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            background: #ff5733;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }

            .btn:hover {
                background: #e04e30;
            }

        /* Portfolio Section */
        section {
            padding: 50px 20px;
            text-align: center;
        }

        h2 {
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .portfolio-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }

        .portfolio-item {
            background: #f4f4f4;
            padding: 20px;
            border-radius: 8px;
        }

            .portfolio-item img {
                width: 100%;
                border-radius: 8px;
            }

            .portfolio-item h3 {
                margin-top: 10px;
                font-size: 1.5rem;
            }

        /* Contact Section */
        form {
            max-width: 600px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin: 10px 0 5px;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        button {
            padding: 10px 20px;
            background: #ff5733;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

            button:hover {
                background: #e04e30;
            }

        /* Footer */
        footer {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#portfolio">Portfolio</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </nav>
        <div class="intro" id="home">
            <h1>Welcome to My Portfolio</h1>
            <p>I'm Arachana Bindra, a Full Stack Web Developer .</p>
            <a href="#portfolio" class="btn">See My Work</a>
        </div>
    </header>

    <section id="portfolio">
        <h2>Portfolio</h2>
        <div class="portfolio-grid">
            <div class="portfolio-item">
                <img src="Project1.png" alt="Project 1">
                <h3><a href="SnakeGame.aspx">Project 1</a></h3>
                <p>Created A snake Game Using HTML,CSS,Javascript</p>
            </div>
            <div class="portfolio-item">
                <img src="project2.png" alt="Project 2">
                <h3>Project 2</h3>
                <p>Created My Portfolio Using HTML,CSS,Javascript,JQuery,C#,MS-SQL SERVER
                    in this project you can see all about me 
                </p>
            </div>
            <div class="portfolio-item">
                <img src="project3.jpg" alt="Project 3">
                <h3>Project 3</h3>
                <p>Description of Project 3.</p>
            </div>
        </div>
    </section>
    <section id="contact">
        <h2>Contact Me</h2>
        <form>
            <label for="name">Name:</label>
            <input type="text" id="txtname" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="txtemail" name="email" required>

            <label for="message">Message:</label>
            <textarea id="txtmessage" name="message" rows="4" required></textarea>

            <button type="submit" class="btn">Send Message</button>
        </form>
    </section>
    <footer>
        <p>&copy; 2024 Arachana Bindra. All rights reserved.</p>
    </footer>
</body>
</html>
