# Episode 13: Automatic Infrastructure Rightsizing with Dynatrace Workflows

- [Dynatrace Workflows](https://dynatr.ac/43KcuQb)
- [DQL (Dynatrace Query Language)](https://dynatr.ac/3Kk0aiD)

Code Snippets below video!

## Video / Content

[![Episode 13](https://img.youtube.com/vi/dGWlnd1lNGQ/0.jpg)](https://www.youtube.com/watch?v=dGWlnd1lNGQ)

## Code Snippets and Screenshots shown in the Video

*Get_cpu query - workflow #1*
```
timeseries CPU = avg(dt.host.cpu.usage), from:now()-30d, to:now(), interval:30d, by:{dt.entity.host}
| lookup sourceField:dt.entity.host, lookupField:id, [fetch dt.entity.host]
| filter isNotNull(lookup.azureEnvironment)
| filter CPU[1]>90 OR CPU[1]<15
| fields Host = dt.entity.host,CPU=CPU[1]
```

*Hosts for resizing - workflow #2*
```
data record(description="{{ event()['issuedescription'] }}")
| parse description, "LD:Host SPACE LD DOUBLE:Cpu"
| lookup sourceField:Host, lookupField:id, prefix:"Azure", [
fetch dt.entity.host | fieldsAdd Group=azureResourceGroupName, T=toString(tags)
]
| parse AzureT, "LD 'AzureSubscriptionID:'LD:AzureSubID'\"'"
| parse AzureT, "LD 'AzureDownsize:'LD:AzureDown'\"'"
| parse AzureT, "LD 'AzureUpsize:'LD:AzureUp'\"'"
| fieldsAdd AzureName = Azureentity.name
| fieldsKeep Cpu,AzureGroup, AzureSubID, AzureDown, AzureUp, AzureName
```

*Jira Automation Rule that pushes the Approval Event to Dynatrace*
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
