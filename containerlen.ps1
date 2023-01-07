
# these are for the storage account and resource group to be used
$resourceGroup = "My_resource_group_name"
$storageAccountName = "My_Storage_account_name"

# get a reference to the storage account and the context
$storageAccount = Get-AzStorageAccount `
  -ResourceGroupName $resourceGroup `
  -Name $storageAccountName
$ctx = $storageAccount.Context 

#get lits of all containers in the storage account
$listOfContainer = Get-AzStorageContainer  -Context $ctx 


$listOfContainer | ForEach-Object {
  $length = 0
  #get list of all Blobs in the current container
  $listOfBlobs = Get-AzStorageBlob -Container $_.Name -Context $ctx

  $listOfBlobs | ForEach-Object{

     $length = $length + $_.Length
     
  }
  #length is in bytes!!!!
  Write-Host $_.Name "Total Length = " $length

  }
