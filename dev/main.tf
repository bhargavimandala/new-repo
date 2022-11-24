module "ec2-dev" {
    source = "git@github.com:bhargavimandala/terraform-aws-ec2-module.git?ref=v1.2"
    ami = "ami-04706e771f950937f"
    instance_type = "t2.micro"
    product = "tesla"
    environment = "dev"
    key_name = "myaws"
    vpc_id = "vpc-003aa9bde553f8665"
    ec2_count = 3
    ebs_volume_count        = 2
    ec2_ebs_volume_size     = [2, 5]
    ec2_device_names        = ["/dev/sdd", "/dev/sde"]
    subnet_ids              = ["subnet-068149b088bb5371a", "subnet-027e1312d76fed1a1", "subnet-0ce6f355fce16536e"]
    availability_zones      = ["eu-west-2a","eu-west-2b", "eu-west-2c"]
    terraform_repo          = "https://github.com/bhargavimandala/ec2-setup.git"
    costcode = 123
} 