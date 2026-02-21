# llm-instructions

Prompt injection files for controlling LLM output style.

## Structure

```text
_common/
  base.txt          # always required
  thin.txt          # minimal output
  prod.txt          # production code
  spec.txt          # specification writing
  note.txt          # personal notes (ja)
  explore-jp.txt    # exploration / multi-hypothesis (ja)
claude/
  inject.sh         # injection helper
  instructions.md    # usage notes (not for injection)
github-copilot/
  inject.sh         # injection helper
  instructions.md    # usage notes (not for injection)
```

## Usage

Use `inject.sh` with a mode name. Output is copied to clipboard.

```sh
./claude/inject.sh thin
./claude/inject.sh prod
./claude/inject.sh spec
./claude/inject.sh note
./claude/inject.sh explore-jp
```

Paste the result into `CLAUDE.md` (Claude) or `.github/copilot-instructions.md` (GitHub Copilot).

## Modes

| mode | use case |
| --- | --- |
| `thin` | quick snippets, one-liners |
| `prod` | production code with error handling |
| `spec` | technical specs and design docs |
| `note` | personal memos, recall triggers (ja) |
| `explore-jp` | open-ended exploration, no single conclusion (ja) |

## Rules

- One mode per prompt
- Do not inject `instructions.md`
- Do not inject multiple modes simultaneously
