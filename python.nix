# python.nix
{ pkgs }:

{
  python3 = {
    libraries = {
      python = (py: [
        py.debugpy
        py.pylsp-mypy
        py.pyls-isort
        py.python-lsp-server
        py.pytest
        py.pylint
      ]);
    };
  };
}
