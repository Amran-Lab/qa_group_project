output "endpoint" {
  value = "${aws_eks_cluster.petclinic_eks.endpoint}"
}

output "kubeconfig-certificate-authority-data" {
  value = "${aws_eks_cluster.petclinic_eks.certificate_authority.0.data}"
}
