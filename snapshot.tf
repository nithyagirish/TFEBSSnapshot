resource "aws_ebs_volume" "example" {
  availability_zone = "zone1"
  size              = "size1"
  type              = "type1"
  encrypted         = "true"

  tags = {
    Name = "ebsvolume"
  }
}

resource "aws_ebs_snapshot" "example_snapshot" {
  volume_id = aws_ebs_volume.example.id

  tags = {
    Name = "ebsvolume_snapshot"
  }
}
