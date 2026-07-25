# Ratification Attestation — Witnessability Conceptual Core 1.0

## Attestation status and signature semantics

This file is the terminal ratification payload for the identified release package.

**Unsigned status:** not ratified.

A valid detached signature over the exact bytes of this file by the identified and authorized Witnessability release authority constitutes the governance decision to:

1. ratify the exact artifacts and qualifications identified below;
2. authorize issuance of the exact Stable candidate bytes as `WITNESSABILITY-CORE-1.0.md`;
3. assign the bounded governance status `Stable` to that issued artifact.

The detached signature and signer attribution must remain outside the ZIP certified below.

## Release authority and terminal signing-key premise

- **Signer identity:** `Mikhail A. Sergeev`
- **Release authority basis:** `Founder, author, and designated release authority of the Witnessability project`
- **Signature scheme:** `gpg/OpenPGP`
- **Signing-key identifier or fingerprint:** `95C4B50ED56544DC033B130DB84B6C860ABAD0B1`
- **Public-key reference:** `RELEASE-AUTHORITY-PUBLIC-KEY.asc`
- **Public-key material SHA-256:** `5f9a0ecdaf9925905397bc2289ea78abbac018e91da0cab39637d643e7b73115`

### TP-SIGNING-KEY-001

The binding of the signing key identified above to the release authority is an explicit terminal premise of this first ratification.

It is treated as terminal because no superior PKI, accreditation authority, or independent institutional key-binding regime is claimed unless separately identified in the release record.

This premise is contestable. Challenges may address the signer identity, authority basis, key ownership, key control, or key status.

If the key is later compromised, revoked, lost, corrected, or superseded, the signed ratification remains a preserved historical record. Its current applicability must be re-evaluated through linked lifecycle records rather than through silent mutation.

## Terminal package binding

| Role | Artifact | SHA-256 |
|---|---|---|
| Final integrated manifest | `SHA256SUMS-RC2-RATIFICATION.txt` inside the canonical ZIP | `ba69417ffd8da0f9f2edcfd68e29108b03b7c52c27b971e7c18dfadc097ad15c` |
| Canonical final package | `Witnessability_Core_1.0_RC2_Ratification_Package_Final.zip` | `9ab6071ee53354dacf9ad7377d5a3fc75dc6a4d310a131ca2335703d35a1b541` |

The canonical ZIP was produced under the packaging procedure declared in `INCORPORATION-DELTA-SPEC.yaml`. The ratification attestation is intentionally not included in that ZIP.

## Ratification table

| Role | Artifact | SHA-256 |
|---|---|---|
| Frozen verified source | `WITNESSABILITY-CORE-1.0-RC2-FROZEN.md` | `3120657dd39d81c07a29b314dfca3357235cd4a1c01da7f422c21917fbfbbd04` |
| Declared status transformation | `STATUS-TRANSFORMATION-SPEC.yaml` | `942aa01053e80c5146e54d5f26fe712650fd2130bc2aab59ef1bfc4944f0b66d` |
| Stable output candidate | `WITNESSABILITY-CORE-1.0-STABLE-CANDIDATE.md` | `382e39864e257d93a0afd16c377c54f59a2182ecc5c38178764ded29ffb3f034` |
| Release Evaluation Profile | `RELEASE-EVALUATION-PROFILE-RC2.yaml` | `e2d5b27e0b107a1d1f800e9b66a17057075cafa5146347502a65d4b48f100958` |
| Pinned base Release Witness Case | `RELEASE-WITNESS-CASE-RC2.yaml` | `cdf6574dbeb576309b5473839d47912c4e151e6be5bc40bc33b3a764cb184332` |
| Profile Amendment Record | `PROFILE-AMENDMENT-RECORD.md` | `1b5504212034f15ae28ffa94df2ccc7a276b5fabbe7f9eea9459070c3a3fb37a` |

## RS-02 integration binding

