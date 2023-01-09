resource "aws_ebs_volume" "Name" {
  availability_zone = "zone1"
  size              = "size1"

  tags = {
    Name = "ebsvolume"
  }
}

resource "aws_ebs_snapshot" "Name_snapshot" {
  volume_id = "aws_ebs_volume.Name.id"

  tags = {
    Name = "ebs_snapshot"
  }
}