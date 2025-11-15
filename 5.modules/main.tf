provider "aws" {
    region = "us-east-1"
}

# Create Infra for Testing Env.
module "Testing-Env" {
  source = "./modules/base_infra"

  vpc_cidr = "10.1.0.0/16"
  public_subnet1_cidr = "10.1.1.0/24"
  public_subnet2_cidr = "10.1.2.0/24"
  public_subnet3_cidr = "10.1.3.0/24"
  vpc_name = "TESTVPC-1"
  IGW_name = "TESTVPC-1-IGW"
  public_subnet1_name = "Test_Env_Subnet1-testing"
  public_subnet2_name = "Test_Env_Subnet2-testing"
  public_subnet3_name = "Test_Env_Subnet3-testing"
  Main_Routing_Table = "Test_Env_Main-testing"
  key_name = "manohar"
  environment = "test"
  azs = ["us-east-1a", "us-east-1b", "us-east-1c"]
  cidrs = ["10.1.1.0/24", "10.1.1.0/24", "10.1.1.0/24"]

}


# Create Infra for Development Env.
module "Dev-Env" {
  source = "./modules/base_infra"

  vpc_cidr = "172.16.0.0/16"
  public_subnet1_cidr = "172.16.1.0/24"
  public_subnet2_cidr = "172.16.2.0/24"
  public_subnet3_cidr = "172.16.3.0/24"
  vpc_name = "DevVPC-1"
  IGW_name = "DevVPC-1-IGW"
  public_subnet1_name = "Dev_Env_Subnet1-Deving"
  public_subnet2_name = "Dev_Env_Subnet2-Deving"
  public_subnet3_name = "Dev_Env_Subnet3-Deving"
  Main_Routing_Table = "Dev_Env_Main-Deving"
  key_name = "manohar"
  environment = "Dev"
  
}


# Create Infra for Production Env.
module "Prod-Env" {
  source = "./modules/base_infra"

  vpc_cidr = "192.168.0.0/16"
  public_subnet1_cidr = "192.168.1.0/24"
  public_subnet2_cidr = "192.168.2.0/24"
  public_subnet3_cidr = "192.168.3.0/24"
  vpc_name = "ProdVPC-1"
  IGW_name = "ProdVPC-1-IGW"
  public_subnet1_name = "Prod_Env_Subnet1-Proding"
  public_subnet2_name = "Prod_Env_Subnet2-Proding"
  public_subnet3_name = "Prod_Env_Subnet3-Proding"
  Main_Routing_Table = "Prod_Env_Main-Proding"
  key_name = "manohar"
  environment = "Prod"
  
}