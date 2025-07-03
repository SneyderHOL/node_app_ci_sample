BRANCH=$1

if [ "$BRANCH" == "main" ]; then
    DEPLOY_PATH="/home/azureuser/node_app_ci_sample"
else
    DEPLOY_PATH="/home/azureuser/staging"
fi

ssh -o StrictHostKeyChecking=no root@200.123.123.12 touch <<HTML
    cd $DEPLOY_PATH

    git pull --rebase origin $BRANCH
HTML