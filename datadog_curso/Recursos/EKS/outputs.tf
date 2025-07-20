output "cluster_endpoint" {
  value = aws_eks_cluster.eks.endpoint
}

output "cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "kubeconfig" {
  value = aws_eks_cluster.eks.certificate_authority[0].data
}
