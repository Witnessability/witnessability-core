# Witnessability Conceptual Core 1.0

## Conceptual Core, Governing Principle, and Foundational Invariants

**Status: Stable**

---

## Status of This Document

This document defines the stable conceptual core of Witnessability.

It establishes:

- the meaning and scope of Witnessability;
- the central conceptual objects of the model;
- the distinction between witness-material production, evidentiary evaluation, support attribution, and reliance decisions;
- the governing principle for witness-supported conclusions;
- eight foundational invariants;
- the Witnessability Boundary Architecture;
- an abstract formal core;
- the conceptual consistency conditions that subsequent Witnessability specifications should preserve.

This document is conceptually normative at the model level. It defines consistency conditions for models, specifications, and profiles claiming alignment with the Witnessability conceptual core.

It is not a protocol or implementation specification. It does not define:

- wire formats;
- serialization rules;
- transport behavior;
- processing algorithms;
- directly testable implementation conformance classes;
- deployment profiles.

The lowercase terms “must”, “should”, and “may” are used in their ordinary-language sense. They do not by themselves express the implementation requirements defined by BCP 14.

---

# 1. Witnessability

## 1.1. Definition

**Witnessability is the claim-relative capability of a socio-technical arrangement to produce, preserve, and expose an evaluable and challengeable evidence-and-argument graph connecting a Target Proposition to the represented conditions and outputs of witnessing, including the evidence and argument supporting any characterization of those conditions and outputs as realized.**

That graph makes explicit, to the degree material to the evaluation:

- semantic and contextual scope;
- subject and instance bindings;
- observation and capture conditions;
- provenance and custody;
- assumptions;
- warrants;
- dependencies;
- the applicable Evaluation Profile;
- uncertainty;
- temporal conditions;
- failure-model assumptions;
- threat-model assumptions;
- counter-support and defeaters.

The existence, authenticity, integrity, or structural validity of that graph does not imply that the Target Proposition is true or supported.

Witnessability concerns the conditions under which evidentiary support may responsibly be attributed to a proposition. It does not imply that:

- all uncertainty can be eliminated;
- all relevant phenomena can be completely observed;
- an authentic artifact is a truthful artifact;
- technical verification establishes evidentiary sufficiency;
- evidentiary sufficiency determines what action must be taken.

## 1.2. Dual Character

Witnessability includes two complementary capacities:

1. **the capacity to witness** — the capacity of a person, component, institution, system, or mechanism to participate in producing evaluable Witness Materials;
2. **the capacity to be witnessed** — the capacity of an event, state, action, process, relationship, or absence condition to become the subject of evaluable and challengeable witnessing.

Witnessability does not reside exclusively in either the witness or the witnessed subject matter.

It arises from a structured relation among:

- the Target Proposition;
- the subject matter to which it refers;
- the represented conditions of witnessing;
- the Witness Materials produced or made available;
- the argument connecting those materials to the proposition;
- the applicable Evaluation Profile;
- the resulting Support Assessment.

## 1.3. Claim Relativity

A system does not possess Witnessability in the abstract.

It possesses Witnessability only relative to:

- a particular Target Proposition or proposition class;
- a specified subject or process instance;
- a temporal and contextual scope;
- an Evaluation Profile;
- a failure model;
- a threat model;
- the bindings and dependencies material to the proposition.

A system may provide strong Witnessability for the proposition that a request was received while providing little or no support for propositions that:

- the request was authorized;
- the requested action was executed;
- execution completed successfully;
- the result was correct;
- the result was caused by the represented execution;
- no unrecorded action occurred.

## 1.4. What Witnessability Is Not

Witnessability is not:

- a guarantee of truth;
- a synonym for observability;
- the mere availability of logs;
- the production of signed statements;
- the existence of provenance metadata;
- the existence of an attestation or transparency receipt;
- an absolute property of a system;
- a naturally scalar quantity;
- a substitute for authority;
- a substitute for independent evaluation;
- a requirement that a Relying Party act only when evidentiary support is strong;
- a presumption that external evidence is independent;
- a presumption that technically valid evidence is sufficient for every purpose.

---

# 2. Core Conceptual Objects

## 2.1. Target Proposition

A **Target Proposition** is the proposition whose evidentiary support is being evaluated.

It is distinct from:

- the condition in the world to which it refers;
- an assertion made by a particular issuer;
- a protocol-level claim field;
- the result of evaluating its support;
- an action or decision taken in reliance upon it.

A Target Proposition should be typed along separately represented dimensions, including where material:

- subject;
- process, state, action, or event instance;
- semantic content;
- polarity;
- epistemic or operational modality;
- temporal orientation;
- temporal scope;
- contextual scope;
- normative status.

Relevant proposition classes may include:

- occurrence propositions;
- non-occurrence propositions;
- identity propositions;
- authorization propositions;
- execution propositions;
- completion propositions;
- result propositions;
- causal propositions;
- provenance propositions;
- compliance propositions;
- probabilistic propositions;
- predictive propositions;
- normative propositions.

Evidence sufficient for one proposition class is not automatically sufficient for another.

Witness Materials supporting factual premises do not by themselves establish a normative conclusion. A normative conclusion requires an explicit normative premise, standard, rule, or authority relation represented in the applicable warrant.

### Support for Normative Propositions

For a normative Target Proposition, the Support Envelope should distinguish support for relevant factual premises from support for the validity, adoption, authority, applicability, or interpretation of the applicable normative premise.

Evidence that a rule was adopted, issued by an authorized institution, or applicable within a specified regime does not by itself establish that the rule is morally correct or universally valid.

A transition from factual premises to a normative conclusion requires an explicit normative warrant and the applicable normative premise, standard, or authority relation.

## 2.2. Claim Assertion

A **Claim Assertion** is a concrete act by which an identified or identifiable issuer asserts a Target Proposition.

The following questions remain distinct:

- whether the assertion was made;
- who made it;
- whether the issuer was authorized to make it;
- whether the issuer was competent regarding the subject matter;
- whether the assertion is evidentially supported;
- whether the asserted proposition is true.

## 2.3. Artifact Claim

An **Artifact Claim** is a protocol-level or document-level field contained in a token, attestation, signed statement, receipt, record, or other artifact.

An Artifact Claim may represent:

- a Target Proposition;
- an intermediate proposition;
- contextual metadata;
- a proposition about the witness;
- a proposition about artifact production;
- a proposition about verification or registration.

The presence of an Artifact Claim does not establish its:

- truth;
- authority;
- contextual applicability;
- binding to a particular Witness Case.

## 2.4. Witness Materials Set

The **Witness Materials set** is the aggregate set of typed materials available for constructing and evaluating a Witness Case.

It may include the following categories.

### Evidential Material

Observations, records, traces, measurements, statements, receipts, attestations, and other materials connected to the subject matter or witnessing process.

### Contextual and Reference Material

Schemas, reference values, calibration information, environmental context, process descriptions, definitions, and other materials required for interpretation.

### Trust and Authority Material

Trust anchors, endorsements, delegations, role assignments, authorization records, revocation information, and institutional commitments.

### Policy and Procedure Material

Verification procedures, appraisal policies, algorithms, rules, Evaluation Profiles, and versioned evaluation criteria.

### Counter-Material

