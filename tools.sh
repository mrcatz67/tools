R='\033[1;31m'; W='\033[1;37m'; NC='\033[0m'

VERSION="5.0"

banner() {
  clear
  echo -e "${R}"
  echo '██████╗  █████╗ ██╗   ██╗███████╗██╗   ██╗███████╗'
  echo '██╔══██╗██╔══██╗╚██╗ ██╔╝╚══███╔╝██║   ██║╚══███╔╝'
  echo '██████╔╝███████║ ╚████╔╝   ███╔╝ ██║   ██║  ███╔╝ '
  echo '██╔═══╝ ██╔══██║  ╚██╔╝   ███╔╝  ╚██╗ ██╔╝ ███╔╝  '
  echo '██║     ██║  ██║   ██║   ███████╗ ╚████╔╝ ███████╗'
  echo '╚═╝     ╚═╝  ╚═╝   ╚═╝   ╚══════╝  ╚═══╝  ╚══════╝'
  echo -e "${NC}"
  echo -e "${W}              TT : @mr.catz67${NC}"
  echo -e "${R}════════════════════════════════════════════════════${NC}"
  echo
}

pause() { echo; read -rp "$(echo -e ${R}Enter untuk kembali...${NC})"; }
check() { command -v "$1" >/dev/null 2>&1; }
need() {
  if ! check "$1"; then
    echo -e "${R}[i] Install $2...${NC}"
    pkg install "$2" -y || { echo -e "${R}[!] Gagal install $2${NC}"; return 1; }
  fi
}

menu() {
  banner
  echo -e "${R}[1]${NC}  Network & Security"
  echo -e "${R}[2]${NC}  Developer Tools"
  echo -e "${R}[3]${NC}  File & System"
  echo -e "${R}[4]${NC}  Termux API"
  echo -e "${R}[5]${NC}  Media & Download"
  echo -e "${R}[6]${NC}  Cyber Lab"
  echo -e "${R}[7]${NC}  Server & Remote"
  echo -e "${R}[8]${NC}  Fun & Misc"
  echo -e "${R}[9]${NC}  Setup Awal (install semua)"
  echo -e "${R}[10]${NC} Info Fitur"
  echo -e "${R}[0]${NC}  Keluar"
  echo
  read -rp "$(echo -e ${R}Pilih >> ${NC})" opt
}

