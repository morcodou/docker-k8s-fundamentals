kubectl apply -f .\smtp\globosmtp.yml
kubectl apply -f .\seq\globoseq.yml
kubectl apply -f  .\sql\globosql.yml

kubectl apply -f .\nginx\deploy_nginx.yml

kubectl create secret generic globoconn-secrets --from-literal=ConnectionStrings__IS4DbConnection="Server=globodb-service,1434;Database=GlobomanticsIdSrv;User Id=sa;Password=Y0urStr0ngPassw0rd;MultipleActiveResultSets=true;" --from-literal=ConnectionStrings__GlobomanticsDb="Server=globodb-service,1434;Database=Globomantics;User Id=sa;Password=Y0urStr0ngPassw0rd;MultipleActiveResultSets=true;"
kubectl apply -f .\is4\globois4.configmap.yml
kubectl apply -f .\is4\globois4.yml

kubectl create secret tls idlocal-tls --key=.\tls\id-local.key --cert=.\tls\id-local.crt

# kubectl apply -f .\ingress\globo-ingress.yml