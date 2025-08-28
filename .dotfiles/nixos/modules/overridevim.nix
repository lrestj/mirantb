{ config, pkgs, inputs, pkgsStable, fetchFromGitHub, ... }:

let
  vim-full = pkgsStable.vim-full.overrideAttrs {
    version = "9.1.1706";
    src = fetchFromGitHub {
      owner = "vim";
      repo = "vim";
      rev = "latest";
      # leave empty for the first time, add the new hash from the error message
      hash = "";
    };
  };
in 
  
  {
  # add the overridden package to systemPackages
  environment.systemPackages = [vim-full];
}
