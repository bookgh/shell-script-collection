#!/usr/bin/env bash



script_get() {
    print_massage "不用下载" "Do not download"
}

script_install() {
    if [[ -f /usr/local/bin/sys-mes ]];then
        print_massage "1.检测到当前系统已安装" "1.Detected that the current system is installed"
        exit
    fi
    
    test_bin sys-mes

	print_massage "sys-mes命令安装完成" "The sys-mes command is installed"
	print_massage "安装目录：/usr/local/bin/sys-mes" "Install Dir：/usr/local/bin/sys-mes"
	print_massage "使用：sys-mes" "Use：sys-mes"
}

script_remove() {
	rm -rf /usr/local/bin/sys-mes
    
    [ -f /usr/local/bin/sys-mes ] && print_error "1.sys-mes未成功删除，请检查脚本" "1.sys-mes unsuccessfully deleted, please check the script" || print_massage "sys-mes卸载完成！" "sys-mes Uninstall completed！"
}

script_info() {
	print_massage "名字：sys-mes" "Name：sys-mes"
	print_massage "版本：1.0" "Version：1.0"
	print_massage "介绍：系统信息查询命令" "system information query command"
    print_massage "作者：日行一善" "do one good deed a day"
}
