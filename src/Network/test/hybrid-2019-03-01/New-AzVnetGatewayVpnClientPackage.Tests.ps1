$TestRecordingFile = Join-Path $PSScriptRoot 'New-AzVnetGatewayVpnClientPackage.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'New-AzVnetGatewayVpnClientPackage' {
    It 'GeneratevpnclientpackageExpanded1' {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'Generatevpnclientpackage1' {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'GeneratevpnclientpackageViaIdentityExpanded1' {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'GeneratevpnclientpackageViaIdentity1' {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}