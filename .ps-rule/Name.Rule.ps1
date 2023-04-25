# Synopsis: Storage accounts should follow naming convention
Rule 'Org.Azure.Storage.Name' -Type 'Microsoft.Storage/storageAccounts' {
  $Assert.Contains($TargetObject, 'name', 'atl')
}