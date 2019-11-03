﻿# <auto-generated>
# Copyright (c) Microsoft and contributors.  All rights reserved.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# 
# See the License for the specific language governing permissions and
# limitations under the License.
# 
# 
# Warning: This code was generated by a tool.
# 
# Changes to this file may cause incorrect behavior and will be lost if the
# code is regenerated.
# 
# For documentation on code generator please visit
#   https://aka.ms/nrp-code-generation
# Please contact wanrpdev@microsoft.com if you need to make changes to this file.
# </auto-generated>

function Check-CmdletReturnType
{
    param($cmdletName, $cmdletReturn)

    $cmdletData = Get-Command $cmdletName;
    Assert-NotNull $cmdletData;
    [array]$cmdletReturnTypes = $cmdletData.OutputType.Name | Foreach-Object { return ($_ -replace "Microsoft.Azure.Commands.Network.Models.","") };
    [array]$cmdletReturnTypes = $cmdletReturnTypes | Foreach-Object { return ($_ -replace "System.","") };
    $realReturnType = $cmdletReturn.GetType().Name -replace "Microsoft.Azure.Commands.Network.Models.","";
    return $cmdletReturnTypes -contains $realReturnType;
}

<#
.SYNOPSIS
Test creating new ExpressRouteCircuit using minimal set of parameters
#>
function Test-ExpressRouteCircuitCRUDMinimalParameters
{
    # Setup
    $rgname = Get-ResourceGroupName;
    $rglocation = Get-ProviderLocation ResourceManagement;
    $rname = Get-ResourceName;
    $location = Get-ProviderLocation "Microsoft.Network/expressRouteCircuits" "Brazil South";
    # Resource's parameters
    $SkuTier = "Standard";
    $SkuFamily = "MeteredData";
    $ServiceProviderName = "Interxion";
    $PeeringLocation = "London";
    $BandwidthInMbps = 100;
    # Resource's parameters for Set test
    $SkuTierSet = "Premium";
    $SkuFamilySet = "UnlimitedData";
    $BandwidthInMbpsSet = 200;

    try
    {
        $resourceGroup = New-AzResourceGroup -Name $rgname -Location $rglocation;

        # Create ExpressRouteCircuit
        $vExpressRouteCircuit = New-AzExpressRouteCircuit -ResourceGroupName $rgname -Name $rname -Location $location -SkuTier $SkuTier -SkuFamily $SkuFamily -ServiceProviderName $ServiceProviderName -PeeringLocation $PeeringLocation -BandwidthInMbps $BandwidthInMbps;
        Assert-NotNull $vExpressRouteCircuit;
        Assert-True { Check-CmdletReturnType "New-AzExpressRouteCircuit" $vExpressRouteCircuit };
        Assert-AreEqual $rname $vExpressRouteCircuit.Name;
        Assert-AreEqual $SkuTier $vExpressRouteCircuit.Sku.Tier;
        Assert-AreEqual $SkuFamily $vExpressRouteCircuit.Sku.Family;
        Assert-AreEqual $ServiceProviderName $vExpressRouteCircuit.ServiceProviderProperties.ServiceProviderName;
        Assert-AreEqual $PeeringLocation $vExpressRouteCircuit.ServiceProviderProperties.PeeringLocation;
        Assert-AreEqual $BandwidthInMbps $vExpressRouteCircuit.ServiceProviderProperties.BandwidthInMbps;

        # Get ExpressRouteCircuit
        $vExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName $rgname -Name $rname;
        Assert-NotNull $vExpressRouteCircuit;
        Assert-True { Check-CmdletReturnType "Get-AzExpressRouteCircuit" $vExpressRouteCircuit };
        Assert-AreEqual $rname $vExpressRouteCircuit.Name;
        Assert-AreEqual $SkuTier $vExpressRouteCircuit.Sku.Tier;
        Assert-AreEqual $SkuFamily $vExpressRouteCircuit.Sku.Family;
        Assert-AreEqual $ServiceProviderName $vExpressRouteCircuit.ServiceProviderProperties.ServiceProviderName;
        Assert-AreEqual $PeeringLocation $vExpressRouteCircuit.ServiceProviderProperties.PeeringLocation;
        Assert-AreEqual $BandwidthInMbps $vExpressRouteCircuit.ServiceProviderProperties.BandwidthInMbps;

        # Get all ExpressRouteCircuits in resource group
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName $rgname;
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit;
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription wildcard for resource group
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName "*";
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription wildcard for name
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -Name "*";
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription wildcard for both resource group and name
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName "*" -Name "*";
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Set ExpressRouteCircuit
        $vExpressRouteCircuit.Sku.Tier = $SkuTierSet;
        $vExpressRouteCircuit.Sku.Family = $SkuFamilySet;
        $vExpressRouteCircuit.ServiceProviderProperties.BandwidthInMbps = $BandwidthInMbpsSet;
        $vExpressRouteCircuit = Set-AzExpressRouteCircuit -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull $vExpressRouteCircuit;
        Assert-True { Check-CmdletReturnType "Set-AzExpressRouteCircuit" $vExpressRouteCircuit };
        Assert-AreEqual $rname $vExpressRouteCircuit.Name;
        Assert-AreEqual $SkuTierSet $vExpressRouteCircuit.Sku.Tier;
        Assert-AreEqual $SkuFamilySet $vExpressRouteCircuit.Sku.Family;
        Assert-AreEqual $BandwidthInMbpsSet $vExpressRouteCircuit.ServiceProviderProperties.BandwidthInMbps;

        # Get ExpressRouteCircuit
        $vExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName $rgname -Name $rname;
        Assert-NotNull $vExpressRouteCircuit;
        Assert-True { Check-CmdletReturnType "Get-AzExpressRouteCircuit" $vExpressRouteCircuit };
        Assert-AreEqual $rname $vExpressRouteCircuit.Name;
        Assert-AreEqual $SkuTierSet $vExpressRouteCircuit.Sku.Tier;
        Assert-AreEqual $SkuFamilySet $vExpressRouteCircuit.Sku.Family;
        Assert-AreEqual $BandwidthInMbpsSet $vExpressRouteCircuit.ServiceProviderProperties.BandwidthInMbps;

        # Get all ExpressRouteCircuits in resource group
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName $rgname;
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit;
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription wildcard for resource group
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName "*";
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription wildcard for name
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -Name "*";
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription wildcard for both resource group and name
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName "*" -Name "*";
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Remove ExpressRouteCircuit
        $job = Remove-AzExpressRouteCircuit -ResourceGroupName $rgname -Name $rname -PassThru -Force -AsJob;
        $job | Wait-Job;
        $removeExpressRouteCircuit = $job | Receive-Job;
        Assert-AreEqual $true $removeExpressRouteCircuit;

        # Get ExpressRouteCircuit should fail
        Assert-ThrowsContains { Get-AzExpressRouteCircuit -ResourceGroupName $rgname -Name $rname } "not found";

        # Set ExpressRouteCircuit should fail
        Assert-ThrowsContains { Set-AzExpressRouteCircuit -ExpressRouteCircuit $vExpressRouteCircuit } "not found";
    }
    finally
    {
        # Cleanup
        Clean-ResourceGroup $rgname;
    }
}

