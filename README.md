# Azure-Blob-Container-Size-Calculator
Powershell script to find size of each blob container of a specified storage account

Step 1 : Install ``Az.Storage`` Powershell Module

``PS > Install-Module -Name Az.Storage``

Step 2 : Set Default Subsciption 

``PS > Set-AzContext My_SubscriptionName``

Step 3 : Edit bloblen.ps to point your resource group and storage account for varibles ``$resourceGroup`` and ``$storageAccountName`` respectively. 

Step 4 : run bloblen.ps script

``PS >  .\bloblen.ps``




