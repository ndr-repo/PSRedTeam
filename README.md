# PSRedTeam
Disclaimer: I am not responsible for your actions. Use these tools ethically and responsibly.

## Setup
```
git clone https://github.com/ndr-repo/PSRedTeam.git
powershell -noexit -ExecutionPolicy Bypass -File <path-to-script>.ps1
```
## User Enumeration - Network (Web Applications)
### GitHub
#### Enumerate-GitHubOrgMembers.ps1
```
Enumerate-GitHubOrgMembers.ps1 <gh-org-name>
```
### WordPress
#### Enumerate-WordPressOrgMembersREST.ps1
PoC for CVE-2017-5487
```
Enumerate-WordPressOrgMembersREST.ps1 <target-domain>
```
![image](https://github.com/user-attachments/assets/9598bbf8-74a5-4e6b-b5df-4789d59d9ae9)
#### Enumerate-WordPressOrgMembersREST-Bypass1.ps1
Alternate API route for WAF Bypass - CVE-2017-5487
```
Enumerate-WordPressOrgMembersREST-Bypass1.ps1 <target-domain>
```

![image](https://github.com/user-attachments/assets/a560e447-9dc0-40a9-a041-02bcfe7b0faa)

## Windows Post-Exploitation
### AMSI Reference
![AMSI7Archi-1](https://github.com/user-attachments/assets/fc9df6ac-7ad8-47a9-ad21-fb33836ed406)
### Sys32ACLs.ps1
Enumerates access control for executables in Windows\System32
```
powershell -noexit -ExecutionPolicy Bypass -File .\Sys32ACLs.ps1
```
![image](https://github.com/user-attachments/assets/8d48fc9b-aee8-4d2f-b162-5d22c67bbcc9)


