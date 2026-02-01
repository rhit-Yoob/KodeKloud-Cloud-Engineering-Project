There is an EC2 instance named xfusion-ec2 under us-east-1 region, enable the stop protection for this instance.

aws ec2 modify-instance-attribute --instance-id i-0cf1af7f339ccd42e --disable-api-stop

