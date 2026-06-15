# Validation Matrix

## Project Name

AI Threat Hunt Agent in Microsoft Foundry

## Purpose

This document explains the `Threat-Hunt-Agent Validation Matrix.xlsx` file used to test and measure the performance of the `threat-hunt-agent`.

The validation matrix acts like a scorecard. It confirms whether the agent can support SOC analyst workflows in a safe, accurate, and consistent way.

---

## Step 1: What the Validation Matrix Measures

The validation matrix measures how well the agent performs across common SOC tasks.

### Main Areas Tested

* IOC investigations
* Malware hash analysis
* Microsoft Sentinel incident review
* Threat hunting
* MITRE ATT&CK mapping
* Detection engineering review
* False positive review
* KQL generation
* Escalation recommendations
* Shift handoff summaries

### Non-Technical Explanation

This spreadsheet checks whether the AI agent gives helpful answers and avoids guessing.

It helps prove that the agent is not only working, but also following good investigation habits.

---

## Step 2: Why Validation Is Important

Validation is important because SOC investigations must be accurate and evidence-based.

The agent must not:

* Claim a system is compromised without proof
* Assign malware or threat actor attribution without enough evidence
* Raise severity based only on threat intelligence
* Generate unsupported conclusions
* Ignore analyst validation

### Non-Technical Explanation

The validation matrix helps make sure the agent does not overreact or make unsupported claims.

For example, if a suspicious domain appears in threat intelligence, the agent should not automatically say the company was breached. It should say that more investigation is required unless telemetry confirms activity.

---

## Step 3: Validation Categories

The validation matrix is organized into four main testing categories.

### Categories

| Category            | Purpose                                                |
| ------------------- | ------------------------------------------------------ |
| IOC Testing         | Tests suspicious indicators such as domains and hashes |
| Incident Testing    | Tests Microsoft Sentinel-style alert investigations    |
| Threat Hunt Testing | Tests proactive hunting workflows                      |
| Detection Testing   | Tests detection review and false-positive reduction    |

### Non-Technical Explanation

Each category checks a different SOC responsibility.

Together, they show whether the agent can support different security team workflows.

---

## Step 4: IOC Testing

IOC means Indicator of Compromise.

An IOC is a clue that may point to suspicious or malicious activity.

### IOC Examples

* Domain name
* IP address
* URL
* File hash
* Malware sample

### IOC Tests

| Test ID | Scenario                    | Purpose                                                                                                          |
| ------- | --------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| IOC-001 | Malicious Domain Validation | Tests whether the agent can investigate a suspicious domain                                                      |
| IOC-002 | SHA256 Analysis Validation  | Tests whether the agent can analyze a file hash without unsupported assumptions                                  |
| IOC-003 | Unknown Domain Validation   | Tests whether the agent can classify an indicator as unknown when evidence is limited                            |
| IOC-004 | Benign Domain Validation    | Tests whether the agent can recognize a legitimate domain                                                        |
| IOC-005 | Malicious Hash Validation   | Tests whether the agent can analyze a known malicious hash while separating reputation from confirmed compromise |

### Non-Technical Explanation

This section checks whether the agent can review suspicious indicators carefully.

The key goal is to confirm that the agent does not confuse “known bad reputation” with “confirmed activity inside the environment.”

---

## Step 5: IOC-001 Malicious Domain Validation

### Purpose

This test checks whether the agent can investigate a suspicious domain.

### Expected Behavior

The agent should:

* Identify the domain as suspicious or malicious based on available evidence
* Explain why the domain may be risky
* Map related behavior to MITRE ATT&CK when appropriate
* Recommend investigation steps
* Avoid unsupported compromise claims

### Non-Technical Explanation

The agent should explain the risk of the domain, but it should not claim that a system was infected unless environment evidence confirms it.

---

## Step 6: IOC-002 SHA256 Analysis Validation

### Purpose

This test checks whether the agent can analyze a SHA256 file hash.

### Expected Behavior

The agent should:

* Recognize the input as a file hash
* Review available malware or reputation context
* Identify if evidence is limited
* Avoid assigning malware family without enough proof
* Recommend additional validation

### Non-Technical Explanation

A file hash alone does not always prove what happened.

The agent should explain what the hash may represent and recommend further investigation when evidence is incomplete.

---

## Step 7: IOC-003 Unknown Domain Validation

### Purpose

This test checks whether the agent can classify a domain as unknown when there is not enough evidence.

### Expected Behavior

The agent should:

* Avoid guessing
* Classify the domain as unknown if evidence is insufficient
* Recommend telemetry review
* Recommend threat intelligence enrichment
* Keep severity low or informational if there is no confirmed activity

### Non-Technical Explanation

This test checks whether the agent is comfortable saying, “There is not enough information yet.”

That is important because a good analyst should not guess.

---

## Step 8: IOC-004 Benign Domain Validation

### Purpose

This test checks whether the agent can recognize a legitimate domain.

### Expected Behavior

The agent should:

* Identify the domain as benign when appropriate
* Explain that it appears to be legitimate
* Avoid unnecessary escalation
* Recommend validation if the domain appears in unusual context

