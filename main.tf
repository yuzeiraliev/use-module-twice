
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}

module "module_us_east_1" {
  source = "./module"

  instance_type = "t2.micro"
  instance_name = "Instance-us-east-1"

  providers = {
    aws = aws.us-east-1
  }
}

module "module_us_west_2" {
  source = "./module"

  instance_type = "t2.micro"
  instance_name = "Instance-us-west-2"

  providers = {
    aws = aws.us-west-2
  }
}


