provider "aws"{
 region="ap-south-1"
}
resources "aws_instance" "tfhost"{
  count = "1"
  ami = "ami-0756a1c858554433e"
  instance_type = "t2.micro"
  key_name = "AWSkeyPair"
  subnet_id = "subnet-0242b70ac96647ea2"
  security_groups = "sg-04e202b7892bb5833"
  tags={
  Name = "tfhost"
  Env = "dev"
 }
}