Counterevidence, contradictory artifacts, rebuttals, challenges, and defeaters.

The Witness Materials set is an aggregate category. Not every contained item is evidence of the target subject matter, and not every item is used positively in support of the Target Proposition.

## 2.5. Support Basis

A **Support Basis** is the subset of the Witness Materials set positively used by a particular instantiated argument in support of a Target Proposition.

The Support Basis does not include every contextual dependency, policy, counterargument, or defeater merely because it is represented in the Witness Case.

A material may belong to the Witness Materials set without belonging to the Support Basis of a particular argument.

## 2.6. Evidence Graph

An **Evidence Graph** represents how Witness Materials arose and how they relate to the represented conditions of witnessing.

It may represent:

- subject matter;
- available signals;
- observation loci;
- capture capability;
- effective coverage;
- record production;
- witness artifacts;
- transformations;
- custody;
- signatures;
- endorsements;
- attestations;
- disclosures;
- dependencies.

The Evidence Graph primarily answers:

> What was represented as available to witnessing, what was represented as captured, how were the materials represented as having been produced, and what was represented as having happened to them afterward?

Assertions represented by the Evidence Graph remain propositions requiring support.

## 2.7. Evaluation Profile

An **Evaluation Profile** is a versioned specification that defines, for a stated class of Target Propositions:

- required Witness Case elements;
- admissible material types;
- admissible warrants;
- evaluation rules;
- gating conditions;
- Support Envelope structure;
- comparison relation;
- uncertainty treatment;
- status semantics;
- composition rules;
- applicable failure-model assumptions;
- applicable threat-model assumptions.

An Evaluation Profile may reference:

- a Boundary Profile;
- a Domain Profile;
- verification procedures;
- schemas;
- reference-value sets;
- trust frameworks.

The following are material dependencies of every Support Assessment produced under an Evaluation Profile:

- its authority;
- provenance;
- version, state, epoch, or effective interval;
- temporal applicability;
- referenced policies;
- referenced schemas;
- referenced failure models;
- referenced threat models.

Authorization, adoption, or structural validity of an Evaluation Profile does not by itself establish the soundness of every warrant admitted by that Profile.

The following are also material dependencies of every Support Assessment produced under an Evaluation Profile:

- the Profile's selection rule;
- authorship and maintenance responsibility;
- authority and provenance;
- intended scope;
- effective interval;
- any material conflict of interest;
- whether selection occurred before or after inspection by the selecting party of the available Witness Materials or anticipated result.

An Evaluation Profile may require pre-commitment to the Profile, or to a governed Profile-selection rule, before inspection by the selecting party.

Authorship or control of an Evaluation Profile by an evaluated party does not automatically invalidate the Profile. It is, however, a material dependency and potential conflict of interest relevant to independence, evaluation, and reliance.

A comparison or translation rule between Evaluation Profiles is itself versioned, attributable, challengeable, and temporally bounded material. Its assumptions, authority, provenance, scope, and limitations remain explicit.

Evaluation Profiles remain:

- versioned;
- attributable;
- challengeable;
- temporally bounded

materials within the wider Witnessability architecture.

An Evaluation Profile does not determine the decision policy of every Relying Party.

## 2.8. Boundary Profile

A **Boundary Profile** is a versioned specification identifying which Witnessability boundary constructs must be represented for a particular proposition class, domain, deployment, or evaluation purpose.

A Boundary Profile may define:

- required construct types;
- required bindings;
- required descriptions;
- temporal granularity;
- acceptable uncertainty;
- preservation relations across transitions;
- mandatory supporting propositions.

## 2.9. Witness Case

A **Witness Case** is a versioned and typed evidence-and-argument graph that presents a Target Proposition together with the materials, contextual bindings, instantiated arguments and warrants, assumptions, policies, dependencies, uncertainty, counter-support, defeaters, and temporal conditions required to evaluate what support, if any, the proposition receives.

A Witness Case may be:

- incomplete;
- malformed;
- structurally invalid;
- not evaluable under a specified Evaluation Profile.

When evaluable, it may yield a Support Assessment characterized under the bound Evaluation Profile.

The existence, authenticity, integrity, or structural validity of a Witness Case does not imply that its Target Proposition is true or supported.

A Witness Case should represent, where material:

- the Target Proposition;
- relevant Claim Assertions;
- relevant Artifact Claims;
- the Evidence Graph;
- the Support Basis;
- premises;
- warrants;
- inference relations;
- assumptions;
- contextual bindings;
- trust dependencies;
- authority dependencies;
- failure-model assumptions;
- threat-model assumptions;
- uncertainty;
- counter-support;
- defeaters;
- the applicable Evaluation Profile;
- policy and schema versions;
- temporal applicability.

### Terminal Premises and the Limits of Regress

Witnessability does not eliminate the need for terminal premises, trust anchors, definitions, physical assumptions, normative authorities, or other irreducible starting conditions.

Its purpose is not to make every premise independently self-proving, but to prevent such premises from remaining hidden or from being represented as conclusions established by the Witness Case.

A terminal premise should identify, where material:

- a stable identifier or reference;
- its type;
- its source or authority;
- its scope;
- the reason it is treated as terminal;
- its uncertainty or contestability;
- its temporal applicability;
- the consequences of its rejection or failure.

Stable identity and cross-case referenceability should be sufficient to detect common terminal dependencies across different Witness Cases.

Meta-witnessing may relocate, refine, or challenge a terminal dependency, but it does not eliminate the need for an explicitly represented epistemic, physical, institutional, definitional, or normative stopping point.

## 2.10. Support Envelope

A **Support Envelope** is a profile-relative structured representation of the exact reach and support characteristics that may be attributed to a Target Proposition.

A Support Envelope contains three conceptual parts.

### Claim Reach

The proposition content and limits for which support is licensed, including:

- semantic reach;
- subject reach;
- instance reach;
- temporal reach;
- contextual reach;
- modal or normative reach.

### Support Profile

The characteristics of the support, including where applicable:

- binding status;
- coverage;
- provenance quality;
- custody continuity;
- integrity;
- authority;
- competence relevance;
- independence;
- freshness;
- uncertainty;
- failure resistance;
- threat resistance;
- re-evaluability.

### Qualifications

Conditions affecting the interpretation or applicability of the support, including:

- assumptions;
- dependencies;
- limitations;
- unresolved ignorance;
- counter-support;
- defeaters;
- reason codes;
- lifecycle qualifications.

A Support Envelope is not necessarily:

- numerical;
- scalar;
- totally ordered;
- reducible to a single assurance level.

Support Envelopes may be compared under a profile-relative preorder, inducing a partial order over support-equivalence classes.

They need not be totally ordered.

## 2.11. Support Assessment

A **Support Assessment** is the output of evaluating a Witness Case under a version-bound Evaluation Profile at a specified time.

It describes what evidentiary support, if any, may be attributed to the Target Proposition.

A Support Assessment should identify:

- the referenced Target Proposition;
- the referenced Witness Case;
- the referenced Evaluation Profile;
- the evaluation time;
- support outcome;
- Support Envelope;
- counter-support status;
- material limitations;
- unresolved dependencies;
- uncertainty;
- defeaters;
- reason codes;
- lifecycle status;
- challenge status;
- material-availability status;
- re-evaluability status.