| Role | Artifact | SHA-256 |
|---|---|---|
| Review-session statement 02 | `REVIEW-SESSION-VERIFICATION-STATEMENT-02.md` | `a552c87423c61e80896af6738fba2abda588b9ad9f61e4042fd1a01f6be03301` |
| Reviewer attribution and qualifications | `REVIEWER-ATTRIBUTION-AND-QUALIFICATIONS.md` | `baefb875f0c6f86873a2f15826ac60767d2b71ab7b59e2b415365cde253d2848` |
| Release Witness Case RS-02 supplement | `RELEASE-WITNESS-CASE-RC2-RS02-SUPPLEMENT.yaml` | `ab46cb8339a47f03a67326fcbc053068525bc00da8542a01c3701fc26a508625` |
| Incorporation Delta Spec | `INCORPORATION-DELTA-SPEC.yaml` | `26db4bb86712edc44efe341e3a006a63e10778724644fa72a30fe82929b23238` |
| Reproducible verification procedure | `verify-release.sh` | `622b691b4eb37faa29f6533e550dee56c47f506e511f476937c02a0bf804341f` |

The pinned base Release Witness Case and the RS-02 supplement are jointly material to this decision. The supplement does not silently mutate or replace the base Case.

## Source and incorporation scope

RS-02 mechanically verified the source package revision:

- source ZIP SHA-256: `72c66132fa086d6e2fd22fd3820ac91b314d60282d5bcee05e7e1d145ec9bdc7`;
- source sums SHA-256: `64a2d57ba4b47e5fa0a8b1562bfb984a4577046dbabdde4ea2825dd74385ef0e`.

RS-02 does not attest the resulting package revision that incorporates RS-02. The incorporation transition is separately represented in `INCORPORATION-DELTA-SPEC.yaml` and mechanically verified by the final manifest and `verify-release.sh`.

## Required qualifications

The following qualifications remain attached to this governance decision:

- `TP-BOOTSTRAP-001`: the first self-application depends on a named bootstrap terminal premise because no prior ratified Witnessability release-governance regime exists.
- `TP-SIGNING-KEY-001`: the key-to-release-authority binding identified above is a named terminal premise of the ratification.
- `COI-PROFILE-AUTHORSHIP-001`: the evaluated party authors or controls the first Release Evaluation Profile; independent external ratification is not established by that fact.
- `BINDING-SESSION-LOCAL-001`: session-local hash verification does not by itself establish custody binding to separate local copies.
- `PROFILE-AMENDMENT-AFTER-INSPECTION-001`: the selected Profile was amended after inspection by the selecting party under a disclosed, versioned exception and required full re-evaluation.
- `REVIEWER-NATURE-001`: RS-01 and RS-02 were produced by Claude, an AI system provided by Anthropic, engaged by the evaluated party; cross-session identity is hash-mediated, material selection was controlled by the evaluated party, and reviewer organizational independence is not established or claimed.

The decision does not claim:

- universal truth, completeness, or infallibility of the Conceptual Core;
- a complete proof theory or machine-checked formal foundation;
- formal independence of W-I1 through W-I8;
- absence of future counterexamples or revisions;
- independent human, institutional, accreditation, or certification review.

## Mechanical verification result

The canonical ZIP was independently unpacked after construction.

- Full manifest: `52/52 OK`.
- Pinned mechanical gates: `10/10 PASS`.
- Frozen Core SHA-256 remained `3120657dd39d81c07a29b314dfca3357235cd4a1c01da7f422c21917fbfbbd04`.
- Stable candidate SHA-256 remained `382e39864e257d93a0afd16c377c54f59a2182ecc5c38178764ded29ffb3f034`.
- A second canonical ZIP build produced the same ZIP SHA-256 `9ab6071ee53354dacf9ad7377d5a3fc75dc6a4d310a131ca2335703d35a1b541`.

These results do not themselves satisfy the ratification gate. The ratification gate is satisfied only by the valid detached signature of the identified release authority over this attestation.

## Stable issuance condition

After valid ratification, `WITNESSABILITY-CORE-1.0-STABLE-CANDIDATE.md` may be issued under the filename `WITNESSABILITY-CORE-1.0.md` only if the issued file remains byte-identical and retains SHA-256:

`382e39864e257d93a0afd16c377c54f59a2182ecc5c38178764ded29ffb3f034`

Any byte difference falls outside this ratification.
