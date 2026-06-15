
---

## `DET-001-Detection-Review.md`

```markdown
# DET-001 Detection Review

## Prompt

Review the following detection:

```text
Title: Suspicious Encoded PowerShell Execution

Current Logic:
- Process name equals powershell.exe
- Command line contains -enc or -encodedcommand