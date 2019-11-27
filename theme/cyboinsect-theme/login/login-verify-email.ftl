<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    
        <#--  ${msg("emailVerifyTitle")}  -->
    <#if section = "form">       
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet"/> 
        <div class="limiter">
		<div class="container-vf">
			<div class="wrap-vf">
				<div class="vf-form-title" style="background-color:#f0e3f4">
                <div>
                <img src="${url.resourcesPath}/img/favicon.png" atl="logo" />
					</div>
                    <span class="vf-form-title-1">
						Email Verification
					</span>
				</div>

				<p style="font-size:16px;" class="instruction">
            ${msg("emailVerifyInstruction1")}
        </p>
        <p style="font-size:16px;" class="instruction">
            ${msg("emailVerifyInstruction2")}
        </p>
        <p style="font-size:16px;" class="instruction">Click here to re-send the email</p>
					<div class="container-vf-form-btn">
                    
                    <a href="${url.loginAction}"> 
						<button class="vf-form-btn">
						Re-Send
						</button>
                        </a>
					</div>
			
			</div>
		</div>
	</div>
    </#if>
</@layout.registrationLayout>