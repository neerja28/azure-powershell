//
// Copyright (c) Microsoft and contributors.  All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//
// See the License for the specific language governing permissions and
// limitations under the License.
//

// Warning: This code was generated by a tool.
//
// Changes to this file may cause incorrect behavior and will be lost if the
// code is regenerated.

using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;
using Microsoft.Azure.Commands.Compute.Automation.Models;
using Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters;
using Microsoft.Azure.Management.Compute;
using Microsoft.Azure.Management.Compute.Models;
using Microsoft.WindowsAzure.Commands.Utilities.Common;

namespace Microsoft.Azure.Commands.Compute.Automation
{
    [Cmdlet(VerbsCommon.Remove, ResourceManager.Common.AzureRMConstants.AzureRMPrefix + "DiskEncryptionSet", DefaultParameterSetName = "DefaultParameter", SupportsShouldProcess = true)]
    [OutputType(typeof(PSOperationStatusResponse))]
    public partial class RemoveAzureRmDiskEncryptionSet : ComputeAutomationBaseCmdlet
    {
        public override void ExecuteCmdlet()
        {
            base.ExecuteCmdlet();
            ExecuteClientAction(() =>
            {
                if (ShouldProcess(this.Name, VerbsCommon.Remove)
                    && (this.Force.IsPresent ||
                        this.ShouldContinue(Properties.Resources.ResourceRemovalConfirmation,
                                            "Remove-AzDiskEncryptionSet operation")))
                {
                    string resourceGroupName;
                    string diskEncryptionSetName;
                    switch (this.ParameterSetName)
                    {
                        case "ResourceIdParameter":
                            resourceGroupName = GetResourceGroupName(this.ResourceId);
                            diskEncryptionSetName = GetResourceName(this.ResourceId, "Microsoft.Compute/diskEncryptionSets");
                            break;
                        case "ObjectParameter":
                            resourceGroupName = GetResourceGroupName(this.InputObject.Id);
                            diskEncryptionSetName = GetResourceName(this.InputObject.Id, "Microsoft.Compute/diskEncryptionSets");
                            break;
                        default:
                            resourceGroupName = this.ResourceGroupName;
                            diskEncryptionSetName = this.Name;
                            break;
                    }

                    var result = DiskEncryptionSetsClient.DeleteWithHttpMessagesAsync(resourceGroupName, diskEncryptionSetName).GetAwaiter().GetResult();
                    PSOperationStatusResponse output = new PSOperationStatusResponse
                    {
                        StartTime = this.StartTime,
                        EndTime = DateTime.Now
                    };

                    if (result != null && result.Request != null && result.Request.RequestUri != null)
                    {
                        output.Name = GetOperationIdFromUrlString(result.Request.RequestUri.ToString());
                    }

                    WriteObject(output);
                }
            });
        }

        [Parameter(
            ParameterSetName = "DefaultParameter",
            Position = 0,
            Mandatory = true,
            ValueFromPipelineByPropertyName = true)]
        [ResourceGroupCompleter]
        public string ResourceGroupName { get; set; }

        [Alias("DiskEncryptionSetName")]
        [Parameter(
            ParameterSetName = "DefaultParameter",
            Position = 1,
            Mandatory = true,
            ValueFromPipelineByPropertyName = true)]
        [ResourceNameCompleter("Microsoft.Compute/diskEncryptionSets", "ResourceGroupName")]
        public string Name { get; set; }

        [Parameter(
            Mandatory = false)]
        public SwitchParameter Force { get; set; }

        [Parameter(
            ParameterSetName = "ResourceIdParameter",
            Position = 0,
            Mandatory = true,
            ValueFromPipelineByPropertyName = true)]
        [ResourceIdCompleter("Microsoft.Compute/diskEncryptionSets")]
        public string ResourceId { get; set; }

        [Alias("DiskEncryptionSet")]
        [Parameter(
            ParameterSetName = "ObjectParameter",
            Position = 0,
            Mandatory = true,
            ValueFromPipeline = true)]
        [ValidateNotNullOrEmpty]
        public PSDiskEncryptionSet InputObject { get; set; }

        [Parameter(Mandatory = false, HelpMessage = "Run cmdlet in the background")]
        public SwitchParameter AsJob { get; set; }
    }
}
