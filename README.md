# docker_practice
docker container practice

:pushpin:`========== [Docker簡介] ==========`  
Docker三大元素：
1. Repository倉庫 > Docker hub
2. Images映像檔 > 產生container
3. Container容器 > 主角
Dockerfile是什麼?
Dockerfile是一連串指令，用來製造Docker image用的

:pushpin:`========== [虛擬機器 vs. 容器] ==========`  
虛擬機器：
在系統層以上做虛擬化，由Hypervisor負責管理，有Host OS和Guest OS兩種角色

容器：
在作業系統層以上虛擬化，不需另外安裝作業系統，需求的容量降低，且啟動速度更快

:pushpin:`========== [搜尋docker hun上面或是private repository的images] ==========`  
docker search ubuntu 搜尋名稱ubuntu的image
docker search –filter stars=500 ubuntu搜尋stars有500以上的ubuntu image
docker search ---filter is-official=true ubuntu搜尋ubuntu的image，且是官方版
docker search ubuntu –no-trunc搜尋ubuntu的image，且description不能擷取no truncate

:pushpin:`========== [顯示所有的images] ==========`  
docker images列出全部的images映像檔
docker pull java從docker hub拉java image下來 或從你自己的private repository拉下來
再輸入docker images就會出現剛剛pull下來的image
docker ps 列出正在運行的container
docker ps -a 列出所有的container

:pushpin:`========== [執行container] ==========`  
docker run IMAGE_ID用參數IMAGE_ID run
docker run –name NMAE_YOURSELF 參數—name代表自己取一個container的名子後run 起來
docker run IMAGE_ID -d 參數-d代表用detach模式跑container，就不會直接output container任何cmd的結果
docker run IMAGE_ID -it 參數it代表用互動模式interactive mode run docker
docker run -it IMAGE bash 用bash執行互動模式的container

:pushpin:`========== [結束container] ==========`  
docker top CONTAINER_ID 停止container
docker rm CONTAINER_ID 移除container
