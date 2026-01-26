# Name of the security group is nautilus-sg., The description must be Security group for Nautilus App Servers
aws ec2 create-security-group --group-name nautilus-sg --description "Security group for Nautilus App Servers"

# Add the inbound rule of type HTTP, with port range of 80. Enter the source CIDR range of 0.0.0.0/0.
aws ec2 authorize-security-group-ingress --group-id sg-082ece030c262a8fa --protocol tcp --port 80 --cidr 0.0.0.0/0

# Add another inbound rule of type SSH, with port range of 22. Enter the source CIDR range of 0.0.0.0/0.
aws ec2 authorize-security-group-ingress --group-id sg-082ece030c262a8fa --protocol tcp --port 22 --cidr 0.0.0.0/0

