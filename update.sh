# Copy helm charts package from project
cp -u -p ../helloworldnodejs/helm3/*.tgz .
cp -u -p ../helloworldspringboot/helm3/*.tgz .
# Update index file
helm repo index . 
# Update to repo
git add .
git commit -m "Update helm charts packages"
git push -u origin main
# Refresh local repo
helm repo update



