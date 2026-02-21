# Claude LLM Instructions

This directory defines how to inject output control modes for Claude.

## Available modes

See: available-modes/

Do NOT paste mode contents into the same prompt.
Select exactly one mode at a time.

## Usage

Always include:

- base.txt

Select exactly one:

- thin.txt
- prod.txt
- spec.txt
- note.txt
- explore-jp.txt

## Injection pattern

Concatenate selected files and paste into Claude.

Example:

  base + thin:
    cat base.txt thin.txt | pbcopy

  base + prod:
    cat base.txt prod.txt | pbcopy

  base + spec:
    cat base.txt spec.txt | pbcopy

## Rules

- Do not show multiple modes to Claude
- Do not paste mode lists into Claude
- Do not paste instactions.md into Claude
- Keep injected text flat (no markdown structure)
