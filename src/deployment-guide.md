# Deployment Guide

# AI Threat Hunt Agent in Microsoft Foundry

## Purpose

This guide explains how the AI Threat Hunt Agent was designed, built, tested, validated, documented, and published to GitHub.

The project demonstrates how Microsoft Foundry can be used to create an AI-powered cybersecurity assistant that helps Security Operations Center (SOC) teams investigate alerts, analyze indicators of compromise (IOCs), perform threat hunting, review detections, and generate structured investigation reports.

This guide is written for both technical and non-technical audiences.

---

# Project Overview

The AI Threat Hunt Agent was developed using Microsoft Foundry and supported by a cybersecurity knowledge base containing threat hunting, malware analysis, incident response, and detection engineering documentation.

The project focused on four primary cybersecurity functions:

1. IOC Investigation
2. Security Incident Investigation
3. Threat Hunting
4. Detection Engineering

After development, the agent was validated using structured testing scenarios and published as a portfolio project in GitHub.

---

# Solution Architecture Overview

The solution consists of four major components:

### Microsoft Foundry Agent

The AI assistant responsible for analyzing security scenarios and generating investigation results.

### Knowledge Base

A centralized repository containing cybersecurity documentation and investigation references.

### Validation Framework

A structured testing process used to measure the accuracy and consistency of agent responses.

### GitHub Repository

The public portfolio repository used to document the project and store validation evidence.

### Non-Technical Explanation

Think of the solution as a digital security analyst supported by a training library, testing process, and documentation portal.

---

# Step 1: Create the AI Agent

### Actions Performed

1. Open Microsoft Foundry.
2. Select **Build an Agent**.
3. Create a new agent.
4. Enter the name:

```text
threat-hunt-agent
```

5. Publish the agent.

### Purpose

Creates the AI assistant responsible for cybersecurity investigations.

### Non-Technical Explanation

This step is similar to hiring a new employee and assigning them a security analyst role.

---

# Step 2: Configure Agent Instructions

### Instructions Included

* SOC Investigation Workflow
* Threat Hunting Procedures
* IOC Analysis Methodology
* Incident Response Guidance
* MITRE ATT&CK Mapping
* Detection Engineering Reviews
* KQL Query Generation
* Shift Handoff Reporting

### Purpose

Defines how the agent should investigate and respond.

### Non-Technical Explanation

This acts as the employee training manual and operating procedures.

---

# Step 3: Upload Security Knowledge Sources

### Knowledge Sources

* Microsoft Sentinel Documentation
* Microsoft Defender XDR Documentation
* Threat Hunting Guides
* Malware Analysis References
* Detection Engineering Guides
* MITRE ATT&CK Framework References
* Incident Response Procedures

### Purpose

Provides trusted cybersecurity references.

### Non-Technical Explanation

This creates a digital library the agent can use when answering questions.

---

# Step 4: Create and Connect the Knowledge Base

### Configuration

Knowledge Base Name:

```text
threat-hunt-kb
```

Description:

```text
Microsoft Sentinel, Defender XDR, Threat Hunting, Malware Analysis, IOC Analysis, MITRE ATT&CK, Detection Engineering, and Incident Response Knowledge Base.
```

Settings:

* Retrieval Reasoning Effort: Medium
* Output Mode: Answer Synthesis
* Chat Completion Model: Selected Foundry Model

### Purpose

Allows the agent to retrieve supporting information before generating responses.

### Non-Technical Explanation

Instead of relying solely on memory, the agent can research information from its reference library.

---

# Step 5: Validate IOC Investigations

### Test Scenarios

| Test ID | Scenario                    |
| ------- | --------------------------- |
| IOC-001 | Malicious Domain Validation |
| IOC-002 | SHA256 Analysis Validation  |
| IOC-003 | Unknown Domain Validation   |
| IOC-004 | Benign Domain Validation    |
| IOC-005 | Malicious Hash Validation   |

### Purpose

Validates IOC analysis capabilities.

### Non-Technical Explanation

This confirms the agent can distinguish between malicious, suspicious, benign, and unknown indicators.

---

# Step 6: Validate Security Incident Investigations

### Test Scenarios

| Test ID | Scenario                              |
| ------- | ------------------------------------- |
| SEN-001 | DNS Beaconing Investigation           |
| SEN-002 | PowerShell Execution Investigation    |
| SEN-003 | Scheduled Task Creation Investigation |

### Purpose

Tests the agent's ability to investigate security alerts.

### Non-Technical Explanation

This confirms the agent can explain what happened during a security event.

---

# Step 7: Validate Threat Hunting Capabilities

