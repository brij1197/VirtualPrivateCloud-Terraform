#Elastic IP for nat gateway
resource "aws_eip" "gat_gw_eip"{
    vpc=true
    tags = {
      Name = "Cyber_Elastic_IP"
    }
}