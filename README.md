# Architect Apprentice

A Claude Code skill for learning system design **without turning production software into a training exercise**.

Architect Apprentice makes the developer propose the first architecture, then uses Claude as a Socratic challenger and senior reviewer. Its output is a structured proposal that can be passed into a production workflow such as [Ruthless Architect](https://github.com/) for independent validation, planning, adversarial review, implementation, and final acceptance.

## Why

Powerful coding agents can make it easy to ship without developing the judgment needed to maintain or explain the system later. Architect Apprentice separates those goals:

- **learning:** you form the first hypothesis;
- **critique:** Claude challenges assumptions and teaches missing concepts;
- **production:** a separate delivery workflow verifies and professionalizes the design.

The key rule is simple:

> **Learn decisions; delegate labor.**

## Recommended use

Use this skill for decisions involving data modeling, ownership, state, authorization, APIs, migrations, concurrency, synchronization, background work, system boundaries, or other architecture where multiple reasonable approaches exist.

Skip it for mechanical changes unless you deliberately want practice.

## Workflow

```text
DESIGN_PRACTICE
Problem → your design → Socratic challenge → revision → senior critique → handoff

LEARN_FIRST
Problem → concept primer → your design → Socratic challenge → revision → senior critique → handoff
```

The handoff is **not** production approval. For high-quality real-world work, pass it into your normal engineering workflow afterward.

## Install

Clone directly into Claude Code's skills directory:

```bash
mkdir -p ~/.claude/skills
git clone <your-repo-url> ~/.claude/skills/architect-apprentice
```

Or clone anywhere and run:

```bash
./scripts/install.sh
```

Then restart/reload Claude Code as needed and invoke the skill by name.

## Repository structure

```text
architect-apprentice/
├── SKILL.md
├── README.md
├── SETUP.md
├── CHANGELOG.md
├── CONTRIBUTING.md
├── SECURITY.md
├── LICENSE
├── VERSION
├── docs/
│   ├── WORKFLOW.md
│   └── RUTHLESS_ARCHITECT_HANDOFF.md
├── references/
│   ├── questioning-guide.md
│   └── teach-back-guide.md
├── scripts/
│   ├── install.sh
│   └── uninstall.sh
└── .github/
```

## Relationship to Ruthless Architect

Architect Apprentice and Ruthless Architect solve different problems:

```text
architect-apprentice
→ optimize for developer understanding and architectural judgment

ruthless-architect
→ optimize for production-quality execution and verification
```

Do not merge their gates. Completing this skill never means a production plan is approved.

## License

No open-source license has been chosen yet. See `LICENSE` before publishing publicly.
