<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Eligibility Result - Success</title>
    <style>
      body { 
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
    background: #f5f5f5;   /* Light background */
    color: #222;           /* Dark text */
    display: flex; 
    justify-content: center; 
    align-items: center; 
    height: 100vh; 
    margin: 0;
}

.result-card { 
    background: #ffffff;   /* White card */
    padding: 40px; 
    border-radius: 20px; 
    box-shadow: 0 15px 35px rgba(0,0,0,0.2); 
    width: 400px; 
    text-align: center;
    border: 1px solid #ddd; /* Subtle border */
}

.icon { font-size: 50px; margin-bottom: 10px; }
h1 { font-size: 22px; color: #444; margin-bottom: 20px; }

.percentage { 
    font-size: 64px; 
    font-weight: bold; 
    color: #e63946; /* Red for fail */
    margin: 20px 0;
    text-shadow: 0 0 10px rgba(230, 57, 70, 0.2);
}

.message { 
    color: #e63946; 
    font-size: 18px; 
    line-height: 1.6;
}

.back-btn {
    display: inline-block;
    margin-top: 30px;
    padding: 10px 20px;
    background: transparent;
    color: #555;
    border: 1px solid #ccc;
    border-radius: 5px;
    text-decoration: none;
    transition: 0.3s;
}

.back-btn:hover {
    background: #e63946; /* Red hover */
    color: #fff;
}
    </style>
</head>
<body>

    <div class="result-card">
        <div class="icon">🌟</div>
        <h1>Exam Eligibility Result</h1>
        
        <div class="percentage">${percent}%</div>
        
        <p class="message">
            Congratulations!<br>
            You have maintained sufficient attendance and are <b>eligible</b> for the exam. 🎉
        </p>

        <a href="home.html" class="back-btn">Check Another</a>
    </div>

</body>
</html>