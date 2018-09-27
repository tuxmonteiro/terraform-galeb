data "aws_ami" "oficial" {
  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "tag:Name"
    values = ["OracleLinux 7 OFICIAL ENA"]
  }

  most_recent = true
}

resource "aws_launch_template" "galeb_template" {
  name_prefix = "galeb_template"
  image_id = "${data.aws_ami.oficial.id}"
  instance_type = "t2.micro"
  iam_instance_profile {
    arn = "arn:aws:iam::185565106143:instance-profile/allow-s3-apikeys-galeb"
  }
  vpc_security_group_ids = ["sg-55c5f233"]

  tag_specifications {
      resource_type = "instance",
      tags {
          equipe-id = 292
          cliente-id = e7e5602cdbe3cb409fc15458dc9619a1
          sub-componente-id = 2226a7fddb9f43409fc15458dc96197e
          servico-de-negocio-id = 39cf5f75db9f43409fc15458dc961990
          consumo-detalhado = false
          processo-id = 7a9456320f328700fd7f91dbe1050e27
          componente-id = ce72e379db9f43409fc15458dc961964
        }
    },
    {
      resource_type = "volume",
      tags {
          equipe-id = 292
          cliente-id = e7e5602cdbe3cb409fc15458dc9619a1
          sub-componente-id = 2226a7fddb9f43409fc15458dc96197e
          servico-de-negocio-id = 39cf5f75db9f43409fc15458dc961990
          consumo-detalhado = false
          processo-id = 7a9456320f328700fd7f91dbe1050e27
          componente-id = ce72e379db9f43409fc15458dc961964
        }
    }

}
