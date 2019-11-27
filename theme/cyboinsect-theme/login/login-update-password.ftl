<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
<#if section = "header">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link href="${url.resourcesPath}/img/favicon.png" rel="icon"/>

<#elseif section = "form">
<div class="card card-3">
<div class="card-heading" style="background: url('${url.resourcesPath}/img/1.jpg') top left/cover no-repeat;background-color:#F0E3F4">
</div>
<#if realm.password>
<div class="card-body">
<div style="text-align:center;">
   <img  src="${url.resourcesPath}/img/logo.png" alt="logo" style="height:60px;">
</div>
<h1 class="title" style="text-align:center;">Change Password</h1>
<form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
   <div>
   <div class="input-group-register">
   <label>Enter your new Password*</label>
      <input class="input--style-3 input-width" id="password" type="password" placeholder="Confirm Password" name="password-new">                       
      <button type="button" id="btnToggle" class="toggle" onclick="passwordCheck()"><i id="eyeIcon" class="fa fa-eye"></i></button>
      </div>
   <div class="input-group-register" >
      <label>Confirm your Password*</label>
         <input class="input--style-3 input-width" id="password-change" type="password" placeholder="Password" name="password-confirm">                       
         <button type="button" id="btnToggle" class="toggle" onclick="confirm()"><i id="eyeIconConfirm" class="fa fa-eye"></i></button>
      </div>
     
      <div style="width: 100%; justify-content: center; display: flex;margin-top:20px;">
         <input class="submit" type="submit" value="${msg("doSubmit")}" tabindex="3">

      </div>
   </div>
</form>
<#elseif section = "info" >
${msg("emailInstruction")}      
</#if>
<div style="padding-top:50px;text-align:center;padding-bottom:50px;">
<span style="text-size:16px;">Remembered your password?</span>
<a href="${url.loginUrl}" style="font-family:Nunito;color:#e6186d; ">SignIn</a>
<div>
<div style="padding-top:10px;text-align:center;">
   <span style="text-size:16px;">Don't have an account?</span>
   <a href="${url.registrationUrl}" style="color:#e6186d; ">Signup</a>
   <div>
   </div>
</div>
</#if>
</@layout.registrationLayout>