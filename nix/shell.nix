{ pkgs, teika }:

let ocamlPackages = pkgs.ocaml-ng.ocamlPackages_4_14; in

with pkgs; mkShell {
  inputsFrom = [ teika ];
  packages = [
    # Make developer life easier
    # formatters
    nixfmt
    ocamlformat
  ] ++ (with ocamlPackages; [
    # OCaml developer tooling
    ocaml
    dune_3
    ocaml-lsp
    ocamlformat-rpc
  ]);
}