### Non-Technical Explanation

This test checks whether the agent can avoid creating false alarms.

Not every domain is malicious.

---

## Step 9: IOC-005 Malicious Hash Validation

### Purpose

This test checks whether the agent can review a known malicious hash.

### Expected Behavior

The agent should:

* Identify the hash as malicious when supported by reputation or malware intelligence
* Explain malware family association if provided
* Provide MITRE ATT&CK mapping when behavior or intelligence supports it
* Generate Sentinel and Defender XDR KQL
* Clearly separate malware reputation from confirmed environment compromise

### Non-Technical Explanation

This test checks whether the agent understands the difference between “this file is known malware” and “this malware ran in our environment.”

That difference is very important for incident response.

---

## Step 10: Incident Testing

Incident testing checks whether the agent can investigate Microsoft Sentinel-style incidents.

### Incident Tests

| Test ID | Scenario                | Purpose                                                                     |
| ------- | ----------------------- | --------------------------------------------------------------------------- |
| SEN-001 | DNS Beaconing           | Tests repeated DNS activity that may look like command-and-control behavior |
| SEN-002 | PowerShell Execution    | Tests suspicious PowerShell launched from Microsoft Word                    |
| SEN-003 | Scheduled Task Creation | Tests possible persistence using a scheduled task                           |

### Non-Technical Explanation

This section checks whether the agent can review alert details and explain what should happen next.

---

## Step 11: SEN-001 DNS Beaconing

### Purpose

This test checks whether the agent can investigate repeated DNS requests.

### Expected Behavior

The agent should:

* Identify repeated DNS activity
* Explain why repeated timing may be suspicious
* Map possible activity to command-and-control behavior when appropriate
* State that maliciousness is not confirmed without more evidence
* Recommend additional investigation

### Non-Technical Explanation

If a computer contacts the same domain every 60 seconds, it may be normal or suspicious.

The agent should explain the concern without jumping to conclusions.

---

## Step 12: SEN-002 PowerShell Execution

### Purpose

This test checks whether the agent can investigate encoded PowerShell activity launched by Microsoft Word.

### Expected Behavior

The agent should:

* Identify PowerShell execution
* Explain why encoded commands may be suspicious
* Explain why Microsoft Word launching PowerShell is suspicious
* Decode or interpret known command content when possible
* Map to MITRE ATT&CK techniques
* Recommend containment or additional review when appropriate

### Non-Technical Explanation

This test simulates a suspicious document launching a command tool.

That behavior is often worth investigating because attackers may use documents to run hidden commands.

---

## Step 13: SEN-003 Scheduled Task Creation

### Purpose

This test checks whether the agent can investigate possible persistence.

Persistence means a method that allows unwanted activity to keep running or restart later.

### Expected Behavior

The agent should:

* Identify scheduled task creation
* Explain why scheduled tasks can be suspicious
* Identify possible persistence behavior
* Map to MITRE ATT&CK when appropriate
* Recommend follow-up investigation
* Generate useful KQL queries

### Non-Technical Explanation

A scheduled task can be used for legitimate automation or malicious persistence.

The agent should explain both possibilities and recommend validation.

---

## Step 14: Threat Hunt Testing

Threat hunt testing checks whether the agent can create proactive hunting plans.

### Threat Hunt Tests

| Test ID  | Scenario    | Purpose                                                                           |
| -------- | ----------- | --------------------------------------------------------------------------------- |
| HUNT-001 | ATT&CK Hunt | Tests whether the agent can build a hunt around PowerShell behavior               |
| HUNT-002 | IOC Hunt    | Tests whether the agent can build a hunt around a suspicious domain and file hash |

### Non-Technical Explanation

Threat hunting is like proactively searching for signs of trouble before a full incident is confirmed.

---

## Step 15: HUNT-001 ATT&CK Hunt

### Purpose

This test checks whether the agent can create a hunt for MITRE ATT&CK technique T1059.001 PowerShell.

### Expected Behavior

The agent should:

* Create a clear hunt hypothesis
* Identify expected evidence
* Map the hunt to ATT&CK
* Provide Sentinel KQL
* Provide Defender XDR KQL
* Recommend analyst review steps

### Non-Technical Explanation

This test checks whether the agent can help analysts search for suspicious PowerShell activity across the environment.

---

## Step 16: HUNT-002 IOC Hunt

### Purpose

This test checks whether the agent can create a threat hunt using IOCs.

### Expected Behavior

The agent should:

* Search for domain activity
* Search for hash activity
* Correlate endpoint and network evidence
* Recommend next steps
* Generate useful KQL queries
* Avoid claiming compromise unless evidence confirms it

### Non-Technical Explanation

This test checks whether the agent can help analysts search for known suspicious indicators in security logs.

---

## Step 17: Detection Testing

Detection testing checks whether the agent can review security detection logic.

### Detection Tests

| Test ID | Scenario              | Purpose                                             |
| ------- | --------------------- | --------------------------------------------------- |
| DET-001 | Detection Review      | Tests whether the agent can identify detection gaps |
| DET-002 | False Positive Review | Tests whether the agent can reduce noisy alerts     |