info_fitur() {
  while true; do
    clear; banner
    echo -e "${R}== INFO FITUR v${VERSION} ==${NC}"
    echo
    echo -e "${R}[1]${NC}  Network & Security"
    echo -e "${R}[2]${NC}  Developer Tools"
    echo -e "${R}[3]${NC}  File & System"
    echo -e "${R}[4]${NC}  Termux API"
    echo -e "${R}[5]${NC}  Media & Download"
    echo -e "${R}[6]${NC}  Cyber Lab"
    echo -e "${R}[7]${NC}  Server & Remote"
    echo -e "${R}[8]${NC}  Fun & Misc"
    echo -e "${R}[9]${NC}  Setup Awal"
    echo -e "${R}[0]${NC}  Kembali"
    echo
    read -rp "$(echo -e ${R}Pilih kategori >> ${NC})" inf

    case $inf in
      1) clear; banner
         echo -e "${R}== NETWORK & SECURITY ==${NC}"
         echo "[1] Nmap Scan         - scan jaringan lokal"
         echo "[2] Ping Multi Host   - ping banyak host"
         echo "[3] Cek IP + Geo      - IP publik + lokasi"
         echo "[4] DNS / Whois       - info domain"
         echo "[5] HTTP Header       - header website"
         echo "[6] Port Checker      - cek port terbuka"
         echo "[7] Speedtest         - tes kecepatan"
         echo "[8] Trace Route       - jalur paket"
         echo "[9] Scan WiFi         - WiFi sekitar"
         pause;;
      2) clear; banner
         echo -e "${R}== DEVELOPER TOOLS ==${NC}"
         echo "[1]  Git Menu         [2]  Python REPL"
         echo "[3]  Node REPL        [4]  Buat Script Baru"
         echo "[5]  Beautify JSON    [6]  Base64"
         echo "[7]  Hash File        [8]  HTTP Request"
         echo "[9]  Fzf Search       [10] Ripgrep"
         echo "[11] Bat              [12] LazyGit"
         echo "[13] Tmux"
         pause;;
      3) clear; banner
         echo -e "${R}== FILE & SYSTEM ==${NC}"
         echo "[1]  Cari File         [2]  Kompres Folder"
         echo "[3]  Ekstrak Arsip     [4]  Backup /sdcard"
         echo "[5]  Size Folder       [6]  Rename Massal"
         echo "[7]  Download File     [8]  Aria2"
         echo "[9]  Rsync             [10] Rclone"
         pause;;
      4) clear; banner
         echo -e "${R}== TERMUX API ==${NC}"
         echo "[1]  Baterai          [2]  GPS"
         echo "[3]  Clipboard        [4]  Notifikasi"
         echo "[5]  Toast+Vibrate    [6]  Kamera"
         echo "[7]  SMS List         [8]  Kontak"
         echo "[9]  Call Log         [10] TTS Speak"
         echo "[11] Speech to Text   [12] Sensor"
         echo "[13] Torch            [14] Media Player"
         echo "[15] Termux Download  [16] Share File"
         pause;;
      5) clear; banner
         echo -e "${R}== MEDIA & DOWNLOAD ==${NC}"
         echo "[1] yt-dlp       - download video"
         echo "[2] ffmpeg       - convert media"
         echo "[3] ImageMagick  - resize gambar"
         echo "[4] wget mirror  - download website"
         pause;;
      6) clear; banner
         echo -e "${R}== CYBER LAB ==${NC}"
         echo "[1] sqlmap    [2] hydra    [3] nikto"
         echo "[4] gobuster  [5] john"
         pause;;
      7) clear; banner
         echo -e "${R}== SERVER & REMOTE ==${NC}"
         echo "[1] SSH Connect      [2] SSH Server"
         echo "[3] Python HTTP      [4] ngrok"
         echo "[5] cloudflared      [6] scp"
         echo "[7] mosh"
         pause;;
      8) clear; banner
         echo -e "${R}== FUN & MISC ==${NC}"
         echo "[1] cmatrix    [2] figlet+lolcat"
         echo "[3] cowsay     [4] sl"
         echo "[5] cbonsai    [6] pipes.sh"
         echo "[7] hollywood  [8] neofetch"
         pause;;
      9) clear; banner
         echo -e "${R}== SETUP AWAL ==${NC}"
         echo "Auto install semua package."
         pause;;
      0) return;;
      *) echo -e "${R}Pilihan salah${NC}"; sleep 1;;
    esac
  done
}

sub_net() {
  clear; banner
  echo -e "${R}== NETWORK & SECURITY ==${NC}"
  echo -e "${R}[1]${NC}  Nmap scan        ${R}[2]${NC}  Ping multi host"
  echo -e "${R}[3]${NC}  Cek IP + Geo     ${R}[4]${NC}  DNS / Whois"
  echo -e "${R}[5]${NC}  HTTP Header      ${R}[6]${NC}  Port checker"
  echo -e "${R}[7]${NC}  Speedtest        ${R}[8]${NC}  Trace route"
  echo -e "${R}[9]${NC}  Scan WiFi sekitar"
  echo -e "${R}[0]${NC}  Kembali"
  echo; read -rp ">> " o
  case $o in
    1) read -rp "Target: " t; need nmap nmap && nmap -sn "$t";;
    2) read -rp "Host: " h; for x in $h; do ping -c 2 "$x"; done;;
    3) ip=$(curl -s ifconfig.me); echo "IP: $ip"; curl -s "ip-api.com/json/$ip" | python -m json.tool 2>/dev/null;;
    4) read -rp "Domain: " d; need whois whois && whois "$d" | head -30;;
    5) read -rp "URL: " u; curl -sI "$u";;
    6) read -rp "Host: " h; read -rp "Port: " p; for x in ${p//,/ }; do timeout 2 bash -c "echo>/dev/tcp/$h/$x" 2>/dev/null && echo "OPEN $x" || echo "CLOSE $x"; done;;
    7) need speedtest-cli speedtest-cli && speedtest-cli;;
    8) read -rp "Host: " h; need traceroute traceroute && traceroute "$h";;
    9) termux-wifi-scaninfo 2>/dev/null || echo "Butuh Termux:API";;
    0) return;;
    *) echo -e "${R}Salah${NC}";;
  esac
  pause
}