<#
.SYNOPSIS
Test creating new ExpressRouteCircuit
#>
function Test-ExpressRouteCircuitCRUDAllParameters
{
    # Setup
    $rgname = Get-ResourceGroupName;
    $rglocation = Get-ProviderLocation ResourceManagement;
    $rname = Get-ResourceName;
    $location = Get-ProviderLocation "Microsoft.Network/expressRouteCircuits" "Brazil South";
    # Resource's parameters
    $SkuTier = "Standard";
    $SkuFamily = "MeteredData";
    $ServiceProviderName = "Interxion";
    $PeeringLocation = "London";
    $BandwidthInMbps = 100;
    $AllowClassicOperation = $true;
    $Tag = @{tag1='test'};
    # Resource's parameters for Set test
    $SkuTierSet = "Premium";
    $SkuFamilySet = "UnlimitedData";
    $BandwidthInMbpsSet = 200;
    $AllowClassicOperationSet = $false;
    $TagSet = @{tag2='testSet'};

    try
    {
        $resourceGroup = New-AzResourceGroup -Name $rgname -Location $rglocation;

        # Create ExpressRouteCircuit
        $vExpressRouteCircuit = New-AzExpressRouteCircuit -ResourceGroupName $rgname -Name $rname -Location $location -SkuTier $SkuTier -SkuFamily $SkuFamily -ServiceProviderName $ServiceProviderName -PeeringLocation $PeeringLocation -BandwidthInMbps $BandwidthInMbps -AllowClassicOperation $AllowClassicOperation -Tag $Tag;
        Assert-NotNull $vExpressRouteCircuit;
        Assert-True { Check-CmdletReturnType "New-AzExpressRouteCircuit" $vExpressRouteCircuit };
        Assert-AreEqual $rname $vExpressRouteCircuit.Name;
        Assert-AreEqual $SkuTier $vExpressRouteCircuit.Sku.Tier;
        Assert-AreEqual $SkuFamily $vExpressRouteCircuit.Sku.Family;
        Assert-AreEqual $ServiceProviderName $vExpressRouteCircuit.ServiceProviderProperties.ServiceProviderName;
        Assert-AreEqual $PeeringLocation $vExpressRouteCircuit.ServiceProviderProperties.PeeringLocation;
        Assert-AreEqual $BandwidthInMbps $vExpressRouteCircuit.ServiceProviderProperties.BandwidthInMbps;
        Assert-AreEqual $AllowClassicOperation $vExpressRouteCircuit.AllowClassicOperations;
        Assert-AreEqualObjectProperties $Tag $vExpressRouteCircuit.Tag;

        # Get ExpressRouteCircuit
        $vExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName $rgname -Name $rname;
        Assert-NotNull $vExpressRouteCircuit;
        Assert-True { Check-CmdletReturnType "Get-AzExpressRouteCircuit" $vExpressRouteCircuit };
        Assert-AreEqual $rname $vExpressRouteCircuit.Name;
        Assert-AreEqual $SkuTier $vExpressRouteCircuit.Sku.Tier;
        Assert-AreEqual $SkuFamily $vExpressRouteCircuit.Sku.Family;
        Assert-AreEqual $ServiceProviderName $vExpressRouteCircuit.ServiceProviderProperties.ServiceProviderName;
        Assert-AreEqual $PeeringLocation $vExpressRouteCircuit.ServiceProviderProperties.PeeringLocation;
        Assert-AreEqual $BandwidthInMbps $vExpressRouteCircuit.ServiceProviderProperties.BandwidthInMbps;
        Assert-AreEqual $AllowClassicOperation $vExpressRouteCircuit.AllowClassicOperations;
        Assert-AreEqualObjectProperties $Tag $vExpressRouteCircuit.Tag;

        # Get all ExpressRouteCircuits in resource group
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName $rgname;
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit;
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription wildcard for resource group
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName "*";
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription wildcard for name
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -Name "*";
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription wildcard for both resource group and name
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName "*" -Name "*";
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Set ExpressRouteCircuit
        $vExpressRouteCircuit.Sku.Tier = $SkuTierSet;
        $vExpressRouteCircuit.Sku.Family = $SkuFamilySet;
        $vExpressRouteCircuit.ServiceProviderProperties.BandwidthInMbps = $BandwidthInMbpsSet;
        $vExpressRouteCircuit.AllowClassicOperations = $AllowClassicOperationSet;
        $vExpressRouteCircuit.Tag = $TagSet;
        $vExpressRouteCircuit = Set-AzExpressRouteCircuit -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull $vExpressRouteCircuit;
        Assert-True { Check-CmdletReturnType "Set-AzExpressRouteCircuit" $vExpressRouteCircuit };
        Assert-AreEqual $rname $vExpressRouteCircuit.Name;
        Assert-AreEqual $SkuTierSet $vExpressRouteCircuit.Sku.Tier;
        Assert-AreEqual $SkuFamilySet $vExpressRouteCircuit.Sku.Family;
        Assert-AreEqual $BandwidthInMbpsSet $vExpressRouteCircuit.ServiceProviderProperties.BandwidthInMbps;
        Assert-AreEqual $AllowClassicOperationSet $vExpressRouteCircuit.AllowClassicOperations;
        Assert-AreEqualObjectProperties $TagSet $vExpressRouteCircuit.Tag;

        # Get ExpressRouteCircuit
        $vExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName $rgname -Name $rname;
        Assert-NotNull $vExpressRouteCircuit;
        Assert-True { Check-CmdletReturnType "Get-AzExpressRouteCircuit" $vExpressRouteCircuit };
        Assert-AreEqual $rname $vExpressRouteCircuit.Name;
        Assert-AreEqual $SkuTierSet $vExpressRouteCircuit.Sku.Tier;
        Assert-AreEqual $SkuFamilySet $vExpressRouteCircuit.Sku.Family;
        Assert-AreEqual $BandwidthInMbpsSet $vExpressRouteCircuit.ServiceProviderProperties.BandwidthInMbps;
        Assert-AreEqual $AllowClassicOperationSet $vExpressRouteCircuit.AllowClassicOperations;
        Assert-AreEqualObjectProperties $TagSet $vExpressRouteCircuit.Tag;

        # Get all ExpressRouteCircuits in resource group
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName $rgname;
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit;
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription wildcard for resource group
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName "*";
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription wildcard for name
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -Name "*";
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Get all ExpressRouteCircuits in subscription wildcard for both resource group and name
        $listExpressRouteCircuit = Get-AzExpressRouteCircuit -ResourceGroupName "*" -Name "*";
        Assert-NotNull ($listExpressRouteCircuit | Where-Object { $_.ResourceGroupName -eq $rgname -and $_.Name -eq $rname });

        # Remove ExpressRouteCircuit
        $job = Remove-AzExpressRouteCircuit -ResourceGroupName $rgname -Name $rname -PassThru -Force -AsJob;
        $job | Wait-Job;
        $removeExpressRouteCircuit = $job | Receive-Job;
        Assert-AreEqual $true $removeExpressRouteCircuit;

        # Get ExpressRouteCircuit should fail
        Assert-ThrowsContains { Get-AzExpressRouteCircuit -ResourceGroupName $rgname -Name $rname } "not found";

        # Set ExpressRouteCircuit should fail
        Assert-ThrowsContains { Set-AzExpressRouteCircuit -ExpressRouteCircuit $vExpressRouteCircuit } "not found";
    }
    finally
    {
        # Cleanup
        Clean-ResourceGroup $rgname;
    }
}

