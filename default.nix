# a callPackage example for tasker
# https://github.com/NixOS/nixpkgs/issues/172061#issuecomment-1120452405
let
  pkgs = import <nixpkgs> {};
in
(
  { lib, stdenv, fetchFromGitHub, pkg-config, xorg }:

  /* ... */
)
  (
    {
      lib = pkgs.lib;
      stdenv = pkgs.stdenv;
      fetchFromGitHub = pkgs.fetchFromGitHub;
      pkg-config = pkgs.pkg-config;
      xorg = pkgs.xorg;
    }
    // {} # This is the second argument of `callPackage`
  )