A Support Assessment is not a Relying-Party Decision.

## 2.12. Relying-Party Decision

A **Relying-Party Decision** is an action or conclusion reached by a Relying Party under its own decision policy.

It may depend on:

- a Support Assessment;
- risk tolerance;
- precautionary rules;
- urgency;
- legal obligations;
- business considerations;
- human judgment;
- other information not contained in the Witness Case.

A Relying Party may rationally act despite weak, incomplete, or indeterminate support.

Such action does not increase the evidentiary support attributed to the Target Proposition.

---

# 3. Governing Principle

## 3.1. Canonical Principle

> **The support attributed to a Target Proposition in a Support Assessment is bounded by the Witness Case evaluated under the bound Evaluation Profile.**

## 3.2. Public Maxim

> **No witness-supported conclusion may outrun its Witness Case.**

The shorter expression:

> **No claim shall outrun its Witness Case**

may be used as a public maxim where *claim* is explicitly understood to mean a proposition as represented to be evidentially supported, rather than a bare proposition independently of its support.

## 3.3. Conceptual Constraint on Support Assessment

A Support Assessment satisfies the governing principle only if its Claim Reach and Support Profile do not exceed what is licensed by the evaluated Witness Case under the bound Evaluation Profile.

A Support Assessment must not rely upon greater:

- subject binding;
- instance binding;
- semantic reach;
- temporal reach;
- contextual reach;
- coverage;
- completeness;
- integrity;
- authority;
- independence;
- freshness;
- confidence;
- failure resistance;
- threat resistance

than the Witness Case licenses under that Evaluation Profile.

Where a dimension is required as a gate by the applicable Evaluation Profile, an unknown or unsatisfied gate must not be represented as satisfied and must not be compensated for by strength in unrelated dimensions.

Every known or reasonably discoverable material:

- limitation;
- unresolved dependency;
- uncertainty;
- gap;
- counter-support item;
- defeater

must remain attached to, or be unambiguously referenced by, the resulting Support Assessment.

This constraint governs the representation of evidentiary support.

It does not constrain the action a Relying Party may take under its own decision policy.

---

# 4. Foundational Invariants

## W-I1. Typed and Scoped Target Proposition

**Witnessability is evaluated only relative to a sufficiently typed and scoped Target Proposition.**

The Target Proposition must identify or bind, where material:

- the subject;
- the relevant process, state, action, or event instance;
- semantic content;
- polarity;
- modality;
- temporal orientation;
- temporal scope;
- contextual scope;
- normative status.

Different proposition dimensions must not be silently conflated.

In particular:

- identity does not imply authority;
- authority does not imply truthfulness;
- invocation does not imply execution;
- execution does not imply successful completion;
- completion does not imply correctness;
- result identity does not imply causal provenance;
- artifact presence does not imply capture completeness;
- non-observation does not automatically imply non-occurrence.

Witness Materials supporting factual premises do not by themselves establish a normative conclusion.

A normative conclusion requires an explicit normative premise, standard, rule, or authority relation represented in the applicable warrant.

Purpose and risk tolerance belong primarily to the Evaluation Profile or reliance policy rather than to the semantic identity of the Target Proposition.

## W-I2. Separation of Roles, Layers, Assessments, and Decisions

**Logically distinct stages and roles of witnessing, evaluation, and reliance remain distinct even when implemented by the same component, operator, or institution.**

The model must preserve the distinction among:

1. subject matter in the world;
2. available signal;
3. observation or capture;
4. record production;
5. witness artifact;
6. transformation and custody;
7. technical verification;
8. evidentiary appraisal;
9. instantiated argument;
10. Support Assessment;
11. Relying-Party Decision.

These distinctions are logical and do not prescribe a mandatory:

- linear sequence;
- temporal sequence;
- organizational structure;
- deployment structure.

No stage is inferred merely from the existence of a later stage.

A record does not prove that the represented event occurred.

A valid signature does not prove that the signed content is true.

A successful technical verification does not establish that the material supports the Target Proposition.

A positive Support Assessment does not compel a Relying Party to act.

A Relying-Party Decision does not retroactively strengthen the Support Assessment.

## W-I3. Explicit and Grounded Evidence-and-Argument Graph

**Support must arise from an explicit, typed, and grounded evidence-and-argument graph.**

A Witness Case must make it possible to identify:

- premises;
- supporting materials;
- warrants;
- inference steps;
- assumptions;
- dependencies;
- counter-support;
- defeaters;
- terminal premises.

Evidence does not interpret itself.

A valid evidence relation does not automatically establish a valid inference relation.

A valid inference relation does not automatically establish an acceptance relation.

Unresolved cycles and self-support do not create additional evidentiary support.

If A supports B only through B, neither receives independent support from the cycle.

If multiple witnesses depend on the same:

- collector;
- control plane;
- key service;
- time source;
- operator;
- underlying observation

they must not be counted as fully independent sources merely because they produce separate artifacts.

## W-I4. Realization, Binding, Coverage, and Selection Accountability

**Expected witnessing, configured witnessing, active witnessing, and assertions about realized witnessing must remain distinguishable.**

A Witness Case should distinguish, where material:

- intended witnessing;
- declared witnessing;
- configured witnessing;
- active witnessing;
- what is supported as having been realized;
- effective capture coverage;
- blind spots;
- unavailable periods;
- sampling;
- filtering;
- losses;
- delayed observations;
- reordered observations.

Declared architecture or configuration does not establish realized witnessing.

Any assertion about how witnessing was realized is itself a proposition requiring support within the same Witness Case or through an explicitly referenced supporting Witness Case.

### Contextual Binding

Authenticity of a witness artifact does not establish its binding to the relevant:

- subject;
- tenant;
- event or process instance;
- protocol session;
- temporal epoch;
- execution environment;
- role;
- authority;
- policy;
- Target Proposition.

Each material binding must be separately established or represented as unknown.

This protects against:

- replay;
- mix-and-match substitution;
- cross-tenant substitution;
- cross-session substitution;
- stale-evidence reuse;
- policy substitution;
- caveat stripping.

### Selection Accountability

A Witness Case should distinguish:

- the eligible material universe;
- material available to capture;
- captured material;
- retained material;
- examined material;
- presented material;
- material used in the Support Basis.

Authenticity of a presented subset does not establish its:

- completeness;
- neutrality;
- representativeness.

### Non-Occurrence

A categorical non-occurrence proposition requires support for sufficiently complete and functioning observation over the relevant domain and period.

A probabilistic non-occurrence proposition may be supported by incomplete observation where the applicable Evaluation Profile explicitly represents:

- a calibrated detection model;
- sampling assumptions;
- uncertainty;
- false-negative characteristics;
- relevant base-rate or prior assumptions.

## W-I5. Provenance and Semantic Continuity

**Production, custody, transformation, analysis, and presentation provenance must remain distinguishable and reconstructible to the degree claimed.**

A Witness Case should represent the following where material.

### Production Provenance

How, when, where, and by what mechanism material was produced.

### Custody Provenance

Who or what possessed, controlled, transferred, copied, retained, or disclosed the material.

### Transformation Provenance

What filtering, redaction, normalization, aggregation, compression, conversion, or derivation was performed.

