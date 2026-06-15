# Architecture

## Project Name

AI Threat Hunt Agent in Microsoft Foundry

## Purpose

This document explains the architecture of the `threat-hunt-agent`, an AI-powered SOC and threat hunting assistant built in Microsoft Foundry.

The goal of this architecture is to show how security data, knowledge sources, AI analysis, validation testing, and SOC outputs work together to support security analysts.

---

## Step 1: Data Sources and Telemetry

The first layer of the architecture is the security data that the agent can use during investigations.

### Sources

* Microsoft Sentinel
* Microsoft Defender XDR
* Endpoints
* Network telemetry
* Threat intelligence
* MITRE ATT&CK
* Malware intelligence

### Non-Technical Explanation

This is the information the agent reviews before helping an analyst.

For example, if a user reports suspicious PowerShell activity, the agent can use alert details, device information, process activity, and known threat behavior to help explain what may be happening.

---

## Step 2: Microsoft Sentinel

Microsoft Sentinel provides security alerts, incidents, and logs.

### Role in the Architecture

Microsoft Sentinel helps the agent review:

* Alerts
* Incidents
* Log data
* Suspicious activity
* Investigation evidence

### Non-Technical Explanation

Microsoft Sentinel acts like the security alarm system. It tells the analyst when something suspicious may be happening.

---

## Step 3: Microsoft Defender XDR

Microsoft Defender XDR provides device, identity, and threat signals.

### Role in the Architecture

Defender XDR helps the agent review:

* Device activity
* User activity
* Process execution
* Endpoint behavior
* Threat signals

### Non-Technical Explanation

Defender XDR helps answer questions like:

* What device was involved?
* What user was involved?
* What process ran?
* Was the activity suspicious?

---

## Step 4: Endpoint Telemetry

Endpoint telemetry comes from computers and servers.

### Endpoint Examples

* Windows
* Linux
* macOS

### Role in the Architecture

Endpoint telemetry helps identify:

* Running processes
* Command-line activity
* File activity
* User activity
* Device behavior

### Non-Technical Explanation

This helps the agent understand what happened on a computer.

For example, it can help determine whether Microsoft Word launched PowerShell, which may be suspicious.

---

## Step 5: Network Telemetry

Network telemetry shows communication between systems.

### Network Sources

* Firewall logs
* DNS logs
* IDS/IPS alerts
* Proxy logs

### Role in the Architecture

Network telemetry helps identify:

* Suspicious domain connections
* Repeated DNS requests
* Possible beaconing behavior
* External communication
* Data movement

### Non-Technical Explanation

This helps the agent understand where a computer is trying to connect.

For example, repeated DNS requests every 60 seconds may be reviewed as possible beaconing activity.

---

## Step 6: Threat Intelligence

Threat intelligence provides outside security context.

### Threat Intelligence Examples

* Known malicious domains
* Known malicious IP addresses
* File hash reputation
* Malware family information
* Campaign information

### Role in the Architecture

Threat intelligence helps the agent understand whether an indicator is already known in the security community.

### Non-Technical Explanation

Threat intelligence is like a security watchlist.

It helps answer:

* Has this domain been seen before?
* Is this file hash known as malware?
* Is this activity linked to known attack behavior?

---

## Step 7: MITRE ATT&CK

MITRE ATT&CK is a framework used to describe attacker behavior.

### Role in the Architecture

MITRE ATT&CK helps the agent map activity to known tactics and techniques.

### Examples

* PowerShell execution
* Command and control
* Scheduled task persistence
* DNS-based communication

### Non-Technical Explanation

MITRE ATT&CK helps explain what type of attacker behavior may be involved.

Instead of saying “something suspicious happened,” the agent can describe the behavior in a standard cybersecurity language.

---

## Step 8: Malware Intelligence

Malware intelligence provides information about malicious files and malware families.

### Role in the Architecture

Malware intelligence helps the agent review:

* Malware hashes
* Malware family names
* Related campaigns
* Known malware behavior

### Non-Technical Explanation

This helps determine whether a file is known to be harmful.

For example, if a SHA256 hash is linked to TrickBot, the agent can explain that reputation while still avoiding unsupported claims about compromise.

---

## Step 9: Knowledge Base

The knowledge base gives the agent approved reference material.

### Knowledge Base Content

* Playbooks
* Runbooks
* Security policies
* Detection content
* ATT&CK framework notes
* KQL examples
* Malware analysis notes

### Role in the Architecture

The knowledge base helps the agent give more consistent and accurate answers.

### Non-Technical Explanation

The knowledge base is the agent’s reference library.

It helps the agent follow the correct investigation process instead of guessing.

---

## Step 10: Threat-Hunt-Agent in Microsoft Foundry

The center of the architecture is the `threat-hunt-agent`.

### Core Functions

The agent supports:

* IOC investigation
* Threat hunting
* Incident investigation
* Malware analysis
* ATT&CK mapping
* Detection engineering review
* KQL generation
* Shift handoff reporting

### Non-Technical Explanation

This is the AI assistant.

It reviews the available information, follows the investigation rules, and produces structured security outputs for analysts.

---

## Step 11: IOC Investigation

IOC investigation reviews suspicious indicators.

