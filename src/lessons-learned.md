# Lessons Learned

## Project Name

AI Threat Hunt Agent in Microsoft Foundry

## Purpose

This document explains the key lessons learned while building, testing, validating, and documenting the `threat-hunt-agent`.

The purpose of this project was to build an AI-powered SOC assistant that can help analysts review IOCs, investigate alerts, create threat hunts, improve detections, generate KQL, and produce clear shift handoff summaries.

This explanation is written for a non-technical audience.

---

## Step 1: Clear Instructions Matter

One of the most important lessons learned is that AI performs better when it is given clear instructions.

The `threat-hunt-agent` needed specific rules for:

* IOC investigations
* Malware analysis
* Microsoft Sentinel alerts
* MITRE ATT&CK mapping
* KQL formatting
* Detection review
* Shift handoff summaries

### Non-Technical Explanation

An AI agent needs clear direction, just like a new employee needs a checklist or standard operating procedure.

Without clear instructions, the agent may give answers that are too general or incomplete.

### Lesson Learned

Clear instructions improve consistency, quality, and reliability.

---

## Step 2: Evidence Is More Important Than Assumptions

A major lesson from this project is that the agent must use evidence before making conclusions.

The agent was designed to avoid unsupported claims such as:

* Saying a device is compromised without proof
* Naming a malware family without enough evidence
* Assigning a threat actor without validation
* Raising severity based only on reputation

### Non-Technical Explanation

Just because something looks suspicious does not mean it is confirmed malicious.

The agent must explain what is known, what is unknown, and what still needs to be checked.

### Lesson Learned

Good security investigations require evidence, not guesses.

---

## Step 3: Threat Intelligence Is Helpful, But Not Enough by Itself

Threat intelligence helped the agent understand suspicious domains, hashes, and malware references.

However, threat intelligence alone does not prove that an organization was attacked.

### Non-Technical Explanation

Threat intelligence is like a public warning list.

It can say something is risky, but it does not automatically prove that the risk affected your environment.

### Lesson Learned

Threat intelligence should support an investigation, not replace actual evidence.

---

## Step 4: AI Can Improve SOC Consistency

The agent helped produce structured outputs for different SOC workflows.

It supported:

* Alert summaries
* Severity ratings
* Confidence ratings
* MITRE ATT&CK mapping
* KQL hunting queries
* Escalation recommendations
* Shift handoff summaries

### Non-Technical Explanation

The agent helps analysts follow the same process every time.

This is useful because SOC teams often work across different shifts, alerts, and priorities.

### Lesson Learned

AI can help standardize security investigations and reporting.

---

## Step 5: Validation Testing Is Critical

The project used a validation matrix to test the agent across multiple scenarios.

The validation covered:

* IOC testing
* Incident testing
* Threat hunt testing
* Detection testing

### Final Results

| Metric      | Result    |
| ----------- | --------- |
| Total Tests | 11        |
| Passed      | 11        |
| Failed      | 0         |
| Total Score | 147 / 154 |
| Accuracy    | 95.5%     |

### Non-Technical Explanation

The validation matrix worked like a report card.

It showed whether the agent was accurate, useful, and safe to use for SOC workflows.

### Lesson Learned

AI projects should be tested and scored before being trusted.

---

## Step 6: KQL Output Must Be Reviewed

The agent generated KQL queries for Microsoft Sentinel and Microsoft Defender XDR.

KQL helps analysts search security logs for suspicious activity.

### Non-Technical Explanation

KQL is like a search command for security data.

Even if the agent writes a useful query, an analyst should still review it before using it in a real environment.

### Lesson Learned

AI-generated queries are helpful, but they should be validated before production use.

---

## Step 7: Detection Engineering Requires Balance

The detection review tests showed that good detections must balance security coverage and alert noise.

A detection should catch real threats without creating too many unnecessary alerts.

### Non-Technical Explanation

If an alarm goes off too often for normal activity, people may start ignoring it.

The agent helped identify ways to reduce false positives while keeping useful security coverage.

### Lesson Learned

Good detections should be accurate, useful, and manageable for analysts.

---

## Step 8: False Positive Review Adds Real SOC Value

The false positive review showed how the agent can help reduce unnecessary alerts.

The agent recommended improvements such as:

* Adding more context
* Reviewing parent processes
* Checking trusted administrators
* Reviewing known software deployment tools
* Improving detection logic

### Non-Technical Explanation

A false positive is an alert that looks suspicious but turns out to be normal.

Reducing false positives helps analysts focus on real threats.

### Lesson Learned

AI can help reduce alert fatigue and improve SOC efficiency.

---

## Step 9: MITRE ATT&CK Mapping Helps Explain Behavior

MITRE ATT&CK helped the agent describe suspicious behavior using a standard security framework.

Examples included:

