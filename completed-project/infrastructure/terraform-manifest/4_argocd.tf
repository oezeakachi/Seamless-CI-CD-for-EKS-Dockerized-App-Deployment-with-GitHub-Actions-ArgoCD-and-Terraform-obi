# 4_argoCD.tf
resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  version          = "4.9.7"
  create_namespace = true

  values = [
    # Define the value to expose the server service as LoadBalancer
    <<-EOF
    server:
      service:
        type: LoadBalancer
    EOF
  ]

  depends_on = [module.eks-cluster]
}
