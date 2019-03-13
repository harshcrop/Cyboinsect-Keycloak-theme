<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet"/>
        <link href="${url.resourcesPath}/img/favicon.png" rel="icon"/>
        <script>
            function togglePassword() { 
                var x = document.getElementById("password");
                var v = document.getElementById("vi");
                if (x.type === "password") {
                    x.type = "text";
                    v.src = "${url.resourcesPath}/img/eye.png";
                } else {    
                    x.type = "password";
                    v.src = "${url.resourcesPath}/img/eye-off.png";
                }
            }
        </script>

    <#elseif section = "form">
        <div class="box-row">
        <div class="box-container left-color">
        <#if realm.password>
            <div >
               <img class="sign-img" src="${url.resourcesPath}/img/SignIn.svg" atl="login">
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
               <span class="span-text">Login</span>
               </div>
               <div>
               <form id="kc-form-login" class="form" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                    <div class="row row-padding">

                    <div class="email-label">
                    <label>Email*</label>
                    </div>
                    <div>
                    <input id="username" class="login-field input-email" type="text" name="username" tabindex="1">
                    </div>
                        <div class="visibility" id="v" onclick="togglePassword()"></div>
                
               
                <div class="password-label">
                    <label>Password*</label>
                    </div>
                <input id="password" class="login-field login-password" type="password" name="password" tabindex="2">
                <label class="password-visibility" id="v" onclick="togglePassword()"><img id="vi" class="img-padding" src="${url.resourcesPath}/img/eye-off.png"></label>
                </div>
                <div class="row-padding">
                 <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}" style="margin-top: 10px">
                    <div id="kc-form-options">
                        <#if realm.rememberMe && !usernameEditDisabled??>
                            <div class="checkbox">
                                <label>
                                    <#if login.rememberMe??>
                                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked> ${msg("rememberMe")}
                                    <#else>
                                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox"> ${msg("rememberMe")}
                                    </#if>
                                </label>
                            </div>

                        </#if>
                        </div>
                        </div>  
                    <div class="${properties.kcFormOptionsWrapperClass!}" style="float: right; margin-top: -15px">
                              <#if realm.resetPasswordAllowed>
                                <span><a style="color:#E0AEF6;" tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>
                            </#if>  
                        </div>
                        </div>
                    
                        
                        
                <div style="width: 100%; justify-content: center; display: flex">
                <input class="submit" type="submit" value="${msg('doLogIn')}" tabindex="3">
                </div>
                </form>
            
        
        </#if>
        <div style="margin-top:50px;text-align:center;">
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
