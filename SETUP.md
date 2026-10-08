# Setup

## Direct clone into Claude Code

Recommended if this repository itself is the installed skill:

```bash
mkdir -p ~/.claude/skills
git clone <your-repo-url> ~/.claude/skills/architect-apprentice
```

Expected path:

```text
~/.claude/skills/architect-apprentice/SKILL.md
```

Do not add an extra nesting level.

## Install from an arbitrary checkout

```bash
./scripts/install.sh
```

This creates a symlink at `~/.claude/skills/architect-apprentice` pointing to the current checkout.

Use a physical copy instead:

```bash
./scripts/install.sh --copy
```

## Update

If cloned directly into the skills directory:

```bash
cd ~/.claude/skills/architect-apprentice
git pull
```

## Uninstall

```bash
./scripts/uninstall.sh
```

## Pairing with Ruthless Architect

Keep both skills installed independently:

```text
~/.claude/skills/
├── architect-apprentice/
└── ruthless-architect/
```

Typical flow:

```text
architect-apprentice
→ ARCHITECT APPRENTICE HANDOFF
→ ruthless-architect
→ production spec/plan/review/implementation
```
