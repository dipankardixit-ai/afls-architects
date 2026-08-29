# AFLS Architects · LSC Delivery Architect

Partner deck and Cursor skill pack for the **Agentforce Life Sciences (AFLS) Architects Team**.

This repository is the team showcase for the **LSC Delivery Architect** agent skill — a prototype-first Salesforce Delivery / Solution Architect for Life Sciences Cloud. It turns an LSC feature ask into:

1. a **Solution Plan** (build-technology decision + component inventory + effort)
2. a **Salesforce-grounded HTML prototype** (every control labelled OOTB / Config / Flow / LWC / OmniScript / Apex)
3. **implementation-ready user stories** (concrete persona, Given/When/Then, Pattern E field specs)

Deck inspired by the Claude OS partner-deck pattern ([reference](https://git.soma.salesforce.com/pages/ruby-maheshwari/Claude-OS/claude-partner-deck.html)): full-viewport slides, a skill catalog, and an install CTA.

**Open the deck:** after GitHub Pages is on, visit the repo’s Pages URL. Locally, open [`index.html`](index.html).

**Walk a live prototype:** [examples/LSC_AccountHierarchyViews_Prototype.html](examples/LSC_AccountHierarchyViews_Prototype.html)

---

## Agent skills

| Skill | What the agent produces |
|---|---|
| **Solution Plan** | Build-tech decision (declarative-first), component inventory, rough epic roll-up — no stories yet |
| **Grounded HTML prototype** | Single-file SLDS 2 mockup; every element badged with the Salesforce component that will ship |
| **User stories** | Concrete LSC persona, business-language GWT, Pattern E, Technical Implementation, effort S–XXL |
| **Epic breakdown** | Spec → ≤10 cross-referenced stories, dependency-ordered |
| **Veeva → LSC migration** | Terminology map (Call→Visit, Sample Lot→Production Batch); keep intent, modernize mechanics |
| **Bug / refactor** | Defect-shaped stories; skip vertical questions |
| **SAP Concur** | Visit & event expenses, Expense Report Entry, estimated allocation, MuleSoft sync |
| **QTA / GUS / diagrams** | Post-generation offers when those MCPs are connected |

Workflow modes (STEP 0): `Plan + Prototype` · `New Feature` · `Refactor` · `Epic Breakdown` · `Bug Fix` · `Veeva → LSC Migration`.

---

## Install into Cursor

Project-level (recommended):

```bash
git clone https://github.com/dipankardixit-ai/afls-architects.git
mkdir -p /path/to/your-project/.cursor/skills /path/to/your-project/.cursor/rules
cp -R afls-architects/skills/lsc-delivery-architect /path/to/your-project/.cursor/skills/
cp    afls-architects/rules/use-lsc-delivery-architect.mdc /path/to/your-project/.cursor/rules/
```

Or run `./install.sh /path/to/your-project`.

Reload the Cursor window. Then verify:

- *“Plan and prototype a test capability — no stories yet”* → Plan + Prototype mode
- *“Write an LSC user story for a test field”* → 5–16 clarifying questions

User-level (every workspace):

```bash
cp -R skills/lsc-delivery-architect ~/.cursor/skills/
cp    rules/use-lsc-delivery-architect.mdc ~/.cursor/rules/
```

---

## Prompt examples

```
Plan and prototype HCO parent-child hierarchy for KAMs — no stories yet.
```

```
Migrate this Veeva story to Salesforce LSC: "As a Field Rep, I need a Sample Inventory screen…"
```

```
Write an LSC user story for Concur visit-expense allocation to event attendees.
```

---

## Repository layout

```
index.html                          Partner deck (GitHub Pages)
examples/…Prototype.html            Grounded prototype example
skills/lsc-delivery-architect/      Cursor skill (SKILL.md + references + evals)
rules/use-lsc-delivery-architect.mdc  Always-on Cursor rule
```

Skill contract and version history live in [`skills/lsc-delivery-architect/SKILL.md`](skills/lsc-delivery-architect/SKILL.md). Upstream skill: [p-kothapalli/lsc-delivery-architect](https://github.com/p-kothapalli/lsc-delivery-architect).

## Optional MCP grounding

| Server | Use |
|---|---|
| `code-review-graph` | Verify **custom** components (callers, dependents, tests) |
| `salesforce-docs` | Verify **standard** LSC objects, fields, features |

Without either, the skill still runs and marks unverifiable names *(proposed)*.

---

## Team

**AFLS Architects Team** — Agentforce Life Sciences delivery architecture.

This is a showcase and install pack. The skill does not implement Apex/LWC/OmniStudio metadata; it plans, prototypes, and authors the story a builder can start without a follow-up meeting.
