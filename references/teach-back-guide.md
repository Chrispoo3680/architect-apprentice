# Teach-Back Guide

Teach-back verifies design ownership after implementation. It is not a memorization quiz.

## Good questions

Ask about decisions and consequences:

- Why does this component own this state?
- What invariant is enforced and where?
- Why was alternative X rejected?
- What happens under partial failure?
- How does authorization remain correct?
- How would a future migration affect this design?
- Which test proves the most important behavior?

## Evaluation

### OWNED

The user can explain the decision, key mechanism, important tradeoff, and at least one failure mode accurately.

### PARTIAL

The user understands the headline architecture but misses a consequential mechanism, invariant, or failure mode.

### GAP

The user cannot yet explain why the implementation is structured this way or relies mainly on "Claude chose it."

For PARTIAL/GAP, explain the missing concept using the actual final code/design where available, then ask one follow-up question to confirm understanding.