### Analysis Provenance

Which tools, models, algorithms, schemas, reference values, and procedures were used to interpret the material.

### Presentation Provenance

How analysis was selected, summarized, contextualized, or transformed into the form presented for evaluation.

The model should preserve where relevant:

- schema versions;
- algorithm identifiers;
- software versions;
- calibration status;
- original-to-copy relations;
- redaction history;
- aggregation rules;
- format migrations;
- semantic mappings;
- time-source dependencies.

The following properties are distinct:

- byte integrity;
- custody continuity;
- semantic continuity;
- factual accuracy;
- truth of the Target Proposition.

No one of these properties, by itself, establishes all the others.

Provenance statements and provenance records are themselves Witness Materials.

They do not authenticate or establish their own accuracy merely by describing provenance.

## W-I6. Explicit Dependencies, Failure Models, Threat Models, and Version Binding

**All material dependencies and assumptions must be explicit and bound to the evaluated Witness Case.**

These may include:

- trust anchors;
- authority sources;
- delegations;
- revocation conditions;
- independence claims;
- common-mode dependencies;
- collusion assumptions;
- terminal premises;
- technical dependencies;
- organizational dependencies;
- economic dependencies.

The following distinctions must be preserved:

> External is not necessarily independent.

> Identified is not necessarily authorized.

> Authorized is not necessarily truthful.

> Independent is not necessarily accurate.

> Multiple witnesses are not necessarily multiple independent sources.

### Failure Model

The failure model addresses non-adversarial or unintentionally adverse conditions, including:

- clock drift;
- packet loss;
- service outage;
- calibration failure;
- operator error;
- accidental omission;
- nondeterministic processing;
- storage corruption;
- delayed propagation.

### Threat Model

The threat model addresses adversarial behavior, including:

- fabrication;
- suppression;
- replay;
- substitution;
- collusion;
- equivocation;
- key compromise;
- malicious transformation;
- selective disclosure;
- policy manipulation.

Failure-model assumptions and threat-model assumptions must not be conflated.

### Version, State, Epoch, and Interval Binding

Evaluation must be bound to the identified version, state, epoch, or effective interval of each material dependency, as applicable, including:

- the Evaluation Profile;
- appraisal policies;
- schemas;
- algorithms;
- reference values;
- trust anchors;
- revocation states;
- failure models;
- threat models.

A result must not be justified by silently substituting:

- a different policy;
- a more permissive profile;
- a temporally mismatched reference state;
- a different threat model;
- a different semantic interpretation.

## W-I7. Non-Amplification, Conservative Composition, and Preserved Incomparability

**No transition, inference, transformation, aggregation, or composition may increase the Support Envelope without an explicit warrant and any additional premises or basis required by that warrant.**

Every downstream result inherits relevant limitations of upstream materials and arguments unless those limitations are explicitly resolved.

In particular:

- authentication does not establish truth;
- integrity does not establish accuracy;
- registration does not establish occurrence;
- transparency does not establish completeness;
- provenance does not establish correctness;
- traceability does not establish legitimacy;
- identity does not establish authority;
- authority does not establish truthfulness;
- a receipt does not establish successful performance;
- an inclusion proof does not establish truth of the included assertion;
- an attestation result does not compel reliance;
- a configured observation mechanism does not establish realized coverage.

### Gating Dimensions

Where required as a gate by the applicable Evaluation Profile:

- missing subject binding cannot be compensated for by high integrity;
- missing authority cannot be compensated for by multiple signatures;
- unknown completeness cannot be compensated for by freshness;
- unresolved policy binding cannot be compensated for by provenance.

Unknown or unsatisfied gating dimensions remain unknown or unsatisfied.

### Conservative Composition

Composition must account for:

- subject compatibility;
- instance compatibility;
- temporal compatibility;
- contextual compatibility;
- semantic compatibility;
- shared dependencies;
- duplicate representations;
- common data sources;
- contradictions;
- missing links;
- differing policies;
- differing failure models;
- differing threat models.

The number of artifacts or witnesses does not by itself establish independence or stronger support.

### Preserved Incomparability

Support Envelopes may be compared under a profile-relative preorder, inducing a partial order over support-equivalence classes.

They need not be totally ordered.

One Witness Case may support stronger integrity and weaker independence.

Another may support broader coverage and weaker authority.

Neither must be forced into a total order unless the applicable Evaluation Profile defines a justified projection.

## W-I8. Uncertainty, Non-Positive Failure Semantics, Defeasibility, and Lifecycle

**Uncertainty, failure, counter-support, challenge, lifecycle, availability, and re-evaluability must remain explicit and must not be collapsed into a single binary status.**

### Support Outcome

At minimum:

- supported;
- not supported;
- indeterminate.

Not supported does not mean false.

### Counter-Support Status

At minimum:

- none identified;
- present;
- unresolved;
- prevailing under the Evaluation Profile.

The presence of counter-support does not necessarily establish that the Target Proposition is false.

Support and counter-support may coexist.

### Lifecycle Status

Possible lifecycle flags include:

- current;
- expired;
- revoked;
- withdrawn;
- superseded.

Lifecycle flags need not be mutually exclusive. For example, a Support Assessment may be both expired and superseded.

### Challenge Status

At minimum:

- none;
- open;
- resolved—assessment upheld;
- resolved—assessment modified;
- resolved—assessment rejected.

### Material-Availability Status

At minimum:

- available;
- partially available;
- unavailable;
- irrecoverable.

### Re-Evaluability Status

At minimum:

- reproducible;
- conditionally reproducible;
- not reproducible.

### Failure Semantics

The following conditions must remain distinguishable:

- absent;
- unknown;
- unavailable;
- malformed;
- invalid;
- not evaluated;
- not supported;
- contradicted;
- not applicable.

A timeout, parser failure, unavailable policy version, missing reference value, or failed retrieval must not become:

- a successful evaluation;
- a false proposition;
- evidence of non-occurrence.

### Uncertainty

A Witness Case should represent, where applicable:

- measurement uncertainty;
- temporal uncertainty;
- identity uncertainty;
- completeness uncertainty;
- calibration uncertainty;
- false-positive characteristics;
- false-negative characteristics;
- detection limits;
- confidence intervals;
- model uncertainty;
- residual ignorance.

### Defeasibility and Historical Applicability

Support remains challengeable and re-evaluable.

A supported assessment must not be represented as currently applicable once a material dependency is known to have ceased to hold.

Its historical status as of the original evaluation time, and any retroactive effect of compromise, revocation, correction, or policy change, are determined separately under the bound Evaluation Profile.

The original Support Assessment remains a preserved historical record.

Later events modify its present applicability through:

- linked lifecycle records;
- challenges;
- corrections;
- superseding assessments;
- re-evaluation

rather than through silent mutation.

---

# 5. Witnessability Boundary Architecture

## 5.1. Purpose

The **Witnessability Boundary Architecture** is the conceptual framework used to identify, type, relate, and evaluate the loci, scopes, envelopes, relations, boundaries, interfaces, transitions, and bindings that materially affect witnessing and evidentiary support.

The architecture exists to preserve distinctions among these constructs, not to collapse them into one universal boundary.

The Witnessability Boundary Architecture is a typed view over the Evidence Graph and Witness Case.