### Non-Technical Explanation

This section checks whether the agent can help improve alert rules.

The goal is to catch real threats while reducing unnecessary alerts.

---

## Step 18: DET-001 Detection Review

### Purpose

This test checks whether the agent can review a detection for suspicious encoded PowerShell.

### Expected Behavior

The agent should:

* Explain the detection objective
* Review the current logic
* Identify gaps
* Recommend improvements
* Suggest better KQL
* Include MITRE ATT&CK mapping when appropriate

### Non-Technical Explanation

This test checks whether the agent can improve a rule that looks for suspicious PowerShell behavior.

---

## Step 19: DET-002 False Positive Review

### Purpose

This test checks whether the agent can reduce false positives.

A false positive is an alert that looks suspicious but is actually normal or approved activity.

### Expected Behavior

The agent should:

* Identify why alerts may be noisy
* Recommend allowlists or exclusions
* Add context such as parent process, user role, device role, and signer
* Recommend safer detection logic
* Keep threat coverage while reducing unnecessary alerts

### Non-Technical Explanation

This test checks whether the agent can reduce alert fatigue.

Analysts should not waste time on hundreds of low-value alerts if the detection can be improved.

---

## Step 20: Scoring Method

The validation matrix uses scoring to measure quality.

### Scoring Areas

The score may evaluate whether the agent:

* Answered the prompt correctly
* Used the right investigation structure
* Avoided unsupported claims
* Included severity and confidence
* Used MITRE ATT&CK correctly
* Generated useful KQL
* Recommended next steps
* Provided shift handoff details when needed

### Non-Technical Explanation

The score shows how complete and useful the agent’s answer was.

A higher score means the response was more complete, safer, and more useful for SOC work.

---

## Step 21: Final Results

### Overall Results

| Metric      |    Result |
| ----------- | --------: |
| Total Tests |        11 |
| Passed      |        11 |
| Failed      |         0 |
| Total Score | 147 / 154 |
| Accuracy    |     95.5% |

### Non-Technical Explanation

The agent passed all validation tests.

The score shows that the agent performed well across different types of SOC work.

---

## Step 22: Category Results

| Category            | Tests | Passed | Failed | Pass Rate |
| ------------------- | ----: | -----: | -----: | --------: |
| IOC Testing         |     5 |      5 |      0 |      100% |
| Incident Testing    |     2 |      2 |      0 |      100% |
| Threat Hunt Testing |     2 |      2 |      0 |      100% |
| Detection Testing   |     2 |      2 |      0 |      100% |
| Overall             |    11 |     11 |      0 |      100% |

### Non-Technical Explanation

Every test category passed.

This means the agent performed consistently across IOC review, incident triage, hunting, and detection review.

---

## Step 23: Key Strengths

The validation matrix showed that the agent performed well in these areas:

* IOC investigation
* Malware hash review
* Sentinel incident review
* Threat hunt planning
* Detection engineering review
* False positive reduction
* MITRE ATT&CK mapping
* KQL generation
* Escalation recommendations
* Shift handoff reporting

### Non-Technical Explanation

The agent showed it can support multiple SOC responsibilities, not just one task.

---

## Step 24: Safety Strengths

The validation matrix also showed strong safety behavior.

### Safety Behaviors

* Avoided unsupported compromise claims
* Separated threat intelligence from confirmed evidence
* Did not assign severity based only on reputation
* Recommended validation before escalation
* Clearly stated when evidence was insufficient

### Non-Technical Explanation

This is important because security investigations must be careful.

The agent should help analysts, not create false panic.

---

## Step 25: Improvement Areas

The validation matrix identified a few areas for future improvement.

### Improvement Areas

* Improve scoring consistency across all tests
* Add more incident scenarios
* Add more cloud security scenarios
* Add more identity-based attack scenarios
* Add more phishing and email investigation scenarios
* Add more automated validation checks
* Add live Sentinel and Defender XDR telemetry integration

### Non-Technical Explanation

The current results are strong, but the project can become even better by testing more real-world scenarios.

---

## Step 26: Business Value

The validation matrix demonstrates that the agent can help SOC teams by:

* Reducing manual investigation time
* Improving consistency
* Supporting junior analysts
* Improving report quality
* Helping detection engineers tune alerts
* Supporting threat hunters with structured plans
* Helping SOC managers review results

### Non-Technical Explanation

The matrix helps prove that this is not just a demo.

It shows measured results that can be reviewed and explained.

---

## Step 27: Final Summary

The `Threat-Hunt-Agent Validation Matrix.xlsx` confirms that the `threat-hunt-agent` was tested across realistic SOC scenarios.

The agent successfully passed all 11 validation tests with:

* 11 total tests
* 11 passed
* 0 failed
* 147 out of 154 total score
* 95.5% accuracy

In simple terms, the validation matrix proves that the agent can support SOC analysts with investigations, threat hunting, detection review, KQL generation, and reporting while avoiding unsupported conclusions.
