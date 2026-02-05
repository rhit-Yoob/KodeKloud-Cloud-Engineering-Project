Attach the devops-volume volume to the devops-ec2 instance, make sure to set the device name to /dev/sdb while attaching the volume.

aws ec2 attach-volume --volume-id vol-0e2745432c85e51fe --instance-id i-029ed1e0ad579068e --device /dev/sdb
{
    "VolumeId": "vol-0e2745432c85e51fe",
    "InstanceId": "i-029ed1e0ad579068e",
    "Device": "/dev/sdb",
    "State": "attaching",
    "AttachTime": "2026-02-05T05:58:04.318Z"
}

https://docs.aws.amazon.com/ebs/latest/userguide/ebs-attaching-volume.html

