# Socratic Questioning Guide

Use this reference when the design exercise needs deeper probing. Do not ask every question; choose the few that expose the most consequential uncertainty.

## Boundaries and ownership

- What component owns this state?
- Who is allowed to mutate it?
- What would break if this responsibility moved elsewhere?
- Is this boundary based on domain ownership or merely current file layout?

## Data and invariants

- What is the source of truth?
- Which states must be impossible?
- Which constraint belongs in code versus persistent storage?
- Are historical records mutable or snapshots?

## Failure and recovery

- What happens if step N succeeds and step N+1 fails?
- Is retry safe?
- Can the same event/request be processed twice?
- What data is needed to diagnose/recover from partial failure?

## Concurrency and synchronization

- What happens if two actors write at once?
- Which ordering assumptions exist?
- Is stale data acceptable?
- Where is conflict resolution defined?

## Security and trust

- Where is authorization enforced?
- What data crosses a trust boundary?
- Can a client claim ownership/identity information that the server should derive?
- What information would be exposed by an authorization bug?

## Evolution

- How will existing data/users survive this change?
- Can old and new versions coexist during rollout?
- Is rollback possible after the data shape changes?
- Which decision is hardest to reverse later?

## Tests and observability

- What single test best proves the core invariant?
- Which failure requires integration rather than unit testing?
- What would you log/measure to know this is failing in production?