It is not a separate or competing evidence model.

## 5.2. Witnessability Boundary Constructs

**Witnessability boundary constructs** are typed representations of:

- loci;
- domains;
- scopes;
- capability envelopes;
- effective coverage relations;
- boundaries;
- interfaces;
- transitions;
- binding relations

that are materially relevant to witnessing or evaluation.

Not every boundary construct is literally a boundary.

The umbrella category exists to make heterogeneous but related constructs jointly describable without treating them as ontologically identical.

## 5.3. Witnessability Boundary

A **Witnessability Boundary** is a typed demarcation or interface in a witnessed or evaluating socio-technical arrangement, represented in a Witness Case, between specified domains, stages, regimes, or roles, across which one or more evidentially material properties may change or require explicit preservation.

Such properties may include:

- subject binding;
- instance binding;
- semantic meaning;
- integrity;
- custody;
- authority;
- independence;
- freshness;
- completeness;
- confidentiality;
- availability;
- evaluability.

Distinct boundary types must not be treated as equivalent merely because they coincide:

- physically;
- organizationally;
- operationally;
- temporally;
- within the same component.

Crossing a boundary must not be assumed to preserve an evidentially material property unless the relevant preservation relation is separately established.

## 5.4. Boundary Construct Types

### Observation Locus

The physical, logical, or organizational point at which a relevant signal is represented as having been available for observation.

An Observation Locus does not by itself establish capture.

### Capture Capability Envelope

The set of phenomena, events, states, signals, or properties that a capture mechanism is capable of acquiring under specified conditions.

Capability does not establish actual coverage.

### Effective Capture Coverage

A time-indexed relation between the relevant observable universe and what is supported as having been captured during the applicable period.

Effective Capture Coverage is not itself a boundary.

### Selection Relation

The relation among:

- eligible material;
- material available to capture;
- captured material;
- retained material;
- examined material;
- presented material;
- Support Basis material.

### Binding Relation

A **Binding Relation** is a typed relation connecting Witness Materials, Claim Assertions, Artifact Claims, or Support Assessments to a:

- subject;
- instance;
- session;
- epoch;
- environment;
- role;
- authority;
- policy;
- Target Proposition.

The existence and strength of a Binding Relation are themselves propositions requiring support.

### Record-Production Transition or Interface

The transition through which an observation, signal, or processed input becomes a persistent or transferable record.

### Transformation Transition

A transition involving:

- filtering;
- normalization;
- aggregation;
- compression;
- redaction;
- enrichment;
- derivation;
- semantic conversion.

### Signature-Production Transition

The transition through which a representation is cryptographically signed under a specified:

- key;
- signer identity or role;
- signing context;
- policy;
- environment.

A valid signature establishes only the properties licensed by the applicable signature and binding model.

It does not by itself establish truth of the signed content.

### Endorsement-Issuance Transition

The transition through which an actor or institution issues an attributed statement intended to confer:

- authority;
- reference status;
- approval;
- qualification;
- trust support.

An endorsement does not by itself establish the truth of the endorsed proposition or the soundness of downstream inferences.

### Attestation-Production Transition

The transition through which measurements, claims, environment information, reference material, and policy context are used to produce an attributed attestation output.

The applicable profile must state whether the output is:

- attestation evidence;
- an appraisal result;
- an attestation result;
- another attributed statement.

These outputs are not interchangeable.

Attestation production is distinct from ordinary signature production even where the resulting artifact is signed.

### Custody Transition or Interface

A transition between custodians, repositories, operators, possession domains, or retention regimes.

### Control Boundary

A demarcation in technical or administrative control over a witness, collector, processing system, repository, or evaluation component.

### Trust Boundary

A demarcation at which:

- trust assumptions;
- trusted computing bases;
- trust anchors;
- assurance dependencies

change.

### Authority Boundary

The limit of an actor’s role, delegation, or institutional authority to issue a particular Claim Assertion or perform a specified action.

Authority is distinct from epistemic, scientific, or professional competence.

### Competence Relation

A represented relation between an actor and the knowledge, skill, calibration, qualification, or capability relevant to a witnessing or evaluative role.

Competence is not itself authority.

### Semantic Boundary

A demarcation or transition between:

- schemas;
- vocabularies;
- ontologies;
- semantic contexts;
- interpretation rules.

### Verification Interface

The interface through which a presented artifact is subjected to technical verification.

### Appraisal Interface

The interface through which verified or otherwise processed materials are evaluated under an Evaluation Profile to produce a Support Assessment.

### Disclosure Scope

The set of Witness Materials, metadata, dependencies, or conclusions authorized or selected for disclosure to a specified party.

### Disclosure Interface

The transition through which Witness Materials or assessment results become available to another party or domain.

### Reliance Interface

The interface between a Support Assessment and the independent decision process of a Relying Party.

The Reliance Interface separates evidentiary evaluation from action.

## 5.5. Boundary Description and Realization Model

A material boundary construct may have separate:

- intended description;
- declared description;
- configured description;
- active description;
- realized description.

These descriptions are:

- independently attributable;
- versioned;
- time-bound;
- potentially inconsistent.

They are not stages in a presumed lifecycle.

They may coexist and may disagree.

Any assertion that one of these descriptions accurately characterizes a deployment requires its own Support Basis and retains uncertainty, dependencies, and possible defeaters.

## 5.6. Extensibility Rule

The catalog of boundary constructs in this document is non-exhaustive.

A profile-defined boundary construct should identify:

- its primitive kind;
- its source and target domains, stages, or roles;
- the evidentially material properties it affects;
- its temporal scope;
- its realization criteria;
- required preservation relations;
- required non-preservation disclosures;
- supporting propositions and dependencies.

A profile-defined construct must not be represented as equivalent to an existing construct merely because the two are co-located or implemented by the same component.

## 5.7. Boundary Profile

A Boundary Profile identifies which boundary constructs must be represented for a particular:

- domain;
- Target Proposition class;
- deployment;
- Protocol Binding;
- Evaluation Profile.

For example, an execution-evidence profile may require representation of:

- Observation Locus;
- Capture Capability Envelope;
- Effective Capture Coverage;
- process-instance Binding Relation;
- Record-Production Transition;
- Transformation Transitions;
- Signature-Production Transition or Attestation-Production Transition;
- Trust Boundary;
- Appraisal Interface.

A transparency profile may emphasize:

- issuer boundary constructs;
- registration interfaces;
- log trust boundaries;
- consistency mechanisms;
- Disclosure Scope;
- Disclosure Interface.

Boundary Profiles allow domain-specific precision without redefining the conceptual core.

---

# 6. Derived Rules

## 6.1. Negative-Claim Rule

Absence of a record supports absence of an event only where the Witness Case supports that the relevant event would have been:

- observable;
- captured;
- retained;
- available for evaluation;
- distinguishable from loss or failure.

Probabilistic non-occurrence may be supported without absolute completeness where the applicable Evaluation Profile represents:

- a calibrated detection model;
- sampling assumptions;
- uncertainty;
- false-negative characteristics;
- relevant base-rate or prior assumptions.

## 6.2. Independent-Strengthening Rule

Additional Witness Materials strengthen a Support Assessment only where they:

