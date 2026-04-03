<h1 align="center">
  <img src="assets/logo.png" alt="Gõ Nhanh Logo" width="128" height="128"><br>
  Gõ Nhanh
</h1>

<p align="center">
  <a href="https://unikorn.vn/p/gonhanh?ref=gonhanh" target="_blank"><img src="https://unikorn.vn/api/widgets/badge/gonhanh?theme=dark" alt="Gõ Nhanh trên Unikorn.vn" width="250" height="54" /></a>
  <a href="https://launch.j2team.dev/products/go-nhanh?ref=gonhanh" target="_blank"><img src="https://launch.j2team.dev/badge/go-nhanh/dark" alt="Gõ Nhanh on J2TEAM Launch" width="250" height="54" /></a>
</p>

<p align="center">
  <img src="https://img.shields.io/github/downloads/khaphanspace/gonhanh.org/total?label=Downloads" />
  <img src="https://img.shields.io/badge/License-BSD--3--Clause-blue.svg" alt="License: BSD-3-Clause">
  <img src="https://img.shields.io/badge/Platform-Linux-FCC624?logo=linux&logoColor=black" />
</p>

<p align="center">
  <strong>Bộ gõ tiếng Việt miễn phí, nhanh, ổn định cho Linux (Fcitx5).</strong><br>
  Cài là dùng. Không quảng cáo. Không thu thập dữ liệu.
</p>

---

## 📥 Tải về & Cài đặt

### 📦 Linux (Ubuntu/Fedora)

Gõ Nhanh hiện tại hỗ trợ Linux thông qua engine **Fcitx5**.

|  Nền tảng   | Trạng thái  | Hướng dẫn                                |
| :---------: | :---------: | :--------------------------------------- |
|  **Linux**  |   🧪 Beta   | [Xem hướng dẫn](docs/install-linux.md)   |

---

## ✨ Tính năng

### 🔥 Highlight

- 🔤 **Auto-restore tiếng Anh** — Gõ `text` `expect` `user` `push` `sort` → tự khôi phục khi nhấn space.
- ⎋ **Gõ ESC tự khôi phục** — Gõ `user` → `úẻ` → nhấn **ESC** → `user`. Không cần tắt bộ gõ khi gõ tiếng Anh!
- ⚡ **Siêu nhanh** — <10ms latency · ~20MB RAM.

### 📋 Đầy đủ

- ⌨️ **Telex & VNI** — Chọn kiểu gõ quen thuộc
- 🎯 **Đặt dấu chuẩn** — Tự động theo [quy tắc mới](https://vi.wikipedia.org/wiki/Quy_t%E1%BA%AFc_%C4%91%E1%BA%B7t_d%E1%BA%A5u_thanh_c%E1%BB%A7a_ch%E1%BB%AF_Qu%E1%BB%91c_ng%E1%BB%AF): `hoà`, `khoẻ`, `thuỷ`
- 🔠 **Tự viết hoa đầu câu** — Hỗ trợ `.` `!` `?` và Enter
- ✂️ **Gõ tắt** — `vn` → `Việt Nam`, `ko` → `không`
- 🛡️ **Cam kết "Ba Không"** — Không thu phí, không quảng cáo, không theo dõi (Offline 100%).

---

## 🔧 Tài liệu kỹ thuật

- [Hướng dẫn phát triển](docs/development.md) — Build, test, contribute
- [Kiến trúc hệ thống](docs/system-architecture.md) — FFI, luồng dữ liệu
- [Thuật toán xử lý](docs/core-engine-algorithm.md) — Pipeline 7 giai đoạn
- [Quy tắc kiểm tra âm tiết](docs/validation-algorithm.md) — 5 quy tắc kiểm tra âm tiết

---

## 📄 License

Copyright © 2025 Gõ Nhanh Contributors. [BSD-3-Clause](LICENSE).
