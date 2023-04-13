# Azure Testing Lab

Testing various testing aproaches for Azure Resources...

## Methods and tools

### Pre-flight

Will be run against templates:

- Bicep build (linter)
- PSRule (pre-flight)
- Snyk IAC?
- Other linters?

### In-flight

Will be run again deployed resources in Azure:

- PSRule (in-flight)
- Pester native
- BenchPress

## Test case

To make things simple and have something consistently to test across tools we will test a single Storage Account.

It should pass the following tests:

1. TLS version should be minimum 1.2 (test text property)
2. Only HTTPS traffic allowed (test boolean property)
3. It should have a tag named 'Data classification' with one of the values: public, private, confidential (test tagging convention)
4. Name of the account should include the word 'atl' (test naming convention)
