{ config, pkgs, ... }:
{ users.users.rgb = {
    name = "rgb";
    home = "/Users/rgb";
  };
  home-manager.users.rgb = { pkgs, ... }: {
    home.packages = [
      pkgs.emacs
      pkgs.elmPackages.elm
      pkgs.elmPackages.elm-language-server
    ];
    programs.bash.enable = true;
  };
}

