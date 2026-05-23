{ pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.fish.enable = true;
  programs.throne = {
    enable = true;
    tunMode = {
      enable = true;
    };
  };
  programs.gamemode.enable = true;
  programs.adb.enable = true;
  programs.helium.enable = true;
  programs.steam.enable = true;
  programs.gamescope = {
    enable = true;
    capSysNice = true;
  };

  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-all;
  };

  programs.ssh.extraConfig = ''
    IdentityAgent ~/.bitwarden-ssh-agent.sock
  '';

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      swtpm.enable = true;
    };
  };
}