sub_dev() {
  clear; banner
  echo -e "${R}== DEVELOPER TOOLS ==${NC}"
  echo -e "${R}[1]${NC}  Git menu"
  echo -e "${R}[2]${NC}  Python REPL"
  echo -e "${R}[3]${NC}  Node REPL"
  echo -e "${R}[4]${NC}  Buat script baru"
  echo -e "${R}[5]${NC}  Beautify JSON"
  echo -e "${R}[6]${NC}  Base64 encode/decode"
  echo -e "${R}[7]${NC}  Hash file"
  echo -e "${R}[8]${NC}  HTTP request (httpie)"
  echo -e "${R}[9]${NC}  Fuzzy search (fzf)"
  echo -e "${R}[10]${NC} Cari teks (ripgrep)"
  echo -e "${R}[11]${NC} Bat"
  echo -e "${R}[12]${NC} LazyGit"
  echo -e "${R}[13]${NC} Tmux"
  echo -e "${R}[0]${NC}  Kembali"
  echo; read -rp ">> " o
  case $o in
    1) if [ -d .git ]; then echo "1)st 2)pull 3)push 4)log 5)commit"; read -rp ">> " g; case $g in 1) git status;; 2) git pull;; 3) git push;; 4) git log --oneline -10;; 5) read -rp "msg: " m; git add . && git commit -m "$m";; esac; else echo "Bukan repo git"; fi;;
    2) need python python && python;;
    3) need node nodejs && node;;
    4) read -rp "Nama file: " f; nano "$f" && chmod +x "$f";;
    5) need jq jq; read -rp "File JSON: " j; jq . "$j";;
    6) read -rp "1)Enc 2)Dec: " b; read -rp "Teks: " t; [ "$b" = "1" ] && echo -n "$t"|base64 || echo "$t"|base64 -d;;
    7) read -rp "File: " f; md5sum "$f"; sha256sum "$f";;
    8) need http httpie; read -rp "URL: " u; http "$u";;
    9) need fzf fzf; find . -type f | fzf;;
    10) need rg ripgrep; read -rp "Kata: " k; rg "$k" | head -20;;
    11) need bat bat; read -rp "File: " f; bat "$f";;
    12) need lazygit lazygit && lazygit;;
    13) need tmux tmux && tmux;;
    0) return;;
  esac
  pause
}

sub_file() {
  clear; banner
  echo -e "${R}== FILE & SYSTEM ==${NC}"
  echo -e "${R}[1]${NC}  Cari file"
  echo -e "${R}[2]${NC}  Kompres folder"
  echo -e "${R}[3]${NC}  Ekstrak arsip"
  echo -e "${R}[4]${NC}  Backup ke /sdcard"
  echo -e "${R}[5]${NC}  Size folder terbesar"
  echo -e "${R}[6]${NC}  Rename massal"
  echo -e "${R}[7]${NC}  Download file"
  echo -e "${R}[8]${NC}  aria2 multi-download"
  echo -e "${R}[9]${NC}  rsync sync"
  echo -e "${R}[10]${NC} rclone (cloud)"
  echo -e "${R}[0]${NC}  Kembali"
  echo; read -rp ">> " o
  case $o in
    1) read -rp "Nama: " n; find . -iname "*$n*" | head -20;;
    2) read -rp "Folder: " s; read -rp "Output: " out; tar -czf "$out" "$s" && echo "OK: $out";;
    3) read -rp "Arsip: " a; case "$a" in *.zip) unzip "$a";; *.tar.gz|*.tgz) tar -xzf "$a";; *.gz) gunzip "$a";; esac;;
    4) read -rp "Folder: " s; tar -czf "/sdcard/bk_$(date +%s).tar.gz" "$s" && echo "OK";;
    5) du -h --max-depth=1 . | sort -hr | head;;
    6) read -rp "Folder: " d; read -rp "Prefix: " p; cd "$d"; i=1; for f in *; do ext="${f##*.}"; mv "$f" "${p}_${i}.${ext}"; i=$((i+1)); done;;
    7) read -rp "URL: " u; curl -LO "$u";;
    8) need aria2c aria2; read -rp "URL: " u; aria2c "$u";;
    9) need rsync rsync; read -rp "Src: " s; read -rp "Dst: " d; rsync -av "$s" "$d";;
    10) need rclone rclone; rclone config;;
    0) return;;
  esac
  pause
}

