<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz</title>
<link rel="stylesheet" href="http://localhost:8080/JavaFinalSpring1/css/style4.css" />


</head>
<body>

      <div class="quiz">
        <div class="quiz_header">
          <div class="quiz_user">
            <h4>Welcome! <span class="name"></span></h4>
          </div>
          <div class="quiz_timer">
            <span class="time">00:00</span>
          </div>
        </div>
        <div class="quiz_body">
          <div id="questions">
         <table> 
    	<tr class="option_group">
              <td class="option">option 1</td>
              <td class="option">option 2</td>
              <td class="option">option 3</td>
              <td class="option">option 4</td>
            </tr> 
            </table>
          </div>

          <button class="btn-next" onclick="next()">Next Question</button>
        </div>
      </div>
    
   
   
        

    <!-- site.js -->
    <script src="http://localhost:8080/JavaFinalSpring1/js/site.js"></script>

      <!-- user info -->
      <script src="http://localhost:8080/JavaFinalSpring1/js/result.js"></script>

     <!-- timer -->
     <script src="http://localhost:8080/JavaFinalSpring1/js/timer.js"></script>
  </body>


</html>