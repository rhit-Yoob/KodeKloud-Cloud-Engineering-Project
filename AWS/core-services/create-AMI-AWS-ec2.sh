# Create AMI from EC2 instance
aws ec2 create-image --instance-id i-058cc2fda8f853f24 --name "xfusion-ec2-ami" --description "ami" --no-reboot
