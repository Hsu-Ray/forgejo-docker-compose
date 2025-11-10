# forgejo的端口为3000
# ip变化需要更改app.ini文件中的DOMAIN、SSH_DOMAIN、ROOT_URL、LOCAL_ROOT_URL
vim /opt/stack/forgejo/fjdata/gitea/conf/app.ini
# 更改compose.yaml文件中的相关ip地址
vim /opt/stack/forgejo/compose.yaml

# 重新启动forgejo服务
sudo -i
cd /opt/stack/forgejo
docker compose down
docker compose up -d
docker compose logs -f
