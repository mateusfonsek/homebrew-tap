# Homebrew tap do Deckmux e do Finoinc

## Deckmux

```bash
brew install --cask mateusfonsek/tap/deckmux
```

Atualizar: `brew upgrade --cask deckmux`. Remover, com as preferências e a sessão: `brew uninstall --zap --cask deckmux`.

O [Deckmux](https://github.com/mateusfonsek/deckmux) não é assinado por um desenvolvedor registrado na Apple. Para o macOS não bloquear a primeira abertura, o cask tira a marca de quarentena do app depois de instalar (`xattr -dr com.apple.quarantine`). Se preferir abrir pelo caminho normal ("Abrir Mesmo Assim"), baixe o `.dmg` da [página de releases](https://github.com/mateusfonsek/deckmux/releases/latest).

## Finoinc

```bash
brew install --cask mateusfonsek/tap/finoinc
```

O app se atualiza sozinho em Configurações → Atualizações (ou `brew upgrade --cask finoinc`). Remover: `brew uninstall --cask finoinc`. Com `--zap` o banco de dados financeiro também é apagado — faça backup antes.

Assim como o Deckmux, o [Finoinc](https://github.com/MateusFonseK/finoinc) não é assinado pela Apple; o cask tira a marca de quarentena depois de instalar.

Os casks são atualizados automaticamente a cada release de cada app.
