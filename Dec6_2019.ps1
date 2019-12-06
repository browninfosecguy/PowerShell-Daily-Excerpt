#PowerShell one liner to retrieve information on a domain from virustotal.com/ 
#In order for this you need an API Key, which is available once you sign up for free account
#API documentation can be found at https://developers.virustotal.com/

Invoke-RestMethod -uri 'https://www.virustotal.com/vtapi/v2/domain/report?apikey=<SIGN UP AT VIRUS TOTAL>&domain=27lelchgcvs2wpm7.laverhants.link'