
## GCP Buckets

## Installing and using rclone: 

### Install Rclone
```
  $ curl https://rclone.org/install.sh | sudo bash
```

### Configure a new remote target (use project name for rclone target)
```
  $ rclone config
```

### Rclone config lives here:
```
  $ vim ~/.config/rclone/rclone.conf
```

### Rclone Usage

```
  # List all buckets in a project
  $ rclone lsd <target>:

  # Create a bucket in a project
  $ rclone mkdir <target>:bucket-name 

  # List files in the bucket (in a project)
  $ rclone ls <target>:bucket-name

  # Copy files to a bucket
  $ rclone cp <file> <target>:bucket-name
  $ rclone copy README.md calendar-1-16:first-bucket-00
```

IntuitionRobotics.com -> Production -> DialogFlowagents 1-16-agents -> calendar-1-16

Project: calendar-1-16
- Bucket: first-bucket-00/
  - File: first-bucket-00/test-file.txt