<#
.SYNOPSIS
Test creating new ExpressRouteCircuitAuthorization using minimal set of parameters
#>
function Test-ExpressRouteCircuitAuthorizationCRUDMinimalParameters
{
    # Setup
    $rgname = Get-ResourceGroupName;
    $rglocation = Get-ProviderLocation ResourceManagement;
    $rname = Get-ResourceName;
    $rnameAdd = "${rname}Add";
    $location = Get-ProviderLocation "Microsoft.Network/expressRouteCircuits" "Brazil South";
    # Dependency parameters
    $ExpressRouteCircuitSkuTier = "Standard";
    $ExpressRouteCircuitSkuFamily = "MeteredData";
    $ExpressRouteCircuitServiceProviderName = "Interxion";
    $ExpressRouteCircuitPeeringLocation = "London";
    $ExpressRouteCircuitBandwidthInMbps = 100;

    try
    {
        $resourceGroup = New-AzResourceGroup -Name $rgname -Location $rglocation;

        # Create ExpressRouteCircuitAuthorization
        $vExpressRouteCircuitAuthorization = New-AzExpressRouteCircuitAuthorization -Name $rname;
        Assert-NotNull $vExpressRouteCircuitAuthorization;
        Assert-True { Check-CmdletReturnType "New-AzExpressRouteCircuitAuthorization" $vExpressRouteCircuitAuthorization };
        $vExpressRouteCircuit = New-AzExpressRouteCircuit -ResourceGroupName $rgname -Name $rname -Authorization $vExpressRouteCircuitAuthorization -SkuTier $ExpressRouteCircuitSkuTier -SkuFamily $ExpressRouteCircuitSkuFamily -ServiceProviderName $ExpressRouteCircuitServiceProviderName -PeeringLocation $ExpressRouteCircuitPeeringLocation -BandwidthInMbps $ExpressRouteCircuitBandwidthInMbps -Location $location;
        Assert-NotNull $vExpressRouteCircuit;
        Assert-AreEqual $rname $vExpressRouteCircuitAuthorization.Name;

        # Get ExpressRouteCircuitAuthorization
        $vExpressRouteCircuitAuthorization = Get-AzExpressRouteCircuitAuthorization -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname;
        Assert-NotNull $vExpressRouteCircuitAuthorization;
        Assert-True { Check-CmdletReturnType "Get-AzExpressRouteCircuitAuthorization" $vExpressRouteCircuitAuthorization };
        Assert-AreEqual $rname $vExpressRouteCircuitAuthorization.Name;

        # Get all ExpressRouteCircuit's ExpressRouteCircuitAuthorizations
        $listExpressRouteCircuitAuthorization = Get-AzExpressRouteCircuitAuthorization -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull ($listExpressRouteCircuitAuthorization | Where-Object { $_.Name -eq $rname });

        # Add ExpressRouteCircuitAuthorization
        $vExpressRouteCircuit = Add-AzExpressRouteCircuitAuthorization -Name $rnameAdd -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull $vExpressRouteCircuit;
        $vExpressRouteCircuit = Set-AzExpressRouteCircuit -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull $vExpressRouteCircuit;

        # Get ExpressRouteCircuitAuthorization
        $vExpressRouteCircuitAuthorization = Get-AzExpressRouteCircuitAuthorization -ExpressRouteCircuit $vExpressRouteCircuit -Name $rnameAdd;
        Assert-NotNull $vExpressRouteCircuitAuthorization;
        Assert-True { Check-CmdletReturnType "Get-AzExpressRouteCircuitAuthorization" $vExpressRouteCircuitAuthorization };
        Assert-AreEqual $rnameAdd $vExpressRouteCircuitAuthorization.Name;

        # Get all ExpressRouteCircuit's ExpressRouteCircuitAuthorizations
        $listExpressRouteCircuitAuthorization = Get-AzExpressRouteCircuitAuthorization -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull ($listExpressRouteCircuitAuthorization | Where-Object { $_.Name -eq $rnameAdd });

        # Try Add again
        Assert-ThrowsContains { Add-AzExpressRouteCircuitAuthorization -Name $rnameAdd -ExpressRouteCircuit $vExpressRouteCircuit } "already exists";

        # Remove ExpressRouteCircuitAuthorization
        $vExpressRouteCircuit = Remove-AzExpressRouteCircuitAuthorization -ExpressRouteCircuit $vExpressRouteCircuit -Name $rnameAdd;
        $vExpressRouteCircuit = Remove-AzExpressRouteCircuitAuthorization -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname;
        # Additional call to test handling of already deleted child resource
        $vExpressRouteCircuit = Remove-AzExpressRouteCircuitAuthorization -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname;
        # Update parent resource
        $vExpressRouteCircuit = Set-AzExpressRouteCircuit -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull $vExpressRouteCircuit;

        # Get ExpressRouteCircuitAuthorization should fail
        Assert-ThrowsContains { Get-AzExpressRouteCircuitAuthorization -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname } "Sequence contains no matching element";
    }
    finally
    {
        # Cleanup
        Clean-ResourceGroup $rgname;
    }
}

