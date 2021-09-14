# if your terminal shows the message →E: Sub-process /usr/bin/dpkg returned an error code (1)
cd /var/lib/dpkg/
sudo mv info/ info_bak          # 將現有info資料夾更名
sudo mkdir info                 # 再新建一個新的info資料夾
sudo apt-get update             # 更新
sudo apt-get -f install         # 修復
sudo mv info/* info_bak/        # 執行完上一步操作後會在新的info資料夾下生成一些文件，將這些文件全部移到info_bak資料夾下
sudo rm -rf info                # 把自己新建的info資料夾删除
sudo mv info_bak info           # 把以前的info資料夾改回原本名字