- support a relevant dimension;
- are properly bound;
- reduce uncertainty;
- reduce common dependencies;
- add relevant coverage;
- survive the applicable failure and threat models.

External location alone does not establish independence.

## 6.3. Cycle-Collapse Rule

Circular support and common terminal dependencies must not be counted as independent reinforcement.

Where multiple apparent witnesses terminate in the same controlling dependency, the effective independence of the group is bounded by that dependency.

## 6.4. Meta-Witnessing Rule

Meta-witnessing may support propositions about a witness’s:

- identity;
- configuration;
- state;
- calibration;
- authority;
- competence;
- availability;
- deployment;
- record-production behavior.

Meta-witnessing does not by itself establish:

- faithful observation;
- complete capture;
- independence;
- non-equivocation;
- future behavior.

Its own Witness Case, uncertainty, and terminal dependencies remain explicit.

## 6.5. Boundary Ceiling Rule

Where support for a proposition depends on crossing an evidentially material boundary, interface, transition, or Binding Relation, no downstream Support Envelope may attribute preservation of a material property beyond what is established across that construct, unless an explicit preservation warrant or an independent additional basis licenses the stronger attribution.

This rule specializes the Non-Amplification invariant to material-property preservation across Witnessability boundary constructs.

## 6.6. Non-Equivocation Rule

Where an issuer, witness, repository, evaluator, or log may present inconsistent views, an applicable profile may represent mechanisms such as:

- consistency proofs;
- checkpoint comparison;
- gossip;
- cosigning;
- cross-observation;
- public audit;
- conflict detection.

Such mechanisms strengthen only the propositions they are capable of supporting.

## 6.7. Long-Term Verifiability Rule

Where support must remain evaluable over time, the Witness Case should address:

- algorithm deprecation;
- key compromise;
- schema preservation;
- format migration;
- archival integrity;
- reference-value retention;
- time-source continuity;
- verification-tool availability;
- migration provenance.

Present verifiability does not imply future verifiability.

---

# 7. Abstract Formal Core

> This section defines an abstract formal signature and a set of safety constraints. It is not a complete proof theory, denotational semantics, probabilistic semantics, or machine-checked formal foundation.

## 7.1. Evaluation

Let:

\[
K\in\mathcal K
\]

be a Witness Case,

\[
P\in\mathcal P
\]

be a version-bound Evaluation Profile, and

\[
t\in\mathbb T
\]

be the evaluation time.

Evaluation produces:

\[
A=\operatorname{Eval}(K,P,t)\in\mathcal A
\]

where a Support Assessment may be represented abstractly as:

\[
A=
\left\langle
outcome,
envelope,
counterSupport,
qualifications,
reasons,
lifecycle
\right\rangle
\]

## 7.2. Assessment Binding

A Support Assessment must remain explicitly bound to the proposition, Witness Case, Evaluation Profile, and evaluation time from which it was produced.

Accordingly:

\[
\operatorname{targetRef}(A)
=
\operatorname{id}\!\left(\operatorname{target}(K)\right)
\]

\[
\operatorname{caseRef}(A)
=
\operatorname{id}(K)
\]

\[
\operatorname{profileRef}(A)
=
\operatorname{id}(P)
\]

\[
\operatorname{evaluationTime}(A)
=
t
\]

These bindings protect against:

- assessment substitution;
- case substitution;
- profile stripping;
- temporal decontextualization.

## 7.3. Licensed Support Envelopes

Let:

\[
\mathcal E_{P,\operatorname{target}(K)}
\]

be the set of Support Envelopes expressible for the Target Proposition under Evaluation Profile \(P\).

Define:

\[
\mathcal L_{P,t}(K)
\subseteq
\mathcal E_{P,\operatorname{target}(K)}
\]

as the set of Support Envelopes licensed by Witness Case \(K\) under profile \(P\) at time \(t\).

The governing envelope constraint is:

\[
\operatorname{Envelope}(A)
\in
\mathcal L_{P,t}(K)
\]

A Support Assessment violates the governing principle if it attributes an envelope outside this licensed set.

## 7.4. Required Qualifications

Let:

\[
e=\operatorname{Envelope}(A)
\]

For each licensed envelope \(e\), define:

\[
\operatorname{RequiredQualifications}_{P,t}(K,e)
\]

as the set of qualifications that must accompany attribution of that envelope.

The governing qualification constraint is:

\[
\operatorname{RequiredQualifications}_{P,t}(K,e)
\subseteq
\operatorname{Qualifications}(A)
\]

A licensed Support Envelope does not license removal of its required:

- limitations;
- dependencies;
- uncertainty;
- counter-support;
- defeaters;
- temporal qualifications;
- reason codes.

## 7.5. Profile-Relative Comparison

A profile-relative preorder may be defined:

\[
e_1\precsim_P e_2
\]

meaning that \(e_1\) does not represent stronger or broader support than \(e_2\) under the semantics of \(P\).

Support-equivalence is:

\[
e_1\sim_P e_2
\iff
\left(
e_1\precsim_P e_2
\land
e_2\precsim_P e_1
\right)
\]

Let:

\[
[e]_P
\]

denote the support-equivalence class of \(e\).

The preorder induces a partial order:

\[
\preceq_P
\]

over the quotient set:

\[
\mathcal E_P/{\sim_P}
\]

If an Evaluation Profile defines a canonical Support Envelope representation, it may use a partial order directly.

## 7.6. Maximal Licensed Frontier

A unique maximum Support Envelope need not exist.

Define the quotient image of the licensed set as:

\[
\overline{\mathcal L}_{P,t}(K)
=
\left\{
[e]_P
\;\middle|\;
e\in\mathcal L_{P,t}(K)
\right\}
\]

The maximal licensed frontier is:

\[
\mathcal F_{P,t}(K)
=
\operatorname{Max}_{\preceq_P}
\left(
\overline{\mathcal L}_{P,t}(K)
\right)
\]

Equivalently:

\[
\mathcal F_{P,t}(K)
=
\operatorname{Max}_{\preceq_P}
\left(
\mathcal L_{P,t}(K)/{\sim_P}
\right)
\]

The frontier may contain multiple mutually incomparable support-equivalence classes.

The frontier may also be empty:

\[
\mathcal F_{P,t}(K)=\varnothing
\]

An empty frontier has at least two materially different possible causes:

1. the licensed set is empty,

\[
\mathcal L_{P,t}(K)=\varnothing;
\]

2. the licensed set is nonempty but has no maximal support-equivalence class, including where it contains an unbounded ascending chain.

A Support Assessment or the applicable Evaluation Profile must distinguish which case applies. The first may correspond, under the applicable status semantics, to not-supported or indeterminate support. The second indicates that licensed support exists but no maximal representative exists under the profile-relative order.

An Evaluation Profile may define an approximation, closure, bounded-resolution, finite-presentation, or limit-representation rule. Such a rule must remain explicit and must not fabricate or silently imply a maximum that does not exist.

An Evaluation Profile may define rules for selecting or presenting one or more frontier elements, but no universal scalar maximum is presumed.

## 7.7. Gating Conditions

For a gating dimension \(i\), define:

\[
g_i(K,P,t)
\in
\left\{
\mathsf{satisfied},
\mathsf{unsatisfied},
\mathsf{unknown},
\mathsf{notApplicable}
\right\}
\]

