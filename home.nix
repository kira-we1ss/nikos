{ pkgs, ... }:

{
  home.username = "kweiss";
  home.homeDirectory = "/home/kweiss";
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    thunderbird
    qbittorrent
    signal-desktop
  ];

  programs.fish = {
    enable = true;
    shellAliases = {
      zed = "zeditor";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos/nikos#nikos";
      update = "sudo nix flake update --flake /etc/nixos/nikos";
      cleanup = "sudo nix-collect-garbage -d";
    };
    interactiveShellInit = ''
      hyfetch
    '';
  };

  programs.home-manager.enable = true;
}
