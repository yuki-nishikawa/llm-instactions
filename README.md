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
  output-modes/     # symlink targets (same files, alternate path)
<llm>/
  inject.sh         # example injection script
  instactions.md    # usage notes (not for injection)
  available-modes/  # symlink to _common/output-modes
```

## Usage

Always include `base.txt`. Select exactly one mode.

```sh
cat _common/base.txt _common/thin.txt | pbcopy
cat _common/base.txt _common/prod.txt | pbcopy
cat _common/base.txt _common/spec.txt | pbcopy
cat _common/base.txt _common/note.txt | pbcopy
cat _common/base.txt _common/explore-jp.txt | pbcopy
```

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
- Do not inject `instactions.md`
- Do not inject multiple modes simultaneously
