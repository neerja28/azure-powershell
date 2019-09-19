---
external help file:
Module Name: Az.Network
online version: https://docs.microsoft.com/en-us/powershell/module/az.network/get-aznetworkwatchernetworkconfigurationdiagnostic
schema: 2.0.0
---

# Get-AzNetworkWatcherNetworkConfigurationDiagnostic

## SYNOPSIS
Get network configuration diagnostic.

## SYNTAX

### GetViaIdentity (Default)
```
Get-AzNetworkWatcherNetworkConfigurationDiagnostic -InputObject <INetworkIdentity>
 -NetworkConfigurationDiagnostic <INetworkConfigurationDiagnosticParameters> [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Get
```
Get-AzNetworkWatcherNetworkConfigurationDiagnostic -NetworkWatcherName <String> -ResourceGroupName <String>
 -NetworkConfigurationDiagnostic <INetworkConfigurationDiagnosticParameters> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### GetExpanded
```
Get-AzNetworkWatcherNetworkConfigurationDiagnostic -NetworkWatcherName <String> -ResourceGroupName <String>
 -Profile <INetworkConfigurationDiagnosticProfile[]> -TargetResourceId <String> [-SubscriptionId <String[]>]
 [-VerbosityLevel <VerbosityLevel>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### GetViaIdentityExpanded
```
Get-AzNetworkWatcherNetworkConfigurationDiagnostic -InputObject <INetworkIdentity>
 -Profile <INetworkConfigurationDiagnosticProfile[]> -TargetResourceId <String>
 [-VerbosityLevel <VerbosityLevel>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Get network configuration diagnostic.

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -AsJob
Run the command as a job

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
Dynamic: False
```

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with Azure.

```yaml
Type: System.Management.Automation.PSObject
Parameter Sets: (All)
Aliases: AzureRMContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
Dynamic: False
```

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.Network.Models.INetworkIdentity
Parameter Sets: GetViaIdentity, GetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
Dynamic: False
```

### -NetworkConfigurationDiagnostic
Parameters to get network configuration diagnostic.
To construct, see NOTES section for NETWORKCONFIGURATIONDIAGNOSTIC properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.Network.Models.Api20190201.INetworkConfigurationDiagnosticParameters
Parameter Sets: Get, GetViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
Dynamic: False
```

### -NetworkWatcherName
The name of the network watcher.

```yaml
Type: System.String
Parameter Sets: Get, GetExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
Dynamic: False
```

### -NoWait
Run the command asynchronously

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
Dynamic: False
```

### -Profile
List of network configuration diagnostic profiles.
To construct, see NOTES section for PROFILE properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.Network.Models.Api20190201.INetworkConfigurationDiagnosticProfile[]
Parameter Sets: GetExpanded, GetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
Dynamic: False
```

### -ResourceGroupName
The name of the resource group.

```yaml
Type: System.String
Parameter Sets: Get, GetExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
Dynamic: False
```

### -SubscriptionId
The subscription credentials which uniquely identify the Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.

```yaml
Type: System.String[]
Parameter Sets: Get, GetExpanded
Aliases:

Required: False
Position: Named
Default value: (Get-AzContext).Subscription.Id
Accept pipeline input: False
Accept wildcard characters: False
Dynamic: False
```

### -TargetResourceId
The ID of the target resource to perform network configuration diagnostic.
Valid options are VM, NetworkInterface, VMSS/NetworkInterface and Application Gateway.

```yaml
Type: System.String
Parameter Sets: GetExpanded, GetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
Dynamic: False
```

### -VerbosityLevel
Verbosity level.
Accepted values are 'Normal', 'Minimum', 'Full'.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.Network.Support.VerbosityLevel
Parameter Sets: GetExpanded, GetViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
Dynamic: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
Dynamic: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
Dynamic: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Network.Models.Api20190201.INetworkConfigurationDiagnosticParameters

### Microsoft.Azure.PowerShell.Cmdlets.Network.Models.INetworkIdentity

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Network.Models.Api20190201.INetworkConfigurationDiagnosticResult

## ALIASES

### Invoke-AzNetworkWatcherNetworkConfigurationDiagnostic

## NOTES

### COMPLEX PARAMETER PROPERTIES
To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

#### INPUTOBJECT <INetworkIdentity>: Identity Parameter
  - `[ApplicationGatewayName <String>]`: The name of the application gateway.
  - `[ApplicationSecurityGroupName <String>]`: The name of the application security group.
  - `[AuthorizationName <String>]`: The name of the authorization.
  - `[AzureFirewallName <String>]`: The name of the Azure Firewall.
  - `[BackendAddressPoolName <String>]`: The name of the backend address pool.
  - `[CircuitName <String>]`: The name of the express route circuit.
  - `[ConnectionMonitorName <String>]`: The name of the connection monitor.
  - `[ConnectionName <String>]`: The name of the vpn connection.
  - `[CrossConnectionName <String>]`: The name of the ExpressRouteCrossConnection (service key of the circuit).
  - `[DdosCustomPolicyName <String>]`: The name of the DDoS custom policy.
  - `[DdosProtectionPlanName <String>]`: The name of the DDoS protection plan.
  - `[DefaultSecurityRuleName <String>]`: The name of the default security rule.
  - `[DevicePath <String>]`: The path of the device.
  - `[ExpressRouteGatewayName <String>]`: The name of the ExpressRoute gateway.
  - `[ExpressRoutePortName <String>]`: The name of the ExpressRoutePort resource.
  - `[FrontendIPConfigurationName <String>]`: The name of the frontend IP configuration.
  - `[GatewayName <String>]`: The name of the gateway.
  - `[IPConfigurationName <String>]`: The name of the ip configuration name.
  - `[Id <String>]`: Resource identity path
  - `[InboundNatRuleName <String>]`: The name of the inbound nat rule.
  - `[InterfaceEndpointName <String>]`: The name of the interface endpoint.
  - `[LinkName <String>]`: The name of the ExpressRouteLink resource.
  - `[LoadBalancerName <String>]`: The name of the load balancer.
  - `[LoadBalancingRuleName <String>]`: The name of the load balancing rule.
  - `[LocalNetworkGatewayName <String>]`: The name of the local network gateway.
  - `[Location <String>]`: The location of the subnet.
  - `[LocationName <String>]`: Name of the requested ExpressRoutePort peering location.
  - `[NatGatewayName <String>]`: The name of the nat gateway.
  - `[NetworkInterfaceName <String>]`: The name of the network interface.
  - `[NetworkProfileName <String>]`: The name of the NetworkProfile.
  - `[NetworkWatcherName <String>]`: The name of the network watcher.
  - `[NsgName <String>]`: The name of the network security group.
  - `[OutboundRuleName <String>]`: The name of the outbound rule.
  - `[P2SVpnServerConfigurationName <String>]`: The name of the P2SVpnServerConfiguration.
  - `[PacketCaptureName <String>]`: The name of the packet capture session.
  - `[PeeringName <String>]`: The name of the peering.
  - `[PolicyName <String>]`: The name of the policy
  - `[PredefinedPolicyName <String>]`: Name of Ssl predefined policy.
  - `[ProbeName <String>]`: The name of the probe.
  - `[PublicIPAddressName <String>]`: The name of the subnet.
  - `[PublicIPPrefixName <String>]`: The name of the PublicIpPrefix.
  - `[ResourceGroupName <String>]`: The name of the resource group.
  - `[RouteFilterName <String>]`: The name of the route filter.
  - `[RouteName <String>]`: The name of the route.
  - `[RouteTableName <String>]`: The name of the route table.
  - `[RuleName <String>]`: The name of the rule.
  - `[SecurityRuleName <String>]`: The name of the security rule.
  - `[ServiceEndpointPolicyDefinitionName <String>]`: The name of the service endpoint policy definition.
  - `[ServiceEndpointPolicyName <String>]`: The name of the service endpoint policy.
  - `[SubnetName <String>]`: The name of the subnet.
  - `[SubscriptionId <String>]`: The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - `[TapConfigurationName <String>]`: The name of the tap configuration.
  - `[TapName <String>]`: The name of the virtual network tap.
  - `[VirtualHubName <String>]`: The name of the VirtualHub.
  - `[VirtualMachineScaleSetName <String>]`: The name of the virtual machine scale set.
  - `[VirtualWanName <String>]`: The name of the VirtualWAN being retrieved.
  - `[VirtualWanName1 <String>]`: The name of the VirtualWAN for which configuration of all vpn-sites is needed.
  - `[VirtualWanName2 <String>]`: The name of the VirtualWan.
  - `[VirtualmachineIndex <String>]`: The virtual machine index.
  - `[VnetGatewayConnectionName <String>]`: The name of the virtual network gateway connection for which the configuration script is generated.
  - `[VnetGatewayName <String>]`: The name of the virtual network gateway.
  - `[VnetName <String>]`: The name of the virtual network.
  - `[VnetPeeringName <String>]`: The name of the virtual network peering.
  - `[VpnSiteName <String>]`: The name of the VpnSite being retrieved.

#### NETWORKCONFIGURATIONDIAGNOSTIC <INetworkConfigurationDiagnosticParameters>: Parameters to get network configuration diagnostic.
  - `Profile <INetworkConfigurationDiagnosticProfile[]>`: List of network configuration diagnostic profiles.
    - `Destination <String>`: Traffic destination. Accepted values are: '*', IP Address/CIDR, Service Tag.
    - `DestinationPort <String>`: Traffic destination port. Accepted values are '*', port (for example, 3389) and port range (for example, 80-100).
    - `Direction <Direction>`: The direction of the traffic.
    - `Protocol <String>`: Protocol to be verified on. Accepted values are '*', TCP, UDP.
    - `Source <String>`: Traffic source. Accepted values are '*', IP Address/CIDR, Service Tag.
  - `TargetResourceId <String>`: The ID of the target resource to perform network configuration diagnostic. Valid options are VM, NetworkInterface, VMSS/NetworkInterface and Application Gateway.
  - `[VerbosityLevel <VerbosityLevel?>]`: Verbosity level. Accepted values are 'Normal', 'Minimum', 'Full'.

#### PROFILE <INetworkConfigurationDiagnosticProfile[]>: List of network configuration diagnostic profiles.
  - `Destination <String>`: Traffic destination. Accepted values are: '*', IP Address/CIDR, Service Tag.
  - `DestinationPort <String>`: Traffic destination port. Accepted values are '*', port (for example, 3389) and port range (for example, 80-100).
  - `Direction <Direction>`: The direction of the traffic.
  - `Protocol <String>`: Protocol to be verified on. Accepted values are '*', TCP, UDP.
  - `Source <String>`: Traffic source. Accepted values are '*', IP Address/CIDR, Service Tag.

## RELATED LINKS
