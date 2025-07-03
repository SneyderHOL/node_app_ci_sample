ssh -o StrictHostKeyChecking=no root@200.123.123.12 touch <<HTML
    cd /var/www/masterclass-actions

    git pull --rebase origin main
HTML