* PowerShell execution
* Command-and-control behavior
* Scheduled task persistence
* Encoded command usage

### Non-Technical Explanation

MITRE ATT&CK gives security teams a common language to describe attacker behavior.

This makes investigations easier to explain and document.

### Lesson Learned

ATT&CK mapping improves communication between analysts, engineers, and leadership.

---

## Step 10: Shift Handoff Reporting Is Important

The agent generated shift handoff summaries for investigation continuity.

Shift handoff summaries include:

* Current status
* Key findings
* Actions completed
* Pending actions
* Recommended next steps

### Non-Technical Explanation

SOC teams often work in shifts.

A good handoff helps the next analyst quickly understand what happened and what still needs to be done.

### Lesson Learned

Clear handoff reporting improves teamwork and reduces missed investigation steps.

---

## Step 11: Human Review Is Still Required

The agent is designed to support analysts, not replace them.

The final decision should still be made by a trained security professional.

### Non-Technical Explanation

AI can organize information and suggest next steps, but people are still responsible for confirming the facts and making response decisions.

### Lesson Learned

AI works best as a force multiplier for analysts, not a replacement for them.

---

## Step 12: Documentation Improves Project Value

Creating GitHub documentation made the project easier to understand.

The documentation included:

* README.md
* architecture.md
* validation-matrix.md
* deployment-guide.md
* security-controls.md
* lessons-learned.md
* Prompt files
* Screenshots
* Validation matrix

### Non-Technical Explanation

Documentation turns a technical project into a clear story.

It helps recruiters, managers, and technical reviewers understand what was built and why it matters.

### Lesson Learned

A well-documented project is easier to review, explain, and present.

---

## Step 13: Portfolio Projects Need Measurable Results

The validation score made the project stronger.

Instead of only saying the agent worked, the project showed measurable results:

* 11 total tests
* 11 passed
* 0 failed
* 147 / 154 score
* 95.5% accuracy

### Non-Technical Explanation

Numbers make the project easier to understand and more credible.

They show that the project was tested instead of only described.

### Lesson Learned

Measurable results make a cybersecurity portfolio project more professional.

---

## Step 14: Future Improvements

The project can be improved by adding more test cases and deeper integrations.

### Future Enhancements

* Add live Microsoft Sentinel integration
* Add live Microsoft Defender XDR integration
* Add identity investigation scenarios
* Add phishing investigation scenarios
* Add cloud security scenarios
* Add automated validation scoring
* Add dashboard reporting
* Add more real-world SOC incident examples

### Non-Technical Explanation

The project is complete, but it can keep growing as new use cases are added.

### Lesson Learned

Good security tools improve over time through testing, feedback, and real-world use.

---

## Final Summary

This project showed that an AI-powered SOC assistant can help analysts investigate alerts, review IOCs, create threat hunts, improve detections, generate KQL, and produce shift handoff summaries.

The biggest lessons learned were:

* Clear instructions improve AI quality
* Evidence is more important than assumptions
* Threat intelligence should support, not replace, investigation evidence
* Validation testing is critical
* Human analyst review is still required
* Strong documentation makes the project easier to explain
* Measurable results make the project more credible

The `threat-hunt-agent` successfully passed all validation tests and demonstrated strong value as a SOC support tool.

---

## References

* Microsoft Foundry Documentation: https://learn.microsoft.com/azure/ai-foundry/
* Microsoft Foundry Agents Documentation: https://learn.microsoft.com/azure/ai-foundry/agents/
* Microsoft Sentinel Documentation: https://learn.microsoft.com/azure/sentinel/
* Microsoft Defender XDR Documentation: https://learn.microsoft.com/defender-xdr/
* Microsoft Defender Advanced Hunting Documentation: https://learn.microsoft.com/defender-xdr/advanced-hunting-overview
* Kusto Query Language Documentation: https://learn.microsoft.com/kusto/query/
* MITRE ATT&CK Framework: https://attack.mitre.org/
* MITRE ATT&CK PowerShell Technique T1059.001: https://attack.mitre.org/techniques/T1059/001/
* MalwareBazaar: https://bazaar.abuse.ch/
* GitHub Docs: https://docs.github.com/
* Git Documentation: https://git-scm.com/doc
* Visual Studio Code Documentation: https://code.visualstudio.com/docs
* Windows Subsystem for Linux Documentation: https://learn.microsoft.com/windows/wsl/

---

## Author

James Banday
GitHub: https://github.com/jbanday808
LinkedIn: https://www.linkedin.com/in/james-allen-morta-banday-62a391128/

---

## Disclaimer

This project is intended for educational, research, and portfolio purposes.

All investigation findings generated by the AI agent should be validated using actual Microsoft Sentinel, Microsoft Defender XDR, endpoint, identity, network, and threat intelligence telemetry before making operational security decisions.
