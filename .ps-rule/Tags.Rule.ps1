# Synopsis: Storage accounts have all mandatory tags defined.
Rule 'Org.Azure.Storage.Tags' -Type 'Microsoft.Storage/storageAccounts' {
  $hasTags = $Assert.HasField($TargetObject, 'Tags')
  if (!$hasTags.Result) {
    return $hasTags
  }

  # Require tags be case-sensitive
  $Assert.HasField($TargetObject, "tags.'Data classification'", $True)

  $Assert.In($TargetObject, "tags.'Data classification'", @(
      'public',
      'private',
      'confidential'
    ), $True)
}