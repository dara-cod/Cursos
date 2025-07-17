resource "aws_subnet" "eks_subnet_public_1a" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.region}a"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "comunidaddevops-subnet-1a",
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "eks_subnet_public_1b" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.region}b"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "comunidaddevops-subnet-1b",
      "kubernetes.io/role/elb" = 1
    }
  )
}


resource "aws_subnet" "eks_subnet_public_1c" {
  vpc_id     = aws_vpc.eks_vpc.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "comunidaddevops-subnet-1c"
  }
}

resource "aws_subnet" "eks_subnet_public_1d" {
  vpc_id     = aws_vpc.eks_vpc.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "comunidaddevops-subnet-1d"
  }
}