{ pkgs ? import <nixpkgs> {}}:
with pkgs; [
    hello
    chezmoi
    pyright
    nodejs_20
    ripgrep
    xbindkeys
]
