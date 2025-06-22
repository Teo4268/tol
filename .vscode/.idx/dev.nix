# dev.nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs_20  # hoặc nodejs_18 nếu dự án yêu cầu
    pkgs.yarn       # nếu bạn dùng yarn, có thể bỏ nếu chỉ dùng npm
    pkgs.git        # thường cần để clone/cài đặt dependencies
  ];

  shellHook = ''
    echo "✅ Đã vào môi trường Node.js (phiên bản: $(node -v))"
  '';
}
