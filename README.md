# Emmanuel-s-projects
#Project : Network Traffic Analysis & Credential Extraction
#Date: April 2026
#Objective: To demonstrate the security risks of unencrypted HTTP traffic by intercepting login credentials in a simulated banking environment.
##Tools Used:
*Kali Linux: Primary OS for investigation.
*Wireshark: To capture and analyze network packets.
*Chromium: To access the vulnerable web application.
##The Process:
*Capture: I initiated a live packet capture on my wireless interface (wlan0) using Wireshark.
*Simulation: I navigated to demo.testfire.net and submitted a test login (Username: Jsmith, Password: Demo1234).
*Filtering: I used the display filter “http” to isolate the authentication traffic from thousands of other packets.
##Findings:
*Because the website uses HTTP (Port 80) instead of HTTPS (Port 443), the data was sent in "clear text."
By using the "Follow HTTP Stream" feature, I was able to reconstruct the communication and see the password “Demo1234” clearly.
##SOC Analyst Recommendation:
Organizations must enforce TLS 1.2+ (HTTPS) for all login pages to prevent Man-in-the-Middle (MITM) attacks.
