# Episode 5: Extracting Dynatrace Configuration with Monaco

- Download Dynatrace configuration backups with a single command

## Video / Content

[![Episode 5](https://img.youtube.com/vi/G02fIMIy-wg/0.jpg)](https://www.youtube.com/watch?v=G02fIMIy-wg)

## Quick Explanation
This script uses [Monaco](https://dynatrace-oss.github.io/dynatrace-monitoring-as-code/) to download a backup of all Dynatrace configuration from a given tenant.

1) Create a Dynatrace access token with the [required permissions](https://dynatrace-oss.github.io/dynatrace-monitoring-as-code/configuration/configTypes_tokenPermissions).
2) Replace the variables below with your details.
3) Run the script and look for a folder called `dt_backup` in the same directory.

```

curl -L https://raw.githubusercontent.com/dynatrace-perfclinics/community-tips-tricks/main/ep5/dt_backup.sh \
| bash -s -- \
https://abc12345.live.dynatrace.com \
dt0c01.sample.secret
```

## Problems or Issues?
If the error appears to be coming from the shell script wrapper, [create an issue in this repo]() and tag `@agardnerit`.

If the error appears to be coming from the Monaco tool, [create an issue in the Monaco repo](https://github.com/dynatrace-oss/dynatrace-monitoring-as-code/issues/new/choose) and the Monaco maintainers will investigate.
