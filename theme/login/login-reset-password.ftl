<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
       <#elseif section = "form">
        <div class="box-row">
        <div class="box-container left-color">
        <#if realm.password>
            <div >
               <img class="sign-img" src="${url.resourcesPath}/img/Pwd.svg" atl="login">
            </div>
        </#if>
        <#if social.providers??>
            <p class="para">${msg("selectAlternative")}</p>
            <div id="social-providers">
                <#list social.providers as p>
                <input class="social-link-style" type="button" onclick="location.href='${p.loginUrl}';" value="${p.displayName}"/>
                </#list>
            </div>
        </#if>
        </div>
        <div class="box-container">
        <#if realm.password>
            <div>
            <div style="text-align: center;" class="logo">
            <img src="${url.resourcesPath}/img/logo.png" alt="logo" style="height:70px;">
               </div>
               <div style="text-align: center;margin:30px;">
               <span class="span-text">Forgot Password?</span>
               </div>
               <div>
               <form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
                    <div class="row row-padding" style="margin-top:100px;">

                    <div class="email-label" style="margin-bottom:20px;">
                    <label>Enter your email id to which your account is linked.*</label>
                    </div>
                    <div>
                    <input type="text" id="username" name="username" class="login-field input-email" autofocus/>
                    </div>        
                <div style="width: 100%; justify-content: center; display: flex">
                <input class="submit" type="submit" value="${msg("doSubmit")}" tabindex="3">
                </div>
                </form>

                    
            
        
        </#if>
         <div style="margin-top:100px;text-align:center;">
        <span style="text-size:16px;font-family:Nunito;">Remembered your password?</span>
        <a href="${url.loginUrl}" style="font-family:Nunito;color:#E0AEF6; ">SignIn</a>
        <div>
        <div style="margin-top:10px;text-align:center;">
        <span style="text-size:16px;font-family:Nunito;">Don't have an account?</span>
        <a href="${url.registrationUrl}" style="font-family:Nunito;color:#E0AEF6; ">Signup</a>
        <div>
        <#if social.providers??>
            <p class="para">${msg("selectAlternative")}</p>
            <div id="social-providers">
                <#list social.providers as p>
                <input class="social-link-style" type="button" onclick="location.href='${p.loginUrl}';" value="${p.displayName}"/>
                </#list>
            </div>
        </#if>
        </div>
        </div>
        <#--  <div>
            <p class="copyright">&copy; ${msg("copyright", "${.now?string('yyyy')}")}</p>
        </div>      -->
    </#if>
</@layout.registrationLayout>