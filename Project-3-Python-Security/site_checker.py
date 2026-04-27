# Project 4: Python-Based Security Protocol Checker

**Date:** April 2026
**Objective:** To automate the identification of insecure HTTP protocols across multiple web assets.

## Tools Used
* **Python 3:** For automation and logic.
* **Requests Library:** To handle HTTP/HTTPS web requests.
* **Kali Linux:** Development environment.

## The Script
The script iterates through a list of URLs and checks if the final connection is secured via TLS (HTTPS). If a site is using insecure HTTP, it flags it as **[VULNERABLE]**.

## Findings from Testing
During testing, I discovered that some sites (like `scraping.pro`) automatically redirect from HTTP to HTTPS. My script followed these redirects and confirmed the final secure state, showing how modern servers attempt to enforce security.

![Sitechecker](Screenshot_2026-04-27_14_56_28.png)
  
## SOC Analyst Recommendation
Security teams should use automation like this to regularly audit company subdomains. Any site still allowing insecure HTTP without a redirect to HTTPS should be prioritized for an SSL/TLS certificate update to prevent credential sniffing.