### IOC Examples

* Domains
* IP addresses
* URLs
* File hashes

### Role in the Architecture

The agent helps classify indicators as:

* Confirmed Malicious
* Suspicious
* Benign
* Unknown

### Non-Technical Explanation

This helps analysts decide whether something should be investigated further.

---

## Step 12: Threat Hunting

Threat hunting is the process of searching for suspicious activity before a confirmed incident exists.

### Role in the Architecture

The agent helps create:

* Hunt hypotheses
* Hunt steps
* Evidence to review
* KQL hunting queries
* Recommended actions

### Non-Technical Explanation

Threat hunting is proactive searching.

It is like checking for signs of smoke before a fire alarm goes off.

---

## Step 13: Incident Investigation

Incident investigation reviews security alerts and determines what happened.

### Role in the Architecture

The agent helps summarize:

* Alert details
* Affected users
* Affected devices
* Suspicious activity
* Recommended next steps

### Non-Technical Explanation

This helps analysts quickly understand whether an alert needs more investigation.

---

## Step 14: Malware Analysis

Malware analysis reviews suspicious or known malicious files.

### Role in the Architecture

The agent helps identify:

* File reputation
* Malware family associations
* Possible behaviors
* Detection opportunities
* KQL hunting queries

### Non-Technical Explanation

This helps analysts understand whether a file may be dangerous and what activity to search for.

---

## Step 15: ATT&CK Mapping

ATT&CK mapping connects suspicious behavior to known attacker techniques.

### Role in the Architecture

The agent maps behavior to tactics and techniques such as:

* Execution
* Persistence
* Defense evasion
* Command and control

### Non-Technical Explanation

This helps analysts explain suspicious activity in a standard format used by security teams.

---

## Step 16: Detection Engineering Review

Detection engineering review checks whether a security detection is effective.

### Role in the Architecture

The agent helps review:

* Detection logic
* Detection gaps
* False positive risks
* Improvement opportunities
* Validation queries

### Non-Technical Explanation

This helps improve security alerts so they catch real threats and reduce unnecessary noise.

---

## Step 17: KQL Generation

KQL is the query language used in Microsoft Sentinel and Microsoft Defender XDR.

### Role in the Architecture

The agent helps generate KQL for:

* IOC searches
* Device investigations
* Process activity
* Network activity
* Detection validation
* Threat hunting

### Non-Technical Explanation

KQL helps analysts search security logs.

The agent creates search queries that analysts can review and run.

---

## Step 18: Shift Handoff Reporting

Shift handoff reporting summarizes investigation status for the next analyst or team.

### Role in the Architecture

The agent helps document:

* Current status
* Key findings
* Completed actions
* Pending actions
* Recommended next steps

### Non-Technical Explanation

This helps the next analyst quickly understand what happened and what still needs to be done.

---

## Step 19: Validation Framework

The validation framework checks whether the agent works correctly.

### Validation Areas

* IOC testing
* Incident testing
* Threat hunt testing
* Detection testing
* Regression testing
* Quality scoring
* Pass/fail metrics

### Non-Technical Explanation

This is the quality control process.

It checks whether the agent gives useful, accurate, and safe answers.

---

## Step 20: Outputs and Actions

The final output layer shows what the agent creates for users.

### Outputs

* IOC reports
* Threat hunt plans
* Incident investigation summaries
* Malware analysis reports
* Microsoft Sentinel KQL
* Microsoft Defender XDR KQL
* Detection reviews
* Shift handoff summaries
* Recommendations

### Non-Technical Explanation

These are the final products analysts can use to continue an investigation or brief leadership.

---

## Step 21: Users

The architecture supports several SOC roles.

### Users

* SOC Analyst
* Threat Hunter
* Incident Responder
* Detection Engineer
* SOC Manager

### Non-Technical Explanation

Different security team members can use the agent for different tasks.

For example:

* A SOC Analyst can use it to triage alerts.
* A Threat Hunter can use it to build hunts.
* A Detection Engineer can use it to improve detections.
* A SOC Manager can use it to review summaries and recommendations.

---

## End-to-End Workflow

1. Security data is collected from Sentinel, Defender XDR, endpoints, network logs, and threat intelligence.
2. The agent uses the knowledge base to understand investigation rules and security context.
3. The analyst submits a prompt, such as an IOC, alert, malware hash, or detection rule.
4. The agent analyzes the request using available knowledge and security reasoning.
5. The agent maps relevant behavior to MITRE ATT&CK when supported.
6. The agent creates KQL queries for Microsoft Sentinel or Defender XDR.
7. The validation framework checks the response quality.
8. The agent produces reports, recommendations, and shift handoff summaries.
9. SOC users review and validate the findings before taking action.

---

## Architecture Summary

The `threat-hunt-agent` architecture connects security data, uploaded knowledge, AI analysis, validation testing, and SOC reporting into one workflow.

In simple terms, the agent helps security teams:

* Understand alerts faster
* Investigate IOCs more consistently
* Build better threat hunts
* Improve detections
* Generate useful KQL
* Create clear reports
* Support analyst decision-making

The agent does not replace human analysts. It supports them by organizing information, improving investigation quality, and helping produce consistent SOC-ready outputs.

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
