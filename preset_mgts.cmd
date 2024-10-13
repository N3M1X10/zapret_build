set BIN=%~dp0zapret\zapret-winws\
start "zapret: mgts" /min "%BIN%winws.exe" ^
--wf-tcp=80,443,50000-65535 --wf-udp=443,50000-65535 ^
--filter-udp=443 --hostlist="%BIN%list-general.txt" --dpi-desync=fake --dpi-desync-udplen-increment=10 --dpi-desync-repeats=6 --dpi-desync-udplen-pattern=0xDEADBEEF --dpi-desync-fake-quic="%BIN%quic_initial_www_google_com.bin" --new ^
--filter-udp=50000-65535 --dpi-desync=fake,tamper --dpi-desync-any-protocol --dpi-desync-fake-quic="%BIN%quic_initial_www_google_com.bin" --new ^ --filter-tcp=80 --dpi-desync=split --dpi-desync-ttl=4 --dpi-desync-fooling=md5sig --new ^
--filter-tcp=443 --hostlist="%BIN%list-general.txt" --dpi-desync=fake,split2 --dpi-desync-ttl=2 --dpi-desync-split-pos=1 --dpi-desync=fake,disorder2 --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig