# Episode 13: Automatic Infrastructure Rightsizing with Dynatrace Workflows

- [Dynatrace Workflows](https://dynatr.ac/43KcuQb)
- [DQL (Dynatrace Query Language)](https://dynatr.ac/3Kk0aiD)

## Video / Content

[![Episode 13](https://img.youtube.com/vi/dGWlnd1lNGQ/0.jpg)](https://www.youtube.com/watch?v=dGWlnd1lNGQ)

## Code Snippets and Screenshots shown in the Video

Jira Automation Rule that pushes the Approval Event to Dynatrace
```
{
    "eventType": "CUSTOM_INFO",
    "title": "Jira approval granted: {{issue.key}}",
    "properties": {
       "issuekey": "{{issue.key}}",
       "issueurl": "{{issue.url}}",
       "issueid": "{{issue.id}}",
       "issuedescription": "{{issue.description.replaceAll("(\n)",",")}}"
      }
}
```
