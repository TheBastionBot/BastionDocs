$AWESOME_DIR_NAME=".awesome"

Switch ($Args[0]) {
  "build" {
    if ( -Not (Test-Path "$AWESOME_DIR_NAME")) {
      New-Item -Name "$AWESOME_DIR_NAME" -ItemType Directory
    }

    Set-Location -Path "$AWESOME_DIR_NAME"
    Get-ChildItem -Recurse -Force . | Remove-Item -Force -Recurse

    git clone https://github.com/AwesomeDocs/AwesomeDocs.git .
    Remove-Item ".git" -Force -Recurse

    yarn install --prod

    Copy-Item -Recurse "../content/*" "content/"
    Copy-Item -Recurse "../data/*" "data/"
    Copy-Item -Recurse "../static/*" "static/"

    CD ..
    break
  }

  "serve" {
    Set-Location -Path "$AWESOME_DIR_NAME"
    If (-Not ($?)) {
      Write-Host "You should build the documentation first, using --build."
      Exit 1
    }

    yarn start

    CD ..
    break
  }

  "deploy" {
    Set-Location -Path "$AWESOME_DIR_NAME"
    If (-Not ($?)) {
      Write-Host "You should build the documentation first, using --build."
      Exit 1
    }

    yarn build
    If (-Not ($?)) {
      Exit 1
    }

    node scripts/gh-deploy.js

    cd ..
    break;
  }

  default {
    $ScriptName=$MyInvocation.MyCommand.Name
    Write-Host "AwesomeDocs Script"
    Write-Host
    Write-Host "Usage:"
    Write-Host "  powershell ./scripts/$ScriptName [OPTION]"
    Write-Host
    Write-Host "Options:"
    Write-Host "  build   -  Builds the documentation. This should be done before"
    Write-Host "             you do anything else."
    Write-Host "  serve   -  Serves the documentation in browser so that you can"
    Write-Host "             preview it while working on it."
    Write-Host "  deploy  -  Deploys to documentation site to GitHub Pages."
    Write-Host
    break
  }
}
