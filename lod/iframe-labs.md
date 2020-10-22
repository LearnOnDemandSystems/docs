---
title: "Iframe Integrated Labs"
description: "Considerations for labs that are integrated into an iframe."
isPublished: true
---

# Labs that use an iframe integration

### What is an iframe?
An iframe is used to display a web page within a web page. Iframes are a great way to customize the look and feel for users that launch labs, but sometimes an iframe can cause issues that aren't seen when launching lab directly in Lab on Demand. 

For more information about setting up and configuring iframes, read [HTML iframe syntax by W3 Schools](https://www.w3schools.com/html/html_iframe.asp).

## 3rd Party Cookies 

Lab on Demand (LOD) uses session cookies to ensure secure access to labs. If 3rd party cookies are blocked by the browser, the lab is unable to be displayed within the iframe web page. 

If a lab uses an iframe integration to display the lab, 3rd party cookies must not be blocked by the web browser used to access the lab. If 3rd party cookies are blocked, an _Access Denied_ message will be displayed when launching the lab. Most web browsers do not block 3rd party cookies by default. If you're browser is blocking 3rd party cookies, please check with the browser's vendor to learn more about how third party cookies may be blocked.

### Allow 3rd Party Cookies 

To allow 3rd party cookies in your browser, select your browser below for assistance allowing cookies: 
 
- [Google Chrome](https://support.google.com/chrome/answer/95647?co=GENIE.Platform%3DDesktop&hl=en)
- [Microsoft Edge](https://support.microsoft.com/en-us/search?query=enable%20cookies%20in%20edge)    
- [Mozilla Firefox](https://support.mozilla.org/en-US/kb/disable-third-party-cookies)

## X-Frame-Options

The X-Frame-Options header determines whether a webpage can be embedded into another page as decided by the site owner. Learn on Demand Systems does not set the X-Frame-Options header in the lab client.

- If the header is not set, there are no restrictions placed on where the site may be embedded.
- When set to Sameorgin, the site may only be displayed in pages belonging to the same website.
- When the header is set to Deny, the site may not be displayed within another site. 

More information regarding X-Frame-Options is available in the [Mozilla X-Frame-Options Documentation](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options)