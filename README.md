# waf_lua
    本次只实现了ip黑白名单，以后跟随学习进度进行添加。可能由于刚接触lua，认识比较浅显，有不足之处还请指出。
使用方法:
   1)将脚本放在/application/nginx/conf/目录下
   2) 在nginx.conf的http模块添加如下:
        lua_package_path "/application/nginx/conf/waf/?.lua";
        init_by_lua_file  /application/nginx/conf/waf/init.lua;
        access_by_lua_file /application/nginx/conf/waf/waf.lua;

  
       
  