sub_api() {
  clear; banner
  echo -e "${R}== TERMUX API ==${NC}"
  echo -e "${R}[1]${NC}  Baterai          ${R}[2]${NC}  GPS"
  echo -e "${R}[3]${NC}  Clipboard        ${R}[4]${NC}  Notifikasi"
  echo -e "${R}[5]${NC}  Toast+Vibrate    ${R}[6]${NC}  Kamera"
  echo -e "${R}[7]${NC}  SMS list         ${R}[8]${NC}  Kontak"
  echo -e "${R}[9]${NC}  Call log         ${R}[10]${NC} TTS speak"
  echo -e "${R}[11]${NC} Speech to text   ${R}[12]${NC} Sensor"
  echo -e "${R}[13]${NC} Torch            ${R}[14]${NC} Media player"
  echo -e "${R}[15]${NC} Termux download  ${R}[16]${NC} Share file"
  echo -e "${R}[0]${NC}  Kembali"
  echo; read -rp ">> " o
  case $o in
    1) termux-battery-status;;
    2) termux-location;;
    3) echo "1)Get 2)Set"; read -rp ">> " c; [ "$c" = "1" ] && termux-clipboard-get || { read -rp "Teks: " t; termux-clipboard-set "$t"; };;
    4) read -rp "Judul: " j; read -rp "Isi: " i; termux-notification -t "$j" -c "$i";;
    5) termux-toast "PAYZVZ"; termux-vibrate -d 300;;
    6) read -rp "File (x.jpg): " f; termux-camera-photo -c 0 "$f";;
    7) termux-sms-list -l 10;;
    8) termux-contact-list | head -20;;
    9) termux-call-log -l 10;;
    10) read -rp "Teks: " t; termux-tts-speak "$t";;
    11) termux-speech-to-text;;
    12) termux-sensor -s "accelerometer" -n 5;;
    13) termux-torch on; sleep 2; termux-torch off;;
    14) read -rp "File audio: " a; termux-media-player play "$a";;
    15) read -rp "URL: " u; termux-download "$u";;
    16) read -rp "File: " f; termux-share "$f";;
    0) return;;
  esac
  pause
}

sub_media() {
  clear; banner
  echo -e "${R}== MEDIA & DOWNLOAD ==${NC}"
  echo -e "${R}[1]${NC}  yt-dlp"
  echo -e "${R}[2]${NC}  ffmpeg convert"
  echo -e "${R}[3]${NC}  ImageMagick resize"
  echo -e "${R}[4]${NC}  wget mirror"
  echo -e "${R}[0]${NC}  Kembali"
  echo; read -rp ">> " o
  case $o in
    1) need yt-dlp yt-dlp; read -rp "URL: " u; yt-dlp "$u";;
    2) need ffmpeg ffmpeg; read -rp "Input: " i; read -rp "Output: " o2; ffmpeg -i "$i" "$o2";;
    3) need convert imagemagick; read -rp "Gambar: " g; read -rp "Output: " o2; read -rp "Resolusi (800x600): " r; convert "$g" -resize "$r" "$o2";;
    4) read -rp "URL: " u; wget -mkEpnp "$u";;
    0) return;;
  esac
  pause
}

