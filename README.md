workbench
=========

personal workbench

* How to install stuff

** emacs

Assumption you use emacs29.

** lsp

I use eglot.

Some lsp servers are installed via npm
```
cd lsp && npm install .
```

*** C/C++

MacOS
```
brew install llvm
```

Linux
```
apt install clangd-12
```

*** Rust

```
rustup component add rust-src
rustup component add rust-analyzer
```

MacOS
```
brew install rust-analyzer
```




