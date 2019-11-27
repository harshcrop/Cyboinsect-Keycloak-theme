<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
<#if section = "title">
${msg("registerTitle")}
<#elseif section = "header">

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<#elseif section = "form">
<div class="card card-3">
<div class="card-heading" style="background: url('${url.resourcesPath}/img/1.jpg') top left/cover no-repeat;background-color:#F0E3F4"></div>
<#if realm.password>
</#if>
<#if realm.password>
<div class="card-register">
   <div style="text-align: center;">
      <img src="${url.resourcesPath}/img/logo.png" alt="logo" style="height:60px;">
   </div>
   <div style="text-align: center;margin-top:20px;margin-bottom: 20px;
      font-size: 32px;">
      <span class="span-text">Register</span>
   </div>
   <form id="kc-form-login" class="form" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
   <div class="input-group-register">
      <label>First Name*</label>
      <input id="firstName" class="input--style-3 input-width" type="text" name="firstName" required oninvalid="this.setCustomValidity('Enter your firstname')"
         oninput="this.setCustomValidity('')" value="${(register.formData.firstName!'')}" tabindex="1">
   </div>
   <div class="input-group-register">
      <label>Last Name*</label>
      <input id="lastName" class="input--style-3 input-width" type="text" name="lastName" required oninvalid="this.setCustomValidity('Enter your secondname')"
         oninput="this.setCustomValidity('')" value="${(register.formData.firstName!'')}" value="${(register.formData.lastName!'')}" tabindex="1">
   </div>
   <div class="input-group-register">
      <label for="email" >${msg("Email*")}</label>
      <input type="text" id="email" class="input--style-3 input-width"  name="email"required oninvalid="this.setCustomValidity('Enter your email id')"
         oninput="this.setCustomValidity('')" value="${(register.formData.firstName!'')}"  value="${(register.formData.email!'')}" autocomplete="email" />
   </div>
   <#if !realm.registrationEmailAsUsername>
   <div  class="input-group-register">
      <label for="username">${msg("username")}</label>
      <input type="text" id="username" class="input--style-3 input-width" name="username" required oninvalid="this.setCustomValidity('Enter your email id')"
         oninput="this.setCustomValidity('')" value="${(register.formData.firstName!'')}" value="${(register.formData.username!'')}" autocomplete="username" />
   </div>
</div>
</#if>
<#if passwordRequired>
<div class="input-group-register">
   <label for="password">${msg("Password*")}</label>
   <input type="password" id="password" class="input--style-3 input-width" name="password" required oninvalid="this.setCustomValidity('Enter your password')"
      oninput="this.setCustomValidity('')" value="${(register.formData.firstName!'')}"  autocomplete="new-password"/>
   
</div>
<div class="input-group-register">
   <label for="password-confirm" class="label-name">${msg("passwordConfirm")}</label>
   <input type="password" id="password-confirm" class="input--style-3 input-width"
      name="password-confirm"  required oninvalid="this.setCustomValidity('Enter your confirmpassword')"
      oninput="this.setCustomValidity('')" value="${(register.formData.firstName!'')}"/>
  
</div>
</#if>
<div class="signup-checkbox" style="text-align:center">
   <label>
   <input id="rememberMe" name="rememberMe" type="checkbox" checked> ${msg("accept")}
   </label><a style="color:#e6186d;" href="#" >terms and conditions</a>
</div>
<div style="width: 100%; justify-content: center; display: flex;margin: 20px 0px 20px 0px;w">
   <input class="submit" type="submit" value="${msg("doRegister")}" tabindex="3">
</div>
</form>
</#if>
<#if social.providers??>
<div id="social-providers" style="text-align:center;">
   <p><span style="text-align:center;"> or Register With </span></p>
</div>
<#list social.providers as p>
<div style="display: flex; margin-left:20px;">
   <input class="${p.displayName}" 
      style="margin-left:10;margin-right: 10"
      type="button" onclick="location.href='${p.loginUrl}';" value="${p.displayName}"/>
   </#list>
</div>
</#if>
<div style="text-align: center">
   <span style="text-size:16px;">Allready have an account?</span>
   <a href="${url.loginUrl}" style="color:#e6186d; ">SignIn.</a>
   <div>
   </div>
</div>
</#if>
</@layout.registrationLayout>