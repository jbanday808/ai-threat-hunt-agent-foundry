# Security Controls

## Project Name

AI Threat Hunt Agent in Microsoft Foundry

## Purpose

This document explains the security controls used in the `threat-hunt-agent` project.

The purpose of these controls is to make sure the AI agent supports investigations safely, avoids unsupported conclusions, protects analyst decision-making, and produces consistent SOC-ready outputs.

This explanation is written for a non-technical audience.

---

## Step 1: Evidence-Based Investigation Control

### Control

The agent must prioritize evidence before making conclusions.

### What This Means

The agent should use available facts such as:

* Alert details
* Device activity
* User activity
* Network activity
* File hash information
* Threat intelligence
* Uploaded knowledge sources

### Why This Matters

Security investigations must be based on facts, not guesses.

### Non-Technical Explanation

The agent should act like an investigator.

It should review the evidence first before saying whether something is suspicious, malicious, or confirmed.

### Example

If a suspicious domain appears in a report, the agent should not automatically say a system was compromised.

It should first check whether there is evidence that a device actually connected to that domain.

---

## Step 2: No Unsupported Compromise Claims

### Control

The agent must not claim a system, user, or organization is compromised unless evidence supports it.

### What This Means

The agent should avoid saying:

* A host is compromised
* A user account is compromised
* Malware executed
* Data was stolen
* Lateral movement occurred

unless the available evidence confirms it.

### Why This Matters

Unsupported compromise claims can cause unnecessary panic, poor decisions, and wasted investigation time.

### Non-Technical Explanation

The agent should not say “there was a breach” unless there is proof.

### Example

If a malicious file hash is known in threat intelligence, that does not mean the file ran inside the environment.

The agent should clearly separate file reputation from confirmed environment activity.

---

## Step 3: Threat Intelligence Separation Control

### Control

The agent must separate threat intelligence from confirmed activity.

### What This Means

Threat intelligence can provide context, but it does not automatically prove that something happened inside the environment.

### Why This Matters

Threat intelligence is useful, but it must be supported by telemetry or investigation evidence before making final decisions.

### Non-Technical Explanation

Threat intelligence is like a public warning list.

It can say something is known to be dangerous, but it does not prove that your systems were affected.

### Example

A domain may be listed as suspicious online, but the agent should still check whether any internal device communicated with it.

---

## Step 4: Severity Control

### Control

The agent must assign severity based on evidence and impact.

### Approved Severity Levels

* Informational
* Low
* Medium
* High
* Critical

### What This Means

Severity should be based on:

* Confirmed malicious activity
* Affected systems
* Affected users
* Business or mission impact
* Scope of activity

### Why This Matters

Incorrect severity ratings can cause overreaction or underreaction.

### Non-Technical Explanation

Severity explains how serious the situation is.

The agent should not label something as “Critical” unless there is enough evidence to justify it.

### Example

A malicious hash with no evidence of execution may be **Informational**.

A confirmed compromise affecting multiple systems may be **High** or **Critical**.

---

## Step 5: Confidence Control

### Control

The agent must assign confidence based on evidence quality.

### Approved Confidence Levels

* Low
* Medium
* High

### What This Means

Confidence should reflect how strong the evidence is.

### Why This Matters

Confidence helps analysts understand how much they should trust the conclusion.

### Non-Technical Explanation

Confidence answers the question:

“How sure are we?”

### Example

If there is limited evidence, the agent should use **Low** confidence.

If there is strong telemetry and supporting intelligence, the agent may use **High** confidence.

---

## Step 6: IOC Classification Control

### Control

The agent must classify indicators using approved labels only.

### Approved IOC Classifications

* Confirmed Malicious
* Suspicious
* Benign
* Unknown

### What This Means

The agent should use clear and consistent labels when reviewing indicators.

### Why This Matters

Consistent labels make reports easier to understand and compare.

### Non-Technical Explanation

This prevents unclear wording and helps analysts quickly understand the status of an indicator.

### Example

If there is not enough evidence, the agent should classify the indicator as **Unknown** instead of guessing.

---

## Step 7: MITRE ATT&CK Mapping Control

### Control

The agent must only map activity to MITRE ATT&CK when the behavior is supported by evidence.

### What This Means

The agent should map techniques only when there is:

* Telemetry
* Investigation evidence
* Malware analysis
* Valid intelligence correlation

### Why This Matters

Incorrect ATT&CK mapping can misrepresent what happened.

### Non-Technical Explanation

MITRE ATT&CK is a common way to describe attacker behavior.

The agent should only use it when the behavior actually matches the evidence.

### Example

PowerShell execution may map to **T1059.001 PowerShell** if the activity is shown in the evidence.

---

## Step 8: KQL Safety Control

### Control

The agent must produce clean KQL queries that analysts can review and test.

### What This Means

KQL should be placed in clear code blocks and should not include unsupported claims inside the query.

### Why This Matters

KQL is used to search security logs.

Poorly written queries can miss evidence or produce too many alerts.

### Non-Technical Explanation

KQL is like a search command.

The agent can help write the search, but an analyst should review it before using it in production.

### Example

The agent can generate a query to search for suspicious PowerShell activity, but a security analyst should test the query first.

---

## Step 9: Escalation Control

### Control

The agent must recommend escalation only when evidence supports it.

### Escalation May Be Needed When

* Malicious activity is confirmed
* Malware execution is observed
* Credential theft is suspected or confirmed
* Persistence is identified
* Lateral movement is observed
* Data exfiltration is suspected or confirmed
* Multiple suspicious signals are correlated

### Why This Matters

Escalation uses time and resources.

