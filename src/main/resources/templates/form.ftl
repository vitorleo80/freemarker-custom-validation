<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Form Data Binding and Validation</title>
        <link href="/css/main.css" rel="stylesheet">
    </head>
    <body>
        <h2>Test Validation</h2>

        <@spring.bind "user"/>
        <#if user?? && noErrors??>
            Your submitted data<br>
            Username: ${user.username}<br>
            phoneNumber: ${user.phoneNumber}<br>
            ipAddress: ${user.ipAddress}<br>
        <#else>
            <form action="/form" method="post">
                <#--username -->
                Username:<br>
                <@spring.bind "user.username" /> 
                <input type="text" 
   				 name="${spring.status.expression}" 
    			 value="${spring.status.value?default("")}" 
    			 required/>
    			 <br>
  				 <#-- <#list spring.status.errorMessages as error> <b>${error}</b> <br> </#list> -->
  			     <br>
  			     <#--phonenumber -->
  			     Phone Number:<br>
                <@spring.bind "user.phoneNumber" /> 
                <input type="text" 
   				 name="${spring.status.expression}" 
    			 value="${spring.status.value?default("")}" 
    			 required />
    			 <br>
  				<#-- <#list spring.status.errorMessages as error> <b>${error}</b> <br> </#list> -->
  			     <br>
  			     <#--ipaddress -->
  			     Ip Address:<br>
                <@spring.bind "user.ipAddress" /> 
                <input type="text" 
   				 name="${spring.status.expression}" 
    			 value="${spring.status.value?default("")}" 
    			 required />
    			 <br>
  				 <#-- <#list spring.status.errorMessages as error> <b>${error}</b> <br> </#list> -->
  			     <br>
              
              	 <#if error??>
          		 <@spring.bind "user.*" />
        		 <h1>Errors</h1>
         		 <#list spring.status.errorMessages as error> <b>${error}</b> <br> </#list>
         		 </#if>
         		 
         		 
         		 
                <input type="submit" value="Submit">
            </form>
        </#if>

        <script src="/js/main.js"></script>
    </body>
</html>