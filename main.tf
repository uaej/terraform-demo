provider  "aws" {
 region = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-024ea438ab0376a47" 
  instance_type = "t2.micro"
}
