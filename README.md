# AWS-S3-File-Gateway-Monitor

This readme would guide you to configure the AWS CloudWatch Dashboard for AWS S3 File Gateway.

## Edit clodWatchDashboard.json

Make sure to find and replace below information in the clodWatchDashboard.json file and then create the dashboard
- Cache Volume ID, Gateway Name, Gateway ID, Gateway EC2 instance ID

## Monitor and Tune
After creating the Amazon CloudWatch Dashboard, start the backup to generate load and populate the graphs. This helps in tuning the Storage Gateway EC2 instance. A reasonable load/data is needed to view metrics on the dashboard. Here's how to begin the tuning process:
- Verify metrics allocated and consumed as per Table 1: 
    - If all metrics are consumed to the max allocated, the Storage Gateway is optimally used.
    - If one metric is maxed out while others are lower, identify the bottleneck. If scalable, increase the resource. Otherwise, upgrade the Storage Gateway instance type.
    - If metrics are not maxed out, add more RMAN channels or databases to be backed up simultaneously.
- Configure RMAN channels to use the SECTION SIZE parameter for parallel backup of data files.
- Test backups with different SECTION SIZE values to find the optimal size.
- Adjust the number of RMAN channels to find the point of diminishing returns.
- Add more Storage Gateways to reduce backup time or support more parallel database backups.
- Stagger backups for hundreds of Oracle databases to avoid throttling or underutilizing resources:
    -  Monitor the dashboard to orchestrate parallel backups and optimize resource use.
- Performance tuning is iterative and should have a clear end goal, e.g., completing database X backup in N hours.