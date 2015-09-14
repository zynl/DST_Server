## 1.安装（Debian)
```sh
apt-get update
apt-get install -y git vim screen
git clone https://github.com/zynl/DST_Server.git
cd ~/DST_Server
chmod 755 * && ./install.sh
```
按`control` + `c`键退出`screen`

## 2.上传server_token.txt文件
打开steam上的`Don't Starve Together Beta`, 点击`play`，接着按键盘左上角`ESC`下的
`~`键打开控制台，输入
```cmd
TheNet:GenerateServerToken()
```
生成`C:\Documents\Klei\DoNotStarveTogether\server_token.txt`文件，用如`WinSCP`等
软件上传到服务器`~/.klei/DoNotStarveTogether/`目录下
## 3.配置文件设置
用`vim`修改配置文件，`vim`用法详情`baidu`或`google`
```sh
cp ~/DST_Server/setting.ini ~/.klei/DoNotStarveTogether/settings.ini
cp ~/DST_Server/worldgenoverride.lua ~/.klei/DoNotStarveTogether/worldgenoverride.lua
cp ~/DST_Server/dedicated_server_mods_setup.lua /home/steam/steamapps/DST/mods/dedicated_server_mods_setup.lua
vim ~/.klei/DoNotStarveTogether/settings.ini #服务器设置
vim ~/.klei/DoNotStarveTogether/worldgenoverride.lua #游戏世界属性设置
vim /home/steam/steamapps/DST/mods/dedicated_server_mods_setup.lua #mod安装设置
```
## 4.运行游戏
```sh
~/DST_Server/start_dst.sh
```
## 5.游戏更新
```sh
~/DST_Server/update_dst.sh
```
## 6.补充

#### 服务器要求（建议1G内存，1M带宽以上）
- Internet (上传) = 8Kbytes/player/s
- 内存 = 65Mbytes/player

#### 查询[服务器列表](http://dstservers.jacklul.com/),验证是否搭建成功
## 7.官方[wiki](http://dont-starve-game.wikia.com/wiki/Guides/Don%E2%80%99t_Starve_Together_Dedicated_Servers)
