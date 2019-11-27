<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
        <link href="${url.resourcesPath}/img/favicon.png" rel="icon"/>
        
       <#elseif section = "form">
        <div class="card card-3">
                <div class="card-heading" style="background: url('${url.resourcesPath}/img/1.jpg') top left/cover no-repeat;background-color:#F0E3F4">
                
                </div>
        <#if realm.password>
        </#if>
        <#if realm.password>
            <div style="text-align: center;" class="logo">
            <img src="${url.resourcesPath}/img/logo.png" style="height:70px;margin-top:70px;">
               </div>
               <div style="text-align: center;margin:30px;">
               <h2>Forgot Password?</h2>
               </div>
               <form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
                    <div class="input-group " style="text-align:center;">                    
                    <label>Enter your email id to which your account is linked.*</label>
                    <input type="text" id="username" name="username" class="input--style-3 input-reset"/>
                    </div>        
                <div style="width: 100%; justify-content: center; display: flex;margin-top:20px;">
                <input class="submit" type="submit" value="${msg("doSubmit")}" tabindex="3">
                </div>
                </form>  
        <#elseif section = "info" >
    ${msg("emailInstruction")}      
        </#if>
         <div style="margin-top:50px;text-align:center;margin-bottom:50px;">
        <span style="text-size:16px;">Remembered your password?</span>
        <a href="${url.loginUrl}" style="color:#e6186d; ">SignIn</a>
        <div>
        <div style="margin-top:10px;text-align:center;margin-bottom:160px">
        <span style="text-size:16px;">Don't have an account?</span>
        <a href="${url.registrationUrl}" style="color:#e6186d; ">Signup</a>
        <div>
        </div>
        </div>
    </#if>
</@layout.registrationLayout>