<!DOCTYPE html>
<html>
<head>
<title>eduera</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
</head>
<body>
<div class="container">
		
			      
      <div  class="form">
    		<form id="contactform" method="post" action="reg_insert.jsp"> 
    			<p class="contact"><label for="name">Name</label></p> 
    			<input name="t1" type="text" id="t1" size="44" />
    			 
    			<p class="contact"><label for="email">Email</label></p> 
    			<input name="t3" type="text" id="t3" size="44"> 
				
				<p class="contact"><label for="phone">Mobile phone</label></p> 
            <input name="t4" type="text" id="t4" size="44" > <br>
                
                <p class="contact"><label for="username">Address</label></p> 
    			<textarea name="t5" cols="55" rows="12" id="t5"></textarea> 
    			 
                
        
               <fieldset>
                 <label>Course</label>
                  <label class="month"> 
                  <select name="select" id="select">
              <option>M.TECH</option>
              <option>B.TECH</option>
              <option>MBA</option>
              <option>BBA</option>
              <option>BCA</option>
              <option>MS</option>
            </label>
			</select>
                
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <label>Course</label>
                  <label class="month"> 
                  <select name="select2" id="select2">
              <option>MONTHS</option>
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
              <option>6</option>
              <option>7</option>
              <option>8</option>
              <option>9</option>
              <option>10</option>
              <option>11</option>
              <option>12</option>
			  </label>
            </select>
                
              </fieldset>
  <br/>
            <tr>
            <td height="29"><em><font color="#FFFFFF" size="2"><strong><font color="#000000">Student Photo</font></strong></font></em></td>
            <td><input type="file" name="t6" id="t6" /></td>
          </tr>
          <tr>
		  <br/>
            <td height="29"><em><font color="#FFFFFF" size="2"><strong><font color="#000000">Id Proof</font></strong></font></em></td>
            <td><span id="sprytextfield6">
              <input type="file" name="t7" id="t7" />
            <span class="textfieldRequiredMsg"></span></span></td>
          </tr>
          <tr>
		  <br/>
            <td height="21" colspan="2" align="center"><input type="submit" class="buttom"  id="submit" tabindex="5" value="Sign me up!" type="submit"name="submit1" class="button11"  /><%=session.getAttribute("msg")%></td>
          </tr>
            
            
            -	 
   </form> 
</div>      
</div>

</body>
</html>
