# Installation Windows
Auf Windows empfehlen wir die Installation der Haskell Toolchain über [GHCup](https://www.haskell.org/ghcup/).

Dazu muss der folgende Befehl in einer Powershell (ohne Adminrechte) ausgeführt werden:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { & ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -Interactive -DisableCurl } catch { Write-Error $_ }
```

Via den Befehl `ghcup tui` kann dann der Haskell Compiler (GHC) und der LSP-Server (HLS) installiert werden.
Wir haben da jeweils die empfohlenen Versionen installiert. Wir haben weder Stack noch cabal zur
Paketverwaltung installiert, da es für unsere Zwecke nicht nötig war.

In VSCode verwenden wir die Erweiterung Haskell vom Publisher Haskell. Sie benötigt den LSP-Server, welche zuvor mit ghcup installiert wurde.

# Installation macOS und Linux
Auch auf macOS und Linux kann ghcup installiert werden, wobei aber der folgende Befehl verwendet werden muss:

```shell
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

Die Installation von Compiler und LSP-Server folgt dann analog zur Installation auf Windows.


# Online Playground
Für die meisten gezeigten Übungen sollte der Haskell Online Playground: http://play.haskell.org reichen.
Dieser verfügt jedoch nicht über die Möglichkeit, Terminal Eingaben zu tätigen.
So gibt es die collatzNonInputForPlayground.hs für den Online Haskell Playground.