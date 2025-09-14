with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    tllist 
    meson 
    ninja 
    wayland-protocols 
    scdoc 
    fontconfig 
    gnumake 
    cmake 
    pkg-config 
    pixman 
    cairo 
    wayland-utils 
    libxkbcommon 
    wayland-scanner
  ];
}