### Test Scenarios

| Test ID  | Scenario    |
| -------- | ----------- |
| HUNT-001 | ATT&CK Hunt |
| HUNT-002 | IOC Hunt    |

### Purpose

Tests proactive threat hunting functionality.

### Non-Technical Explanation

Threat hunting searches for hidden threats before alerts are triggered.

---

# Step 8: Validate Detection Engineering Capabilities

### Test Scenarios

| Test ID | Scenario              |
| ------- | --------------------- |
| DET-001 | Detection Review      |
| DET-002 | False Positive Review |

### Purpose

Tests the agent's ability to improve detection quality.

### Non-Technical Explanation

This helps reduce unnecessary alerts while improving security visibility.

---

# Step 9: Complete Validation Testing

Validation results were recorded in:

```text
Threat-Hunt-Agent-Validation-Matrix.xlsx
```

### Final Results

| Metric      | Result    |
| ----------- | --------- |
| Total Tests | 11        |
| Passed      | 11        |
| Failed      | 0         |
| Total Score | 147 / 154 |
| Accuracy    | 95.5%     |

### Purpose

Provides measurable evidence of project performance.

### Non-Technical Explanation

The validation matrix serves as the project's report card.

---

# Step 10: Create the Local Project Structure

Run:

```bash
mkdir -p ai-threat-hunt-agent-foundry
cd ai-threat-hunt-agent-foundry
mkdir -p img prompts src validation
```

### Purpose

Creates the project workspace.

### Command Overview

Command:

```bash
mkdir -p ai-threat-hunt-agent-foundry
```

Explanation:

* mkdir: Creates a directory.
* -p: Creates parent folders if needed.
* ai-threat-hunt-agent-foundry: Project folder name.

Summary:

Creates the project directory used to store all project files.

---

# Step 11: Create Project Documentation

Create:

```text
README.md
architecture.md
deployment-guide.md
validation-matrix.md
security-controls.md
lessons-learned.md
```

### Purpose

Documents project design, testing, and results.

### Non-Technical Explanation

Documentation allows others to understand the project without rebuilding it.

---

# Step 12: Add Project Artifacts

### Images

Store screenshots and diagrams in:

```text
img/
```

### Validation Evidence

Store validation files in:

```text
validation/
```

### Purpose

Provides visual proof and testing evidence.

---

# Step 13: Open the Project in VS Code

Run:

```bash
code .
```

### Purpose

Opens the project for editing and management.

---

# Step 14: Create the GitHub Repository

Repository Name:

```text
ai-threat-hunt-agent-foundry
```

Description:

```text
AI-powered SOC and threat hunting assistant built in Microsoft Foundry.
```

Visibility:

```text
Public
```

### Purpose

Creates the online project repository.

### Non-Technical Explanation

GitHub serves as the project's public portfolio site.

---

# Step 15: Publish the Project to GitHub

Run:

```bash
git init
git add .
git commit -m "Add AI Threat Hunt Agent project"
git branch -M main
git remote add origin https://github.com/jbanday808/ai-threat-hunt-agent-foundry.git
git push -u origin main
```

### Purpose

Uploads project files to GitHub.

### Non-Technical Explanation

These commands publish the project to the internet.

---

# Step 16: Verify Successful Deployment

Confirm the following exist:

```text
README.md
img/
prompts/
src/
validation/
```

Verify:

* Images display correctly.
* Documentation opens successfully.
* Validation files are accessible.
* Repository structure is complete.

### Purpose

Confirms the project is fully published and portfolio-ready.

---

# Lessons Learned

* AI improves investigation consistency.
* Validation is critical before operational use.
* High-quality instructions improve AI responses.
* Threat intelligence should support evidence-based investigations.
* Human analyst review remains essential.

### Lesson Learned

AI is most effective when it works with analysts, not instead of analysts.

---

# Conclusion

The AI Threat Hunt Agent demonstrates how Microsoft Foundry can be used to build an AI-powered cybersecurity assistant capable of supporting IOC analysis, incident investigations, threat hunting, detection engineering reviews, and SOC reporting.

The solution successfully passed all validation scenarios and achieved an overall accuracy score of 95.5%, demonstrating consistent and repeatable investigation results.

---

# Author

James Banday

GitHub: https://github.com/jbanday808

LinkedIn: https://www.linkedin.com/in/james-allen-morta-banday-62a391128/

---

# Disclaimer

This project is intended for educational, research, demonstration, and portfolio purposes.

All AI-generated findings should be validated using actual Microsoft Sentinel, Microsoft Defender XDR, endpoint, identity, network, and threat intelligence data before making operational security decisions.
