# 🛠️ Tools Termux - mrcatz67

![Python Version](https://img.shields.io/badge/python-3.x-blue.svg)
![Platform](https://img.shields.io/badge/platform-Termux-green.svg)
![License](https://img.shields.io/badge/license-MIT-red.svg)

Kumpulan *tools* serbaguna yang dirancang khusus untuk dijalankan di lingkungan terminal **Termux** pada perangkat Android.

---

## 📋 Prasyarat (Yang Harus Di-download di Termux)

Sebelum mengunduh dan menjalankan *tools* ini, Anda perlu mengunduh beberapa paket dasar di Termux:

1. **`git`** — Digunakan untuk mengunduh/clone repositori dari GitHub.
2. **`python` / `python3`** — Interpreter untuk menjalankan script Python.
3. **`pip`** — Manajer paket Python untuk mengunduh library pendukung.

---

## 🚀 Langkah Instalasi di Termux

Buka aplikasi **Termux** Anda, lalu salin dan jalankan perintah-perintah berikut secara berurutan:

### 1. Perbarui Package Termux
```bash
pkg update && pkg upgrade -y
```

### 2. Berikan Akses Penyimpanan Termux (Opsional)
```bash
termux-setup-storage
```

### 3. Download & Install Package Utama
```bash
pkg install git python -y
```

### 4. Clone Repositori Ini
```bash
git clone https://github.com/mrcatz67/tools.git
```

### 5. Masuk ke Direktori Tools
```bash
cd tools
```

### 6. Install Library Pendukung (Jika Ada)
```bash
pip install -r requirements.txt
```
*(Abaikan perintah ini jika skrip Anda tidak menggunakan file `requirements.txt`)*

---

## 🎯 Cara Menjalankan Tools

Setelah proses instalasi selesai, Anda dapat menjalankan *tools* dengan perintah berikut:

**Jika skrip utama menggunakan Python:**
```bash
python main.py
```
*(Ganti `main.py` dengan nama file utama skrip Anda, misalnya `tools.py` atau `app.py`)*

**Jika skrip utama menggunakan Bash/Shell Script:**
```bash
chmod +x *
bash run.sh
```

---

## 📌 Fitur Utama

- ⚡ **Cepat & Ringan:** Didesain khusus agar berjalan efisien di Termux.
- 🔄 **Mudah Digunakan:** Menu navigasi terminal yang simpel dan interaktif.
- 🛠️ **Serbaguna:** Membantu mempermudah berbagai tugas otomatisasi.

---

## ⚠️ Penafian (Disclaimer)

*Tools* ini dibuat hanya untuk tujuan **edukasi dan pembelajaran**. Segala bentuk penyalahgunaan atau risiko yang timbul akibat penggunaan *tools* ini sepenuhnya menjadi tanggung jawab pengguna.

---

## 👨‍💻 Pembuat (Author)

* **GitHub:** [@mrcatz67](https://github.com/mrcatz67)
* **Repositori:** [mrcatz67/tools](https://github.com/mrcatz67/tools)

---
<p align="center">Dibuat dengan ❤️ oleh mrcatz67</p>
