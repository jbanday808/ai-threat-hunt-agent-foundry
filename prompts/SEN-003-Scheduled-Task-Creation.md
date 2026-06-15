
---

## `SEN-003-Scheduled-Task-Creation.md`

```markdown
# SEN-003 Scheduled Task Creation

## Prompt

Investigate the following Microsoft Sentinel incident:

```text
Device: WIN10-TEST01
User: jsmith
Process: schtasks.exe
Command: schtasks /create /tn "Updater" /tr "powershell.exe -enc SQBFAFgA" /sc minute /mo 30
Parent Process: cmd.exe