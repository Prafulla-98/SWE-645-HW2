<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form on Tomcat</title>
</head>
<body>
	<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet"/>
	<form action="/action_page.php">
	
	<h1>Student Survey form</h1>
	  <table>
	    <tr>
	      <td><label for="fname">First name:</label></td>
	      <td><input type="text" id="fname" name="fname" value=""></td>
	    </tr>
	    <tr>
	      <td><label for="lname">Last name:</label></td>
	      <td><input type="text" id="lname" name="lname" value=""></td>
	    </tr>
	    <tr>
	      <td><label for="lname">Street Address:</label></td>
	      <td><input type="text" id="straddr" name="straddr" value=""></td>
	    </tr>
	    <tr>
	      <td><label for="lname">City:</label></td>
	      <td><input type="text" id="city" name="city" value=""></td>
	    </tr>
	    <tr>
	      <td><label for="lname">State:</label></td>
	      <td><input type="text" id="state" name="state" value=""></td>
	    </tr>
	    <tr>
	      <td><label for="lname">Zip:</label></td>
	      <td><input type="text" id="zip" name="zip" value=""></td>
	    </tr>
	    <tr>
	      <td><label for="lname">Telephone Number:</label></td>
	      <td><input type="text" id="telnum" name="telnum" value=""></td>
	    </tr>
	    <tr>
	      <td><label for="lname">E-mail:</label></td>
	      <td><input type="text" id="email" name="email" value=""></td>
	    </tr>
	    <tr>
	      <td><label for="liked">Loked Most about Campus:</label></td>
	      <td><input type="checkbox" id="students" name="students" value="Students"><label for="students">Students</label></td>
	    </tr>
	    <tr>
	      <td></td>
	      <td><input type="checkbox" id="location" name="location" value="Location"><label for="location">Location</label></td>
	    </tr>
	    <tr>
	      <td></td>
	      <td><input type="checkbox" id="campus" name="campus" value="Campus"><label for="campus">Campus</label></td>
	    </tr>
	    <tr>
	      <td></td>
	      <td><input type="checkbox" id="atmosphere" name="atmosphere" value="Atmosphere"><label for="atmosphere">Atmosphere</label></td>
	    </tr>
	    <tr>
	      <td></td>
	      <td><input type="checkbox" id="dormroom" name="dormroom" value="Dormroom"><label for="dormroom">Dorm rooms</label></td>
	    </tr>
	    <tr>
	      <td></td>
	      <td><input type="checkbox" id="sports" name="sports" value="Sports"><label for="sports">Sports</label></td>
	    </tr>
	    <tr>
	      <td><label for="InterestUniversity">Interested in the University:</label></td>
	      <td><input type="radio" id="friends" name="InterestUniversity" value="Friends"><label for="friends">Friends</label></td>
	    </tr>
	    <tr>
	      <td></td>
	      <td><input type="radio" id="television" name="InterestUniversity" value="Television"><label for="television">Television</label></td>
	    </tr>
	    <tr>
	      <td></td>
	      <td><input type="radio" id="Internet" name="InterestUniversity" value="Internet"><label for="Internet">Internet</label></td>
	    </tr>
	    <tr>
	      <td></td>
	      <td><input type="radio" id="other" name="InterestUniversity" value="other"><label for="other">other</label></td>
	    </tr>
	    <tr>
	      <td><label for="likely">Likelihood in University:</label></td>
	      <td>
	        <select name="likely" id="likely">
	          <option value="vlikely"> Very Likely</option>
	          <option value="like">Likely</option>
	          <option value="unlikely">Unlikely</option>
	        </select>
	      </td>
	    </tr>
	    <tr>
	      <td><label for="raffle">Raffle:</label></td>
	      <td><input type="text" id="raffle" name="raffle" value=""></td>
	    </tr>
	    <tr>
	      <td><label for=" additionalcomments">Additional Comments:</label></td>
	      <td><textarea id=" additionalcomments" name=" additionalcomments"></textarea></td>
	    </tr>
	    <tr>
	      <td><button type="submit" value="Submit" class="submit">Submit</button></td>
	      <td><button type="reset" value="Reset">Reset</button></td>
	    </tr>
	  </table>
	</form>
</body>
</html>