# Interpreting Your Connection Assessment Results

The connection assessment test collection runs several different tests to determine your connection quality. These tests analyze connection speed, open ports, traffic routes, and quality of service. At the end of these tests, a graphic is displayed showing the Summary tab by default. An example of a good result looks like this:

![img](/images/conn_res_graphic.png)

The Summary provides several statistics at a glance, along with visual indicators that give a general idea of the quality of the result. Red circles normally mean a bad result, while green circles mean a good result. The red circle next to the message about maximum packet loss along the route being 100% is not unusual and not always indicative of a problem. This happens sometimes because Internet Service Providers (ISPs) or backbone providers block ICMP traffic on certain hops, resulting in the hop returning no results.

At the top of the Summary, complete results for each test can be accessed using the corresponding link next to **Audit report for**. The links next to **Results analysis for** will take you to the knowledge base of our assessment test vendor, which will automatically analyze the results and provide detailed information about any problems found. We encourage you to check these links, as they remove much of the difficulty of manually analyzing results.

You can also review the individual tests using the following tabs on the left side of the graphic:

- **Speed** –upload and download speeds  
- **Firewall** –open and blocked ports
- **Route** – route the test took
- **VoIP** –upload/download, jitter, and loss of sound transmission
- **Summary** –summary of test results
- **Graph** –download and upload speed pie charts and download and upload line graphs
- **RTT** – Roundtrip time consistency

These tabs contain result details and links. Checking the test corresponding to any red warnings may help identify the issue. Information regarding terminology presented by the tests can be found at: <http://www.connectionanalyzer.com/glossary.php> 

When reviewing a test, the key elements to look for are:

1. Sufficient download/upload speed. We recommend at least 100Kbps per user.
2. Download /upload consistency of service of at least 60%. This can be viewed on the audit report for the speed test.
3. Low jitter (<5ms).
4. No packet loss.
5. Necessary firewall ports are open.

While there are many other factors that can affect connection quality, these measures act as good baselines for understanding connection problems. Low consistency, high jitter, and packet loss can all result in packets arriving out of order, needing to be resent, or not arriving at all. This can cause stutters, disconnects, and repeated key presses in lab environments. If any of these measures are outside of the acceptable range, we suggest checking your local network for issues or contacting your ISP. If using a wireless connection, we strongly suggest switching to a wired connection.

If any firewall ports are blocked, the machine remote controllers used to connect to lab VMs may not function. Information about which ports are required can be found in the [Connectivity Requirements](connectivity-requires.html) document.

If you have any questions about the results of a test, please reach out to our helpdesk at **support@learnondemandsystems.com** with a link to one of your audit report pages for assistance.
