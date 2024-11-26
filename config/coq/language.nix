{ pkgs, ... }:
{
  # Currently only Coqtail is supported here
  # TODO: add support for coq-lsp
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "nvim-coqtail";
      src = pkgs.fetchFromGitHub {
        owner = "whonore";
        repo = "Coqtail";
        rev = "v1.7.2";
        hash = "sha256-+7uBuycYKHxpUWVtq6V0/59bH5p8P5AOTMWl7LvUGZ4=";
      };
    })
  ];
}
