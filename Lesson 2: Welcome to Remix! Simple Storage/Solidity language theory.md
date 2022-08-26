# Down to Rabbit hole - Solidity

### Visibility and Getters:

Solidity knows two kinds of function calls:
- Internal ones that do not create an actual EVM call (message call)
- External ones that do.

Functions have to be specified as being `external`, `public`, `internal` or `private`. <span style="background-color: pink;">For state variables, `external` is not possible.</span>

### Reference:

- [external-vs-public-best-practices](https://ethereum.stackexchange.com/questions/19380/external-vs-public-best-practices)
- [Contracts Soliditylang Docs](https://docs.soliditylang.org/en/v0.8.10/contracts.html)