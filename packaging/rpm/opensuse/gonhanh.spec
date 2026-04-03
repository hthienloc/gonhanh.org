Name:           gonhanh
Version:        0.1.0
Release:        1
Summary:        Vietnamese input method for fcitx5 (Gõ Nhanh)
License:        GPL-3.0-or-later
URL:            https://github.com/khaphanspace/gonhanh.org
Source0:        %{name}-%{version}.tar.gz

BuildRequires:  cmake
BuildRequires:  extra-cmake-modules
BuildRequires:  gcc-c++
BuildRequires:  fcitx5-devel
BuildRequires:  pkg-config
BuildRequires:  cargo
BuildRequires:  rust

Requires:       fcitx5
Requires:       fcitx5-data

%description
Gõ Nhanh is a lightweight and fast Vietnamese input method engine for fcitx5.

%prep
%setup -q

%build
# Build Rust core
cargo build --manifest-path core/Cargo.toml --release

# Build C++ addon
cd platforms/linux
%cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_STANDARD=20
%cmake_build

%install
cd platforms/linux
%cmake_install

%files
%{_libdir}/fcitx5/gonhanh.so
%{_datadir}/fcitx5/addon/gonhanh.conf
%{_datadir}/fcitx5/inputmethod/gonhanh.conf
%{_libdir}/libgonhanh_core.so

%changelog
* Fri Apr 3 2026 Kha Phan <nhatkha1407@gmail.com> - 0.1.0-1
- Initial release
