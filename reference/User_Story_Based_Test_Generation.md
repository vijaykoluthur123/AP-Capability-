# User Story-Based Test Case Generation System

## Overview
This system generates test cases at the **User Story level** using Acceptance Criteria, then organizes them by Sprint and integrates into Regression Suite.

---

## 🎯 **New Structure: Story-Driven Approach**

### **Hierarchy:**
```
Sprint
├── User Story 1 (AC-based test cases)
├── User Story 2 (AC-based test cases)  
├── User Story 3 (AC-based test cases)
└── Sprint Consolidation → Regression Integration
```

### **File Organization:**
```
Sprint Test Cases/
├── Sprint_01_Story_US001_Claims_Login.md
├── Sprint_01_Story_US002_Claims_AssignClaim.md
├── Sprint_01_Story_US003_Claims_Validation.md
├── Sprint_01_Consolidated_TestCases.md
└── Sprint_01_to_Regression_Integration.md

Regression Test Suite/
├── OrangeHRM_Regression_Suite.md (consolidated)
├── Sprint_Integration_History.md
```

---

## 📋 **User Story Input Template**

### **Story Input Format:**
```markdown
## User Story Information
- **Story ID**: US-001
- **Sprint**: Sprint-01
- **Module**: Claims Management
- **Story Title**: As a user, I want to assign claims to employees
- **Story Description**: [Brief description]

## Acceptance Criteria
### AC-1.1: Login Validation
- Given I am on the login page
- When I enter valid credentials (Admin/admin123)
- Then I should be redirected to dashboard

### AC-1.2: Claims Navigation  
- Given I am logged in to the dashboard
- When I click on Claims menu
- Then I should see the Claims page with Assign Claim button

### AC-1.3: Assign Claim Form
- Given I am on the Claims page
- When I click Assign Claim button
- Then I should see a form with Employee Name, Event, Currency, Remarks fields

### AC-1.4: Successful Claim Assignment
- Given I am on Assign Claim form
- When I fill all mandatory fields and click Create
- Then claim should be created and success message displayed

### AC-1.5: Validation Errors
- Given I am on Assign Claim form  
- When I leave mandatory fields empty and click Create
- Then validation errors should be displayed
```

---

## 🔄 **Story-Level Test Case Generation Process**

### **Step 1: Individual Story Processing**
**Input**: Single User Story with Acceptance Criteria
**Output**: 
- `Sprint_[X]_Story_[US-ID]_[Module]_TestCases.md`
- Test cases mapped to each AC
- Story-level traceability matrix

### **Step 2: Sprint Consolidation**
**Process**: Combine all stories in the sprint
**Output**:
- `Sprint_[X]_Consolidated_TestCases.md`
- Cross-story duplicate detection
- Sprint-level coverage analysis

### **Step 3: Regression Integration**
**Process**: Integrate sprint test cases into regression suite
**Output**:
- Updated regression suite
- Integration analysis report
- Updated traceability matrices

---

## 📊 **Test Case ID Structure**

### **Story-Level IDs:**
```
Format: TC_[SPRINT]_[STORY]_[SEQUENCE]
Examples:
- TC_S01_US001_001 (Sprint 1, Story US001, Test Case 1)
- TC_S01_US001_002 (Sprint 1, Story US001, Test Case 2) 
- TC_S01_US002_001 (Sprint 1, Story US002, Test Case 1)
```

### **Regression IDs:**
```
Format: REG_[APP]_[MODULE]_[SEQUENCE]
Source Mapping: Links back to story test case
Examples:
- REG_ORANGEHRM_CLAIMS_001 (Source: TC_S01_US001_001)
- REG_ORANGEHRM_CLAIMS_002 (Source: TC_S01_US002_003)
```

---

## 🎯 **Acceptance Criteria to Test Case Mapping**

### **AC Mapping Strategy:**
```
AC-1.1 → TC_S01_US001_001 (Happy path test)
AC-1.1 → TC_S01_US001_002 (Negative test - invalid credentials)
AC-1.2 → TC_S01_US001_003 (Navigation test)
AC-1.3 → TC_S01_US001_004 (Form display test)
AC-1.4 → TC_S01_US001_005 (Successful creation test)
AC-1.5 → TC_S01_US001_006 (Validation test)
```

### **Test Case Types per AC:**
- **Positive Tests**: Happy path scenarios
- **Negative Tests**: Error conditions
- **Edge Cases**: Boundary conditions
- **Validation Tests**: Input validation
- **Integration Tests**: Cross-component interactions

---

## 📋 **Updated Prompt Configuration**

