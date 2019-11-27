# Cyboinsect Keycloak Theme

## Overview

The [Cyboinsect](https://github.com/harshcrop) uses [Keycloak](https://www.keycloak.org/).  Out of the box, the UI provided by Keycloak is 
quite different from the rest of Theme I Build.  But Keycloak allows a customer to provide alternative themes to replace the default
Keycloak themes.  We use this mechanism to provide an Cyboinsect theme.

## Design

The following themes can be replaced.
 
* login
* regitser
* forgot-password
* change password
* admin
 
This projects contains a theme that can be used to replace the login theme to provide
an experience that is consistent with Cyboisect.  

Several approaches are possible.  
1. **Extend the existing themes**.  With this approach, a copy of the default theme is made and selective
edits are made to the theme.  For example, different style sheets can be
used but otherwise the layout provide by Keycloak could stay the same.
2. **Use ADF**.  With this approach, the ADF component is used directly, effectively making Keycloak 
an ADF app.
3. **Custom login page**.  With this approach, a page is provided that uses the same approved Alfresco
styles.

This project currently uses the approach of a custom login page (option #3).

## Implementation

Since Keycloak supports Freemarker, [a template file](./theme/login/login.ftl) is provided along with 
[css styles](./theme/login/resources/css/login.css) and [images](./theme/login/resources/img).

The project also includes improvements to the translated messages for the languages supported by Alfresco.


### Deployment to a standalone Keycloak server
1. After installing Keycloak, navigate to the themes directory as in e.g.
```
 ~/development/keycloak-8.0.0.Final/themes
 ```
2. Create a directory named *Cyboinsect*.  
3. Copy the *login* directory from this project to a *login* directory in the Alfresco theme directory you 
just created
4. Start Keycloak



## Using the Theme 
**NOTE**: These instructions assume you are using a Keycloak realm named *cyboinsect* such as is 
created by the [Cyboinsect Team](https://github.com/harshcrop/).  But you can also apply the theme to the *default* realm or some other realm.
1. Navigate to the admin console for the realm as in e.g. 
```
http://localhost/auth/admin/master/console/#/realms/cyboinsect
```
2. Choose the *Cyboinsect*
theme as [illustrated](./screen-captures/login.png).  Click *Save*.
3. Login to a page in the *Alfresco* realm that requires authentication (e.g. http://localhost/auth/realms/cyboinsect/account) and
you should see a form like this.  

![](screen-captures/register.png)



## More Information

If you want to learn more about how to customize Keycloak themes, go [here](https://www.keycloak.org/docs/4.8/server_development/#_themes).