It should be based on evidence, not assumptions.

### Non-Technical Explanation

Escalation means sending the issue to a higher-level team.

The agent should not recommend escalation just because something looks suspicious.

### Example

A known malicious hash with no internal activity may require monitoring, but not immediate escalation.

---

## Step 10: Human Review Control

### Control

All agent outputs must be reviewed by a human analyst before action is taken.

### What This Means

The agent can assist with:

* Investigation summaries
* KQL queries
* Recommendations
* Handoff notes

But final decisions should be made by analysts.

### Why This Matters

AI can make mistakes, miss context, or misunderstand limited evidence.

### Non-Technical Explanation

The agent is a helper, not the final decision-maker.

### Example

Before blocking a domain or isolating a device, an analyst should confirm the evidence.

---

## Step 11: False Positive Reduction Control

### Control

The agent should help reduce unnecessary alerts while preserving security coverage.

### What This Means

The agent should consider:

* Known administrator activity
* Trusted tools
* Software deployment systems
* Approved scripts
* Device role
* User role
* Parent process
* Command-line context

### Why This Matters

Too many false alerts can overwhelm analysts.

### Non-Technical Explanation

A false positive is an alert that looks suspicious but is actually normal.

Reducing false positives helps analysts focus on real threats.

### Example

An encoded PowerShell command may be suspicious, but it may also be used by approved administrative tools.

The agent should recommend tuning the detection, not disabling it entirely.

---

## Step 12: Shift Handoff Control

### Control

The agent should produce clear shift handoff summaries.

### What This Means

A shift handoff should include:

* Current status
* Key findings
* Actions completed
* Pending actions
* Recommended next steps

### Why This Matters

SOC teams often work across multiple shifts.

Good handoffs prevent missed information.

### Non-Technical Explanation

A shift handoff helps the next analyst continue the investigation without starting over.

### Example

If one analyst investigates a suspicious PowerShell alert, the agent can summarize what was found and what still needs review.

---

## Step 13: Documentation Control

### Control

The project should include clear documentation for setup, architecture, validation, security controls, and lessons learned.

### Documentation Included

* README.md
* architecture.md
* validation-matrix.md
* deployment-guide.md
* security-controls.md
* lessons-learned.md
* Prompt files
* Screenshots
* Validation matrix

### Why This Matters

Good documentation makes the project easier to understand and review.

### Non-Technical Explanation

Documentation turns the project into a clear story that can be reviewed by recruiters, managers, and technical teams.

---

## Step 14: Validation Control

### Control

The agent must be tested using a structured validation matrix.

### Validation Results

| Metric      | Result    |
| ----------- | --------- |
| Total Tests | 11        |
| Passed      | 11        |
| Failed      | 0         |
| Total Score | 147 / 154 |
| Accuracy    | 95.5%     |

### Why This Matters

Validation proves that the agent was tested against realistic scenarios.

### Non-Technical Explanation

The validation matrix acts like a report card.

It shows that the agent passed all planned tests and performed well.

---

## Step 15: Responsible AI Control

### Control

The agent must avoid harmful, misleading, or unsupported security conclusions.

### What This Means

The agent should:

* State uncertainty when evidence is limited
* Avoid guessing
* Avoid unsupported attribution
* Avoid unsupported compromise claims
* Recommend validation
* Support human decision-making

### Why This Matters

Responsible AI use is important in cybersecurity because incorrect findings can lead to unnecessary business disruption.

### Non-Technical Explanation

The agent should be careful, honest, and evidence-based.

It should help analysts make better decisions, not make risky decisions on its own.

---

## Final Summary

The security controls in this project help ensure that the `threat-hunt-agent` is safe, useful, and reliable.

The main controls are:

* Evidence-based investigations
* No unsupported compromise claims
* Clear separation of threat intelligence and confirmed activity
* Proper severity and confidence ratings
* Safe IOC classification
* Evidence-based MITRE ATT&CK mapping
* Human analyst review
* False positive reduction
* Clear shift handoff reporting
* Structured validation testing
* Responsible AI behavior

Together, these controls make the agent more useful for SOC analysts while reducing the risk of inaccurate or unsupported security conclusions.

---

## References

* Microsoft Foundry Documentation: https://learn.microsoft.com/azure/ai-foundry/
* Microsoft Foundry Agents Documentation: https://learn.microsoft.com/azure/ai-foundry/agents/
* Microsoft Sentinel Documentation: https://learn.microsoft.com/azure/sentinel/
* Microsoft Defender XDR Documentation: https://learn.microsoft.com/defender-xdr/
* Microsoft Defender Advanced Hunting Documentation: https://learn.microsoft.com/defender-xdr/advanced-hunting-overview
* Kusto Query Language Documentation: https://learn.microsoft.com/kusto/query/
* MITRE ATT&CK Framework: https://attack.mitre.org/
* MalwareBazaar: https://bazaar.abuse.ch/
* GitHub Docs: https://docs.github.com/
* Git Documentation: https://git-scm.com/doc
* Visual Studio Code Documentation: https://code.visualstudio.com/docs
* Windows Subsystem for Linux Documentation: https://learn.microsoft.com/windows/wsl/

---

## Author

James Banday

GitHub: https://github.com/jbanday808/ai-threat-hunt-agent-foundry

LinkedIn: https://www.linkedin.com/in/james-allen-morta-banday-62a391128/

---

## Disclaimer

This project is intended for educational, research, and portfolio purposes.

All investigation findings generated by the AI agent should be validated using actual Microsoft Sentinel, Microsoft Defender XDR, endpoint, identity, network, and threat intelligence telemetry before making operational security decisions.
