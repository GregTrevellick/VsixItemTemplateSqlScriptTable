echo off

CD D:\_Dgit\_MINE_ACTIVE\OpenInApp.Launcher\src\packages\Microsoft.VSSDK.BuildTools.16.4.1057\tools\vssdk\bin 

.\VsixPublisher.exe publish -payload "..\..\..\..\..\..\..\VsixItemTemplateSqlScriptTable\Src\ItemTemplate.VsixPackage\bin\Debug\ItemTemplate.VsixPackage.vsix" -publishManifest "..\..\..\..\..\..\..\VsixItemTemplateSqlScriptTable\Src\VsmpPublish.json" -personalAccessToken "pat"

REM https://docs.microsoft.com/en-us/visualstudio/extensibility/walkthrough-publishing-a-visual-studio-extension-via-command-line?view=vs-2019
