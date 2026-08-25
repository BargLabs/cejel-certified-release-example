# Cejel certified release example

This repository is a minimal fixture for composing a GitHub build-provenance attestation with
the published `BargLabs/cejel/action@v1` action in one release job.

The workflow builds a small Linux binary, asks GitHub to attest that binary, and runs Cejel on
the same checkout. The consumer-side verification recipe lives in the Cejel documentation.

