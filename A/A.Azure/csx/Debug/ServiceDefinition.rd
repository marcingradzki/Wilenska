<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="A.Azure" generation="1" functional="0" release="0" Id="2e80b5ff-6eed-43ed-8f09-55b4d169a94a" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="A.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="A:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/A.Azure/A.AzureGroup/LB:A:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="A:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/A.Azure/A.AzureGroup/MapA:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="AInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/A.Azure/A.AzureGroup/MapAInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:A:Endpoint1">
          <toPorts>
            <inPortMoniker name="/A.Azure/A.AzureGroup/A/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapA:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/A.Azure/A.AzureGroup/A/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapAInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/A.Azure/A.AzureGroup/AInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="A" generation="1" functional="0" release="0" software="C:\Users\ivs002\Documents\GitHub\Wilenska\A\A.Azure\csx\Debug\roles\A" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;A&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;A&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/A.Azure/A.AzureGroup/AInstances" />
            <sCSPolicyUpdateDomainMoniker name="/A.Azure/A.AzureGroup/AUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/A.Azure/A.AzureGroup/AFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="AUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="AFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="AInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="0a99d7f5-708d-4279-acdb-62b9406237e7" ref="Microsoft.RedDog.Contract\ServiceContract\A.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="434cf477-37ec-4f1c-9b63-431486c37e9c" ref="Microsoft.RedDog.Contract\Interface\A:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/A.Azure/A.AzureGroup/A:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>