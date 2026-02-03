There is an instance named devops-ec2 and an elastic-ip named devops-ec2-eip in us-east-1 region. Attach the devops-ec2-eip elastic-ip to the devops-ec2 instance.

aws ec2 associate-address --instance-id i-0b018d28ada269cc5 --allocation-id eipalloc-08add820a3553acd4

https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/working-with-eips.html
