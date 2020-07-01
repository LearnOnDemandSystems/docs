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
