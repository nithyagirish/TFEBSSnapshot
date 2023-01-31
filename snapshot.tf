data "aws_ebs_volume" "ebs_volume1" { 

  filter { 

    name   = "volume-id" 

    values = ["volumeid1"] 

  } 

  filter { 

    name   = "volume-type" 

    values = ["volumetype1"] 

  } 

} 

 

resource "aws_ebs_snapshot" "example_snapshot" { 

  volume_id = "volumeid1" 

  tags = { 

    Name = "ebs-sample-snapshot" 

  } 

} 


 

resource "aws_ebs_volume" "sample" { 

  encrypted = true 

  type = "volumetype2" 

  snapshot_id = "${aws_ebs_snapshot.example_snapshot.id}" 

  availability_zone= "${data.aws_ebs_volume.ebs_volume1.availability_zone}" 

  tags = { 

    Name = "ebs-sample-volume" 

  } 

} 
