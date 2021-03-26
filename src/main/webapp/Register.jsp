<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
        <title>Airline Reservation</title>
        

    </head>
    <body>
        <form action="Register"  method="POST" >
            <table align="center">
                <tr><td> <h3>Name :</h3> </td><td> <input  type="text" name="nm"></td></tr>
                <tr><td> <h3>Login Name :</h3> </td><td> <input type="text" name="lgnm"></td></tr>
                <tr><td><h3> Password :</h3> </td><td> <input type="password" name="ps"></td></tr>
                <tr><td> <h3>Mobile :</h3> </td><td><input type="text" name="mb"></td></tr>
                <tr><td><h3> Gender :</h3> </td><td><input type="radio" name="gen" value="Male" checked="yes">Male</td></tr>
                <tr><td>         </td><td><input type="radio" name="gen" value="Female">Female</td></tr>
                <tr><td> <h3>Location :</h3> </td><td> <select name="country">
                            <option value="America">America</option>
                            <option value="Canada">Canada</option>
                            <option value="England">England</option>
                            <option value="India">India</option>
                            <option value="Zimbobwe">Zimbobwe</option>
                        </select></td></tr>
                <tr><td align='right'><input type="checkbox" name="agree"></td><td><h3>I Accept terms and conditions.</td></tr></h3>
                <tr><td colspan="2"> <button type="submit">Register</button></td></tr>
            </table>
        </form>
    </body>
</html>