sub_cyber() {
  clear; banner
  echo -e "${R}== CYBER LAB ==${NC}"
  echo -e "${R}[1]${NC}  sqlmap"
  echo -e "${R}[2]${NC}  hydra"
  echo -e "${R}[3]${NC}  nikto"
  echo -e "${R}[4]${NC}  gobuster"
  echo -e "${R}[5]${NC}  john"
  echo -e "${R}[0]${NC}  Kembali"
  echo; read -rp ">> " o
  case $o in
    1) need sqlmap sqlmap; read -rp "URL target: " u; sqlmap -u "$u";;
    2) need hydra hydra; read -rp "Host: " h; read -rp "Service: " s; read -rp "User list: " ul; read -rp "Pass list: " pl; hydra -L "$ul" -P "$pl" "$h" "$s";;
    3) need nikto nikto; read -rp "Host: " h; nikto -h "$h";;
    4) need gobuster gobuster; read -rp "URL: " u; read -rp "Wordlist: " wl; gobuster dir -u "$u" -w "$wl";;
    5) need john john; read -rp "Hash file: " hf; john "$hf";;
    0) return;;
  esac
  pause
}

sub_server() {
  clear; banner
  echo -e "${R}== SERVER & REMOTE ==${NC}"
  echo -e "${R}[1]${NC}  SSH connect"
  echo -e "${R}[2]${NC}  SSH server start"
  echo -e "${R}[3]${NC}  Python HTTP server"
  echo -e "${R}[4]${NC}  ngrok tunnel"
  echo -e "${R}[5]${NC}  cloudflared tunnel"
  echo -e "${R}[6]${NC}  scp copy"
  echo -e "${R}[7]${NC}  mosh"
  echo -e "${R}[0]${NC}  Kembali"
  echo; read -rp ">> " o
  case $o in
    1) need ssh openssh; read -rp "user@host: " u; ssh "$u";;
    2) sshd;;
    3) read -rp "Port (8000): " p; python -m http.server "${p:-8000}";;
    4) need ngrok ngrok; ngrok http 8080;;
    5) need cloudflared cloudflared; cloudflared tunnel --url http://localhost:8080;;
    6) read -rp "Src: " s; read -rp "user@host:dst: " d; scp "$s" "$d";;
    7) need mosh mosh; read -rp "user@host: " u; mosh "$u";;
    0) return;;
  esac
  pause
}

sub_fun() {
  clear; banner
  echo -e "${R}== FUN & MISC ==${NC}"
  echo -e "${R}[1]${NC}  cmatrix"
  echo -e "${R}[2]${NC}  figlet + lolcat"
  echo -e "${R}[3]${NC}  cowsay"
  echo -e "${R}[4]${NC}  sl"
  echo -e "${R}[5]${NC}  cbonsai"
  echo -e "${R}[6]${NC}  pipes.sh"
  echo -e "${R}[7]${NC}  hollywood"
  echo -e "${R}[8]${NC}  neofetch"
  echo -e "${R}[0]${NC}  Kembali"
  echo; read -rp ">> " o
  case $o in
    1) need cmatrix cmatrix; cmatrix;;
    2) need figlet figlet; need lolcat lolcat; read -rp "Teks: " t; figlet "$t" | lolcat;;
    3) need cowsay cowsay; read -rp "Teks: " t; cowsay "$t";;
    4) need sl sl; sl;;
    5) need cbonsai cbonsai; cbonsai -l;;
    6) need pipes.sh pipes.sh; pipes.sh;;
    7) need hollywood hollywood; hollywood;;
    8) need neofetch neofetch; neofetch;;
    0) return;;
  esac
  pause
}

setup_all() {
  clear; banner
  echo -e "${R}[*] Update & install semua package...${NC}"
  pkg update -y && pkg upgrade -y
  pkg install -y \
    nmap whois traceroute python nodejs git curl wget htop \
    tar unzip gzip jq httpie fzf ripgrep bat lazygit tmux \
    qrencode speedtest-cli termux-api \
    ffmpeg imagemagick yt-dlp aria2 rclone rsync openssh mosh \
    cmatrix figlet lolcat cowsay sl cbonsai hollywood neofetch
  echo -e "${R}[OK] Setup selesai.${NC}"
  pause
}

# ============ MAIN ============
while true; do
  menu
  case $opt in
    1) sub_net;;
    2) sub_dev;;
    3) sub_file;;
    4) sub_api;;
    5) sub_media;;
    6) sub_cyber;;
    7) sub_server;;
    8) sub_fun;;
    9) setup_all;;
    10) info_fitur;;
    0) echo -e "${R}Sampai jumpa, Tuan.${NC}"; exit 0;;
    *) echo -e "${R}Pilihan salah${NC}"; sleep 1;;
  esac
done