Import-Module AWSPowerShell
New-Item -Path "C:\temp" -ItemType Directory -Force
Read-S3Object -BucketName aws-codedeploy-us-east-1 -Key latest/codedeploy-agent.msi -File C:\temp\codedeploy-agent.msi
msiexec /i C:\temp\codedeploy-agent.msi /qn /l C:\temp\host-agent-install-log.txt