<#
.SYNOPSIS
Test creating new ExpressRouteCircuitPeering using minimal set of parameters
#>
function Test-ExpressRouteCircuitPeeringCRUDMinimalParameters
{
    # Setup
    $rgname = Get-ResourceGroupName;
    $rglocation = Get-ProviderLocation ResourceManagement;
    $rname = "AzurePrivatePeering";
    $location = Get-ProviderLocation "Microsoft.Network/expressRouteCircuits" "Brazil South";
    # Resource's parameters
    $PeeringType = "AzurePrivatePeering";
    $PeerASN = 1;
    $PrimaryPeerAddressPrefix = "10.0.0.0/30";
    $SecondaryPeerAddressPrefix = "12.0.0.0/30";
    $VlanId = 1;
    # Resource's parameters for Set test
    $PeeringTypeSet = "AzurePrivatePeering";
    $PeerASNSet = 2;
    $PrimaryPeerAddressPrefixSet = "11.0.0.0/30";
    $SecondaryPeerAddressPrefixSet = "14.0.0.0/30";
    $VlanIdSet = 2;
    # Dependency parameters
    $ExpressRouteCircuitSkuTier = "Standard";
    $ExpressRouteCircuitSkuFamily = "MeteredData";
    $ExpressRouteCircuitServiceProviderName = "Interxion";
    $ExpressRouteCircuitPeeringLocation = "London";
    $ExpressRouteCircuitBandwidthInMbps = 100;

    try
    {
        $resourceGroup = New-AzResourceGroup -Name $rgname -Location $rglocation;

        # Create ExpressRouteCircuitPeering
        $vExpressRouteCircuitPeering = New-AzExpressRouteCircuitPeeringConfig -Name $rname -PeeringType $PeeringType -PeerASN $PeerASN -PrimaryPeerAddressPrefix $PrimaryPeerAddressPrefix -SecondaryPeerAddressPrefix $SecondaryPeerAddressPrefix -VlanId $VlanId;
        Assert-NotNull $vExpressRouteCircuitPeering;
        Assert-True { Check-CmdletReturnType "New-AzExpressRouteCircuitPeeringConfig" $vExpressRouteCircuitPeering };
        $vExpressRouteCircuit = New-AzExpressRouteCircuit -ResourceGroupName $rgname -Name $rname -Peering $vExpressRouteCircuitPeering -SkuTier $ExpressRouteCircuitSkuTier -SkuFamily $ExpressRouteCircuitSkuFamily -ServiceProviderName $ExpressRouteCircuitServiceProviderName -PeeringLocation $ExpressRouteCircuitPeeringLocation -BandwidthInMbps $ExpressRouteCircuitBandwidthInMbps -Location $location;
        Assert-NotNull $vExpressRouteCircuit;
        Assert-AreEqual $rname $vExpressRouteCircuitPeering.Name;
        Assert-AreEqual $PeeringType $vExpressRouteCircuitPeering.PeeringType;
        Assert-AreEqual $PeerASN $vExpressRouteCircuitPeering.PeerASN;
        Assert-AreEqual $PrimaryPeerAddressPrefix $vExpressRouteCircuitPeering.PrimaryPeerAddressPrefix;
        Assert-AreEqual $SecondaryPeerAddressPrefix $vExpressRouteCircuitPeering.SecondaryPeerAddressPrefix;
        Assert-AreEqual $VlanId $vExpressRouteCircuitPeering.VlanId;

        # Get ExpressRouteCircuitPeering
        $vExpressRouteCircuitPeering = Get-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname;
        Assert-NotNull $vExpressRouteCircuitPeering;
        Assert-True { Check-CmdletReturnType "Get-AzExpressRouteCircuitPeeringConfig" $vExpressRouteCircuitPeering };
        Assert-AreEqual $rname $vExpressRouteCircuitPeering.Name;
        Assert-AreEqual $PeeringType $vExpressRouteCircuitPeering.PeeringType;
        Assert-AreEqual $PeerASN $vExpressRouteCircuitPeering.PeerASN;
        Assert-AreEqual $PrimaryPeerAddressPrefix $vExpressRouteCircuitPeering.PrimaryPeerAddressPrefix;
        Assert-AreEqual $SecondaryPeerAddressPrefix $vExpressRouteCircuitPeering.SecondaryPeerAddressPrefix;
        Assert-AreEqual $VlanId $vExpressRouteCircuitPeering.VlanId;

        # Get all ExpressRouteCircuit's ExpressRouteCircuitPeerings
        $listExpressRouteCircuitPeering = Get-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull ($listExpressRouteCircuitPeering | Where-Object { $_.Name -eq $rname });

        # Set ExpressRouteCircuitPeering
        $vExpressRouteCircuit = Set-AzExpressRouteCircuitPeeringConfig -Name $rname -ExpressRouteCircuit $vExpressRouteCircuit -PeeringType $PeeringTypeSet -PeerASN $PeerASNSet -PrimaryPeerAddressPrefix $PrimaryPeerAddressPrefixSet -SecondaryPeerAddressPrefix $SecondaryPeerAddressPrefixSet -VlanId $VlanIdSet;
        Assert-NotNull $vExpressRouteCircuit;
        $vExpressRouteCircuit = Set-AzExpressRouteCircuit -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull $vExpressRouteCircuit;

        # Get ExpressRouteCircuitPeering
        $vExpressRouteCircuitPeering = Get-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname;
        Assert-NotNull $vExpressRouteCircuitPeering;
        Assert-True { Check-CmdletReturnType "Get-AzExpressRouteCircuitPeeringConfig" $vExpressRouteCircuitPeering };
        Assert-AreEqual $rname $vExpressRouteCircuitPeering.Name;
        Assert-AreEqual $PeeringTypeSet $vExpressRouteCircuitPeering.PeeringType;
        Assert-AreEqual $PeerASNSet $vExpressRouteCircuitPeering.PeerASN;
        Assert-AreEqual $PrimaryPeerAddressPrefixSet $vExpressRouteCircuitPeering.PrimaryPeerAddressPrefix;
        Assert-AreEqual $SecondaryPeerAddressPrefixSet $vExpressRouteCircuitPeering.SecondaryPeerAddressPrefix;
        Assert-AreEqual $VlanIdSet $vExpressRouteCircuitPeering.VlanId;

        # Get all ExpressRouteCircuit's ExpressRouteCircuitPeerings
        $listExpressRouteCircuitPeering = Get-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull ($listExpressRouteCircuitPeering | Where-Object { $_.Name -eq $rname });

        # Remove ExpressRouteCircuitPeering
        $vExpressRouteCircuit = Remove-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname;
        # Additional call to test handling of already deleted child resource
        $vExpressRouteCircuit = Remove-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname;
        # Update parent resource
        $vExpressRouteCircuit = Set-AzExpressRouteCircuit -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull $vExpressRouteCircuit;

        # Get ExpressRouteCircuitPeering should fail
        Assert-ThrowsContains { Get-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname } "Sequence contains no matching element";

        # Set ExpressRouteCircuitPeering should fail
        Assert-ThrowsContains { Set-AzExpressRouteCircuitPeeringConfig -Name $rname -ExpressRouteCircuit $vExpressRouteCircuit -PeeringType $PeeringTypeSet -PeerASN $PeerASNSet -PrimaryPeerAddressPrefix $PrimaryPeerAddressPrefixSet -SecondaryPeerAddressPrefix $SecondaryPeerAddressPrefixSet -VlanId $VlanIdSet } "does not exist";
    }
    finally
    {
        # Cleanup
        Clean-ResourceGroup $rgname;
    }
}