### **Story-Level Input Section:**
```markdown
## Current Task Configuration
### Task Type: User Story Test Case Generation

### Sprint Information:
- **Sprint ID**: SPRINT-2025-11
- **Sprint Goal**: [Sprint objective]

### User Story Details:
- **Story ID**: [US-XXX]
- **Module**: [Module Name]
- **Story Title**: [As a... I want... So that...]
- **Story Points**: [Story complexity]
- **Priority**: [High/Medium/Low]

### Acceptance Criteria:
[PASTE YOUR ACCEPTANCE CRITERIA HERE]

### Expected Deliverables:
- [x] Story-specific test cases (AC-mapped)
- [x] Story-level traceability matrix
- [x] Sprint consolidation (if last story in sprint)
- [x] Regression integration analysis
- [x] CSV export for test management tools
```

---

## 🔄 **Multi-Story Sprint Workflow**

### **Story 1 Processing:**
```
Input: US-001 with 5 Acceptance Criteria
Output: 
- 8 test cases covering all ACs
- Story_US001_TestCases.md
- Story_US001_Traceability.md
```

### **Story 2 Processing:**  
```
Input: US-002 with 4 Acceptance Criteria
Output:
- 6 test cases covering all ACs  
- Story_US002_TestCases.md
- Cross-story duplicate check vs US-001
```

### **Story 3 Processing:**
```
Input: US-003 with 6 Acceptance Criteria
Output:
- 7 test cases covering all ACs
- Story_US003_TestCases.md
- Cross-story duplicate check vs US-001, US-002
```

### **Sprint Consolidation:**
```
Input: All stories in Sprint (US-001, US-002, US-003)
Output:
- Sprint_01_Consolidated (21 total test cases)
- Cross-story analysis (2 duplicates found)
- Sprint-level coverage report
- Regression integration plan (19 unique test cases)
```

---

## 📊 **Cross-Story Analysis Example**

### **Duplicate Detection:**
```
Story US-001: TC_S01_US001_001 (Login test)
Story US-002: TC_S01_US002_001 (Login test)
Story US-003: TC_S01_US003_001 (Login test)

Analysis Result: 
- All 3 stories have login prerequisites
- Consolidate into shared REG_ORANGEHRM_AUTH_001
- Reference from all story test cases
```

### **Integration Opportunities:**
```
Story US-001: Claims form validation
Story US-002: Employee form validation  
Story US-003: Report form validation

Analysis Result:
- Similar validation patterns
- Create enhanced REG_ORANGEHRM_VALIDATION_001
- Covers all three form types
```

---

## 🎯 **Your New Process**

### **For Each User Story:**
1. **Update prompt** with story details and acceptance criteria
2. **Generate story-specific test cases**
3. **Review AC coverage** and test case quality

### **At Sprint End:**
4. **Consolidate all stories** in the sprint
5. **Review cross-story analysis** 
6. **Approve regression integration**

### **System Handles:**
- ✅ AC-to-test case mapping
- ✅ Cross-story duplicate detection
- ✅ Sprint-level consolidation
- ✅ Regression suite integration
- ✅ Complete traceability matrices

---

## 📋 **Sample Story Input Template**

```markdown
## User Story: US-001
### Story Details
- **Sprint**: Sprint-01
- **Module**: Claims Management  
- **Title**: As a Claims Administrator, I want to assign claims to employees so that claims can be processed efficiently

### Acceptance Criteria
#### AC-1.1: Access Claims Module
- Given I am logged in as Claims Administrator
- When I navigate to Claims section
- Then I should see Claims dashboard with Assign Claims option

#### AC-1.2: Assign Claim Form Access
- Given I am on Claims dashboard
- When I click "Assign Claim" button
- Then I should see claim assignment form with required fields

#### AC-1.3: Mandatory Field Validation
- Given I am on claim assignment form
- When I submit without filling mandatory fields
- Then I should see validation errors for each missing field

#### AC-1.4: Successful Claim Assignment
- Given I have filled all mandatory fields correctly
- When I click Submit
- Then claim should be assigned and success message displayed

#### AC-1.5: Claim Verification
- Given I have successfully assigned a claim
- When I check the claims list
- Then I should see the newly assigned claim in the list
```

---

## 🚀 **Benefits of Story-Based Approach**

### **Granular Control:**
- Test cases directly tied to acceptance criteria
- Clear traceability from requirement to test
- Easy to identify coverage gaps per story

### **Agile Alignment:**
- Matches real sprint planning process
- Story-level test case reviews
- Incremental regression suite growth

### **Quality Assurance:**
- Every acceptance criteria gets test coverage
- Cross-story duplicate elimination
- Consistent test case standards

### **Scalability:**
- Handles sprints with 5-15 user stories
- Manages complex feature development
- Maintains clean regression suite organization

**Ready to process your first user story with acceptance criteria!** 🎯