For any licensed Support Envelope \(e\):

\[
e\in\mathcal L_{P,t}(K)
\Rightarrow
\left(
\operatorname{Requires}_i(e,P)
\Rightarrow
g_i(K,P,t)=\mathsf{satisfied}
\right)
\]

The state:

\[
\mathsf{notApplicable}
\]

is valid only where:

\[
\operatorname{Requires}_i(e,P)=\mathsf{false}
\]

If an envelope requires gate \(i\), assigning:

\[
g_i(K,P,t)=\mathsf{notApplicable}
\]

indicates a typing or profile inconsistency, and that envelope is not licensed.

An envelope requiring a gate cannot be licensed where that gate is:

- unsatisfied;
- unknown;
- incorrectly treated as not applicable.

## 7.8. Non-Monotonicity

No general monotonicity under:

- graph inclusion;
- graph extension;
- material addition;
- material removal

is presumed.

Witness Case reasoning may be defeasible and non-monotonic.

Additional material may:

- introduce counterevidence;
- reveal a dependency;
- alter selection context;
- weaken an independence claim;
- expose a binding defect;
- change uncertainty;
- invalidate a warrant.

An Evaluation Profile may define restricted monotonicity for explicitly positive, compatible, conflict-free extensions that do not alter:

- gates;
- defeaters;
- dependencies;
- uncertainty;
- selection context;
- policies;
- versions.

No universal monotonicity rule is part of this conceptual core.

## 7.9. Composition

Composition of Witness Cases is a partial, profile-relative, time-relative, and warrant-bound operation. For a represented composition warrant \(w\), it may be written:

\[
\oplus_{P,t}^{\,w}:
\mathcal K\times\mathcal K
\rightharpoonup
\mathcal K
\]

Where the operation is defined:

\[
K_c
=
K_1\oplus_{P,t}^{\,w}K_2
\]

The applicable Evaluation Profile must define:

- the admissible composition warrant \(w\);
- compatibility requirements;
- dependency treatment;
- contradiction handling;
- binding rules;
- preservation relations;
- the Target Proposition of the resulting Witness Case;
- output semantics.

Let:

\[
\operatorname{CompLic}_{P,t}(K_1,K_2,w)
\]

be the set of Support Envelopes licensed by the applicable composition semantics. Then:

\[
\mathcal L_{P,t}(K_c)
\subseteq
\operatorname{CompLic}_{P,t}(K_1,K_2,w)
\]

Any support attributed by the composed Witness Case beyond that independently licensed by its source Cases must be traceable to the explicit composition warrant and to every additional premise, binding, dependency, and preservation relation required by that warrant.

For every envelope \(e\) licensed for the composed Case, the required qualifications must include every unresolved qualification inherited from either source Case that is material to \(e\):

\[
\operatorname{InheritedQualifications}_{P,t}(K_1,K_2,e)
\subseteq
\operatorname{RequiredQualifications}_{P,t}(K_c,e)
\]

A source qualification may be removed from the required qualifications of the composed Case only where an explicit resolution is represented in the Support Basis of the composition warrant and is licensed by the applicable Evaluation Profile.

Composition may be undefined.

The following properties are not presumed:

- additivity;
- commutativity;
- associativity;
- idempotence.

A composed Witness Case should preserve:

- source identity;
- source provenance;
- contradictions;
- counter-support;
- unresolved source qualifications;
- shared dependencies;
- incompatible assumptions;
- profile bindings;
- version bindings;
- temporal context.

---

# 8. Responsible Engineering Obligations

These obligations are not foundational epistemic invariants, but they are necessary for responsible Witnessability infrastructure.

## 8.1. Data Minimization and Proportionality

Only material proportionate to the intended Target Proposition classes should be collected and disclosed.

The pursuit of stronger evidence does not automatically justify:

- unrestricted observation;
- indefinite retention;
- unrelated data collection.

## 8.2. Selective Disclosure

Evaluation should not require disclosure of irrelevant information where sufficient support can be provided through:

- commitments;
- proofs;
- redaction;
- aggregation;
- selective-disclosure mechanisms;
- controlled access.

Selective disclosure of a predicate does not by itself establish:

- completeness of the underlying Witness Materials set;
- completeness of disclosure;
- absence of undisclosed Counter-Material;
- absence of undisclosed defeaters.

## 8.3. Modelled Interference

Active challenge and interactive attestation are permitted.

The concern is not all influence upon the subject process, but unmodelled or unintended interference.

Material interference should be:

- measured where possible;
- bounded;
- represented;
- incorporated into uncertainty or failure analysis.

## 8.4. Retention and Deletion Governance

Preservation requirements must be reconciled with:

- data minimization;
- deletion obligations;
- privacy;
- retention limits;
- tiered access;
- cryptographic commitments;
- archival policy.

No universal rule of indefinite retention is presumed.

## 8.5. Abuse Resistance

Witnessability systems should resist:

- unauthorized surveillance;
- evidence laundering;
- selective omission;
- witness impersonation;
- coercive disclosure;
- decontextualized reuse;
- retaliatory use;
- indefinite profiling;
- function creep.

A witnessing system should not become less accountable merely because its own operation is opaque.

## 8.6. Evaluation Profile Governance and Abuse Resistance

The selection, authorship, authority, provenance, maintenance, effective interval, intended scope, and selection rule of an Evaluation Profile are material dependencies of every Support Assessment produced under that Profile.

A Support Assessment produced under one Evaluation Profile must not be represented as profile-independent or as equivalent to an assessment produced under another Profile unless an explicit comparison or translation rule establishes that relation.

Selection of an Evaluation Profile after inspection by the selecting party of the available Witness Materials or anticipated evaluation result is a material selection condition and must be disclosed unless it follows a previously declared selection rule. An Evaluation Profile may require pre-commitment to the Profile or to such a selection rule before that inspection.

Authorship or control of an Evaluation Profile by an evaluated party does not automatically invalidate the Profile, but it must be disclosed as a material dependency and potential conflict of interest relevant to independence, evaluation, and reliance.

Authorization, adoption, or syntactic validity of an Evaluation Profile does not establish the soundness of its admitted warrants, gates, projections, comparison relations, or composition rules.

A comparison or translation rule between Evaluation Profiles is itself versioned, attributable, challengeable, and temporally bounded material. Its assumptions, authority, provenance, scope, effective interval, and limitations remain explicit.

The following are forms of evaluation abuse:

- profile-shopping;
- profile capture;
- undisclosed profile substitution;
- undisclosed retrospective profile selection;
- undisclosed conflicts of interest in Profile authorship or control;
- presenting profile-relative results as profile-neutral or universal;
- representing results produced under different Profiles as equivalent without an explicit governed comparison or translation rule.

---

# 9. Conformance Direction

Future specifications may define the following implementation conformance classes:

- Witness Material Producer;
- Witness Case Producer;
- Artifact Verifier;
- Witness Case Evaluator;
- Witness Repository.

The following are specification artifacts rather than conformance roles:

- Protocol Binding;
- Evaluation Profile;
- Boundary Profile;
- Domain Profile.

The statement that a system “provides Witnessability” is incomplete unless accompanied by:

