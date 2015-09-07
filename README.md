# 饥荒服务器搭建教程
---
## 1.安装（Debian 7.x)
```shell
sudo apt-get install -y git vim
git clone https://github.com/zynl/DST_Server.git
cd ./DST_Server
chmod 700 *.sh && ./install.sh
```
## 2.获取Server_Tokens
打开steam上的`Don't Starve Together Beta`, 点击`play`，接着按键盘左上角`ESC`下的`~`键打开控制台，输入
```cmd
TheNet:GenerateServerToken()
```
在路径`C:\Documents\Klei\DoNotStarveTogether\server_token.txt`就会生成Server_Tokens码（写入setting.ini文件）
## 3.配置文件设置
用`vim`修改配置文件，`vim`用法详情`baidu`或`google`
```shell
vim ~/DST_Server/setting.ini #密码模式设置
vim ~/DST_Server/worldgenoverride.lua #游戏世界设置
vim ~/DST_Server/dedicated_server_mods_setup.lua #mod安装设置
vim ~/DST_Server/modsettings.lua #启用mod设置
```
```shell
cp ~/DST_Server/setting.ini ~/.klei/DoNotStarveTogether/settings.ini
cp ~/DST_Server/worldgenoverride.lua ~/.klei/DoNotStarveTogether/worldgenoverride.lua
cp ~/DST_Server/dedicated_server_mods_setup.lua /home/steam/steamapps/DST/mods/dedicated_server_mods_setup.lua
cp ~/DST_Server/modsettings.lua /home/steam/steamapps/DST/mods/modsettings.lua
```
## 4.运行游戏
```shell
/DST_Server/start_dst.sh
```
## 5.游戏更新
```shell
/DST_Server/update_dst.sh
```
## 6.补充

#### 服务器要求（建议1G内存，1M带宽以上）
- Internet (上传) = 8Kbytes/player/s
- 内存 = 65Mbytes/player

#### 查询[服务器列表](http://dstservers.jacklul.com/),验证是否搭建成功
## 7.官方[wiki](http://dont-starve-game.wikia.com/wiki/Guides/Don%E2%80%99t_Starve_Together_Dedicated_Servers)