<#
.SYNOPSIS
Test creating new ExpressRouteCircuitPeering
#>
function Test-ExpressRouteCircuitPeeringCRUDAllParameters
{
    # Setup
    $rgname = Get-ResourceGroupName;
    $rglocation = Get-ProviderLocation ResourceManagement;
    $rname = "AzurePrivatePeering";
    $location = Get-ProviderLocation "Microsoft.Network/expressRouteCircuits" "Brazil South";
    # Resource's parameters
    $PeeringType = "AzurePrivatePeering";
    $PeerASN = 1;
    $PrimaryPeerAddressPrefix = "10.0.0.0/30";
    $SecondaryPeerAddressPrefix = "12.0.0.0/30";
    $VlanId = 1;
    $SharedKey = "testkey";
    $PeerAddressType = "IPv4";
    # Resource's parameters for Set test
    $PeeringTypeSet = "AzurePrivatePeering";
    $PeerASNSet = 2;
    $PrimaryPeerAddressPrefixSet = "11.0.0.0/30";
    $SecondaryPeerAddressPrefixSet = "14.0.0.0/30";
    $VlanIdSet = 2;
    $SharedKeySet = "testkey2";
    $PeerAddressTypeSet = "IPv4";
    # Dependency parameters
    $ExpressRouteCircuitSkuTier = "Standard";
    $ExpressRouteCircuitSkuFamily = "MeteredData";
    $ExpressRouteCircuitServiceProviderName = "Interxion";
    $ExpressRouteCircuitPeeringLocation = "London";
    $ExpressRouteCircuitBandwidthInMbps = 100;

    try
    {
        $resourceGroup = New-AzResourceGroup -Name $rgname -Location $rglocation;

        # Create ExpressRouteCircuitPeering
        $vExpressRouteCircuitPeering = New-AzExpressRouteCircuitPeeringConfig -Name $rname -PeeringType $PeeringType -PeerASN $PeerASN -PrimaryPeerAddressPrefix $PrimaryPeerAddressPrefix -SecondaryPeerAddressPrefix $SecondaryPeerAddressPrefix -VlanId $VlanId -SharedKey $SharedKey -PeerAddressType $PeerAddressType;
        Assert-NotNull $vExpressRouteCircuitPeering;
        Assert-True { Check-CmdletReturnType "New-AzExpressRouteCircuitPeeringConfig" $vExpressRouteCircuitPeering };
        $vExpressRouteCircuit = New-AzExpressRouteCircuit -ResourceGroupName $rgname -Name $rname -Peering $vExpressRouteCircuitPeering -SkuTier $ExpressRouteCircuitSkuTier -SkuFamily $ExpressRouteCircuitSkuFamily -ServiceProviderName $ExpressRouteCircuitServiceProviderName -PeeringLocation $ExpressRouteCircuitPeeringLocation -BandwidthInMbps $ExpressRouteCircuitBandwidthInMbps -Location $location;
        Assert-NotNull $vExpressRouteCircuit;
        Assert-AreEqual $rname $vExpressRouteCircuitPeering.Name;
        Assert-AreEqual $PeeringType $vExpressRouteCircuitPeering.PeeringType;
        Assert-AreEqual $PeerASN $vExpressRouteCircuitPeering.PeerASN;
        Assert-AreEqual $PrimaryPeerAddressPrefix $vExpressRouteCircuitPeering.PrimaryPeerAddressPrefix;
        Assert-AreEqual $SecondaryPeerAddressPrefix $vExpressRouteCircuitPeering.SecondaryPeerAddressPrefix;
        Assert-AreEqual $VlanId $vExpressRouteCircuitPeering.VlanId;

        # Get ExpressRouteCircuitPeering
        $vExpressRouteCircuitPeering = Get-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname;
        Assert-NotNull $vExpressRouteCircuitPeering;
        Assert-True { Check-CmdletReturnType "Get-AzExpressRouteCircuitPeeringConfig" $vExpressRouteCircuitPeering };
        Assert-AreEqual $rname $vExpressRouteCircuitPeering.Name;
        Assert-AreEqual $PeeringType $vExpressRouteCircuitPeering.PeeringType;
        Assert-AreEqual $PeerASN $vExpressRouteCircuitPeering.PeerASN;
        Assert-AreEqual $PrimaryPeerAddressPrefix $vExpressRouteCircuitPeering.PrimaryPeerAddressPrefix;
        Assert-AreEqual $SecondaryPeerAddressPrefix $vExpressRouteCircuitPeering.SecondaryPeerAddressPrefix;
        Assert-AreEqual $VlanId $vExpressRouteCircuitPeering.VlanId;

        # Get all ExpressRouteCircuit's ExpressRouteCircuitPeerings
        $listExpressRouteCircuitPeering = Get-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull ($listExpressRouteCircuitPeering | Where-Object { $_.Name -eq $rname });

        # Set ExpressRouteCircuitPeering
        $vExpressRouteCircuit = Set-AzExpressRouteCircuitPeeringConfig -Name $rname -ExpressRouteCircuit $vExpressRouteCircuit -PeeringType $PeeringTypeSet -PeerASN $PeerASNSet -PrimaryPeerAddressPrefix $PrimaryPeerAddressPrefixSet -SecondaryPeerAddressPrefix $SecondaryPeerAddressPrefixSet -VlanId $VlanIdSet -SharedKey $SharedKeySet -PeerAddressType $PeerAddressTypeSet;
        Assert-NotNull $vExpressRouteCircuit;
        $vExpressRouteCircuit = Set-AzExpressRouteCircuit -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull $vExpressRouteCircuit;

        # Get ExpressRouteCircuitPeering
        $vExpressRouteCircuitPeering = Get-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname;
        Assert-NotNull $vExpressRouteCircuitPeering;
        Assert-True { Check-CmdletReturnType "Get-AzExpressRouteCircuitPeeringConfig" $vExpressRouteCircuitPeering };
        Assert-AreEqual $rname $vExpressRouteCircuitPeering.Name;
        Assert-AreEqual $PeeringTypeSet $vExpressRouteCircuitPeering.PeeringType;
        Assert-AreEqual $PeerASNSet $vExpressRouteCircuitPeering.PeerASN;
        Assert-AreEqual $PrimaryPeerAddressPrefixSet $vExpressRouteCircuitPeering.PrimaryPeerAddressPrefix;
        Assert-AreEqual $SecondaryPeerAddressPrefixSet $vExpressRouteCircuitPeering.SecondaryPeerAddressPrefix;
        Assert-AreEqual $VlanIdSet $vExpressRouteCircuitPeering.VlanId;

        # Get all ExpressRouteCircuit's ExpressRouteCircuitPeerings
        $listExpressRouteCircuitPeering = Get-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull ($listExpressRouteCircuitPeering | Where-Object { $_.Name -eq $rname });

        # Remove ExpressRouteCircuitPeering
        $vExpressRouteCircuit = Remove-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname;
        # Additional call to test handling of already deleted child resource
        $vExpressRouteCircuit = Remove-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname;
        # Update parent resource
        $vExpressRouteCircuit = Set-AzExpressRouteCircuit -ExpressRouteCircuit $vExpressRouteCircuit;
        Assert-NotNull $vExpressRouteCircuit;

        # Get ExpressRouteCircuitPeering should fail
        Assert-ThrowsContains { Get-AzExpressRouteCircuitPeeringConfig -ExpressRouteCircuit $vExpressRouteCircuit -Name $rname } "Sequence contains no matching element";

        # Set ExpressRouteCircuitPeering should fail
        Assert-ThrowsContains { Set-AzExpressRouteCircuitPeeringConfig -Name $rname -ExpressRouteCircuit $vExpressRouteCircuit -PeeringType $PeeringTypeSet -PeerASN $PeerASNSet -PrimaryPeerAddressPrefix $PrimaryPeerAddressPrefixSet -SecondaryPeerAddressPrefix $SecondaryPeerAddressPrefixSet -VlanId $VlanIdSet -SharedKey $SharedKeySet -PeerAddressType $PeerAddressTypeSet } "does not exist";
    }
    finally
    {
        # Cleanup
        Clean-ResourceGroup $rgname;
    }
}