- the relevant Target Proposition class and typing schema;
- the applicable Evaluation Profile;
- the applicable Boundary Profile;
- the claimed implementation role or conformance class;
- the specification version.

A claim of alignment with the Witnessability Conceptual Core is incomplete unless accompanied by a Conceptual Consistency Mapping. The Mapping identifies the treatment of each applicable checklist item, justifies items treated as not applicable, discloses known deviations, and binds all relevant specification and profile versions.

---

# 10. Relation to Adjacent Models

Witnessability does not replace:

- observability;
- provenance models;
- attestation architectures;
- transparency systems;
- assurance cases;
- digital-forensics procedures;
- metrological traceability;
- authorization systems;
- decision theory.

Witnessability may reuse or map to existing models for:

- provenance;
- assurance arguments;
- attestation evidence;
- endorsements;
- reference values;
- transparency receipts;
- custody records;
- policy evaluation.

Witnessability does not claim novelty for:

- propositions;
- evidence graphs;
- provenance;
- verification;
- appraisal;
- assurance arguments;
- reliance decisions

considered individually.

Its proposed contribution is their claim-relative integration around:

- evidence about witnessing;
- evidence supporting characterizations of witnessing as realized;
- typed boundary constructs;
- subject and instance binding;
- coverage and selection accountability;
- non-amplification;
- explicit uncertainty;
- counter-support and defeaters;
- bounded Support Assessments;
- separation of evidentiary support from reliance decisions.

Its distinguishing focus is the transition:

> **from represented witnessing conditions and outputs, through typed evidence and explicit argument, to a bounded, challengeable, and profile-relative Support Assessment.**

---

# 11. Final Formulation

A system possesses Witnessability for a Target Proposition not because it produces logs, signatures, attestations, receipts, or provenance records, but because it makes available an evaluable and challengeable evidence-and-argument graph showing:

- what is supported as having been subject to witnessing;
- what is supported as having been observable;
- what is supported as having been captured;
- how records and artifacts are supported as having been produced;
- how their bindings, provenance, custody, authority, competence relevance, and dependencies were established;
- what warrants connect them to the Target Proposition;
- what uncertainty, counter-support, and defeaters remain;
- what Support Envelope is licensed under a version-bound Evaluation Profile.

The central commitment of Witnessability is:

> **The support attributed to a Target Proposition in a Support Assessment is bounded by the Witness Case evaluated under the bound Evaluation Profile.**

Its public maxim is:

> **No witness-supported conclusion may outrun its Witness Case.**

Its shorter public expression is:

> **No claim shall outrun its Witness Case.**

Its boundary discipline is:

> **Every evidentially material boundary construct must be explicitly typed, and no boundary, interface, transition, or binding relation may be assumed to preserve a material evidentiary property unless the relevant preservation relation is separately established.**

---

# Appendix A — Conceptual Consistency Checklist

## A.1. Purpose

A claim that a specification, profile, model, or protocol binding is aligned with the Witnessability Conceptual Core is incomplete unless accompanied by an explicit **Conceptual Consistency Mapping**.

The mapping identifies:

- the text or mechanism satisfying each applicable checklist item;
- any item treated as not applicable, with justification;
- known deviations or limitations;
- the versions of the Conceptual Core, Evaluation Profile, Boundary Profile, and other material profiles used.

The checklist tests conceptual consistency. It is not by itself an implementation conformance test.

## A.2. Minimal external conceptual interface

The mapping preserves the distinction among the following six externally visible conceptual objects:

1. Target Proposition;
2. Witness Case;
3. Evaluation Profile;
4. Support Envelope;
5. Support Assessment;
6. Relying-Party Decision.

The Witness Materials set, Evidence Graph, argument structure, and Witnessability Boundary Architecture disclose the internal structure and dependencies of that interface and are not thereby demoted or made optional.

## A.3. Checklist

- **CC-1 — Typed and Scoped Target Proposition.** Defines the Target Proposition using separately represented subject, instance, semantic, polarity, modal, temporal, contextual, and normative dimensions where material.

- **CC-2 — Separation of the Minimal External Interface.** Distinguishes the Target Proposition, Witness Case, Evaluation Profile, Support Envelope, Support Assessment, and Relying-Party Decision, even when one implementation performs multiple roles.

- **CC-3 — Grounded Evidence-and-Argument Graph.** Represents premises, Witness Materials, warrants, assumptions, dependencies, defeaters, and terminal premises sufficient to reconstruct the claimed support relation.

- **CC-4 — Realization Discipline.** Does not treat intended, declared, or configured witnessing as evidence that witnessing was active or realized; assertions about realization receive their own support.

- **CC-5 — Binding Discipline.** Establishes every material subject, instance, tenant, session, epoch, environment, role, authority, policy, and Target-Proposition binding, or represents it as unknown.

- **CC-6 — Coverage and Selection Accountability.** Represents capture capability and effective coverage and distinguishes eligible, available, captured, retained, examined, presented, and Support-Basis material where material.

- **CC-7 — Provenance and Semantic Continuity.** Preserves the required production, custody, transformation, analysis, and presentation provenance, together with semantic continuity and relevant versions.

- **CC-8 — Bound Evaluation Dependencies.** Binds the Evaluation Profile and every material policy, schema, reference state, failure model, threat model, trust dependency, and effective interval to the Support Assessment.

- **CC-9 — Non-Amplification.** Ensures non-amplification and prohibits attribution of stronger or broader support without an explicit warrant and every additional premise, basis, binding, dependency, and preservation relation required by that warrant.

- **CC-10 — Uncertainty and Lifecycle Discipline.** Preserves uncertainty, counter-support, non-positive failure semantics, challenge state, lifecycle applicability, material availability, and re-evaluability without collapsing them into a binary result.

- **CC-11 — Typed Boundary Constructs.** Types every evidentially material boundary construct and identifies the preservation or non-preservation relations required across it.

- **CC-12 — Evaluation Profile Governance.** Discloses Profile authorship, authority, provenance, maintenance, effective interval, intended scope, selection rule, and material conflicts of interest.

- **CC-13 — Profile Relativity.** Does not present a profile-relative Support Assessment as profile-independent, universal, or equivalent to an assessment under another Profile without an explicit governed comparison or translation rule.

- **CC-14 — Assessment–Decision Separation.** Keeps evidentiary support distinct from the Relying Party’s action, risk tolerance, precautionary policy, legal obligation, or other decision basis.

- **CC-15 — Terminal Premises.** Identifies terminal premises, their stable references, types, sources or authorities, scopes, grounds for terminal treatment, contestability, temporal applicability, and consequences of rejection or failure.

- **CC-16 — Normative Support.** Represents every normative premise and normative warrant required for a normative conclusion and distinguishes factual support from adoption, authority, applicability, interpretation, moral justification, or universal validity.

- **CC-17 — Non-Occurrence Discipline.** Attributes categorical non-occurrence only where sufficiently complete and functioning observation is supported; probabilistic non-occurrence requires a calibrated detection and sampling model, uncertainty, false-negative characteristics, and material base-rate or prior assumptions.

- **CC-18 — Independence Discipline.** Does not treat multiple artifacts, signatures, witnesses, or organizations as independent support without analysis of shared observations, collectors, operators, control planes, keys, time sources, infrastructures, incentives, and terminal dependencies.
