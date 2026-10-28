# Homebrew tap do Deckmux

```bash
brew install --cask mateusfonsek/tap/deckmux
```

Atualizar: `brew upgrade --cask deckmux`. Remover, com as preferências e a sessão: `brew uninstall --zap --cask deckmux`.

O [Deckmux](https://github.com/mateusfonsek/deckmux) não é assinado por um desenvolvedor registrado na Apple. Para o macOS não bloquear a primeira abertura, o cask tira a marca de quarentena do app depois de instalar (`xattr -dr com.apple.quarantine`). Se preferir abrir pelo caminho normal ("Abrir Mesmo Assim"), baixe o `.dmg` da [página de releases](https://github.com/mateusfonsek/deckmux/releases/latest).

O cask é atualizado automaticamente a cada release do Deckmux.
