data "aws_ebs_volume" "ebs_volume1" { 

  filter { 

    name   = "volume-id" 

    values = ["vol-04a2cc478afd76042"] 

  } 

  filter { 

    name   = "volume-type" 

    values = ["gp2"] 

  } 

} 

 

resource "aws_ebs_snapshot" "example_snapshot" { 

  volume_id = "vol-04a2cc478afd76042" 

  tags = { 

    Name = "ebs-sample-snapshot" 

  } 

} 
