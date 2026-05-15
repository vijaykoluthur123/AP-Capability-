# User Story Test Cases Template

## Story Information
- **Story ID**: [US-XXX]
- **Sprint**: [SPRINT-XX]
- **Module**: [Select ONE module - HOME/APPOINTMENTS/MESSAGES/TEST RESULTS/HEALTH RECORD/BILLING/MY ACCOUNT]
- **Module Focus**: [Specific functionality within the selected module]
- **Application**: Mayo Clinic Patient Platform
- **Story Title**: [As a Patient... I want... So that...]
- **Story Points**: [POINTS]
- **Priority**: [HIGH/MEDIUM/LOW]
- **Generated Date**: [DATE]

---

## Module-Specific Testing Approach

### **Single Module Focus**
This user story focuses on **[MODULE NAME]** module functionality only.
- Test cases should remain within the module scope
- Cross-module interactions should be separate user stories
- Module-specific validation rules apply

### **Module Independence**
- Each module operates independently with its own workflows
- Authentication is shared, but functionality is module-specific
- Test data should be relevant to the selected module

---

## Acceptance Criteria Coverage

### AC-1.1: [Acceptance Criteria Title]
**Given**: [Precondition]  
**When**: [Action]  
**Then**: [Expected Result]

**Related Test Cases**:
- TC_S[X]_US[XXX]_001: [Positive test case]
- TC_S[X]_US[XXX]_002: [Negative test case]
- TC_S[X]_US[XXX]_003: [Edge case]

### AC-1.2: [Next Acceptance Criteria]
**Given**: [Precondition]  
**When**: [Action]  
**Then**: [Expected Result]

**Related Test Cases**:
- TC_S[X]_US[XXX]_004: [Test case]
- TC_S[X]_US[XXX]_005: [Test case]

---

## Test Cases

### Test Case 1: [AC-1.1] Happy Path Scenario
**Test ID**: TC_S[X]_US[XXX]_001  
**AC Reference**: AC-1.1  
**Priority**: High  
**Test Type**: Positive  

#### Objective
Verify [acceptance criteria objective]

#### Preconditions
- [List preconditions from AC]

#### Test Steps (NUMBERED format for CSV export - NO semicolons within steps)
1. [Step based on Given condition]
2. [Step based on When action]
3. [Step for verification]

#### Expected Result (NUMBERED format for CSV export - NO semicolons within results)
1. [Result from Then condition]
2. [Additional verifications]

🚨 **CSV Format Rule**: When exporting to CSV, use comma separators between columns and format test steps as "1. Action 2. Action 3. Action" (no semicolons within the step sequence)

#### Test Data
- [Required test data]

---

### Test Case 2: [AC-1.1] Negative Scenario
**Test ID**: TC_S[X]_US[XXX]_002  
**AC Reference**: AC-1.1  
**Priority**: High  
**Test Type**: Negative  

#### Objective
Verify error handling for [scenario]

#### Preconditions
- [Preconditions]

#### Test Steps (NUMBERED format for CSV export)
1. [Steps to create error condition]
2. [Action that should fail]
3. [Verification of error handling]

#### Expected Result (NUMBERED format for CSV export)
1. [Error message/behavior expected]
2. [System state verification]

#### Test Data
- [Invalid/boundary test data]

---

## AC-to-Test Case Mapping Matrix

| Acceptance Criteria | Test Case ID | Test Type | Priority | Status |
|-------------------|--------------|-----------|----------|---------|
| AC-1.1 | TC_S[X]_US[XXX]_001 | Positive | High | Active |
| AC-1.1 | TC_S[X]_US[XXX]_002 | Negative | High | Active |
| AC-1.1 | TC_S[X]_US[XXX]_003 | Edge Case | Medium | Active |
| AC-1.2 | TC_S[X]_US[XXX]_004 | Positive | High | Active |
| AC-1.2 | TC_S[X]_US[XXX]_005 | Validation | Medium | Active |

---

## Coverage Analysis

### AC Coverage Status
- **Total Acceptance Criteria**: [COUNT]
- **Covered by Test Cases**: [COUNT]
- **Coverage Percentage**: [PERCENTAGE]%

### Test Type Distribution
| Test Type | Count | Percentage |
|-----------|-------|------------|
| Positive | [COUNT] | [%] |
| Negative | [COUNT] | [%] |
| Edge Case | [COUNT] | [%] |
| Validation | [COUNT] | [%] |
| **Total** | **[COUNT]** | **100%** |

### Priority Distribution
| Priority | Count | Percentage |
|----------|-------|------------|
| High | [COUNT] | [%] |
| Medium | [COUNT] | [%] |
| Low | [COUNT] | [%] |

---

## Traceability Matrix

### Story-Level Traceability
| Element | ID | Description | Link |
|---------|----|-----------|----- |
| User Story | US-XXX | [Story title] | [Link to story] |
| Acceptance Criteria | AC-1.1, AC-1.2, etc. | [AC descriptions] | Mapped to test cases |
| Test Cases | TC_S[X]_US[XXX]_001-00X | [Test descriptions] | Mapped to ACs |
| Requirements | REQ-XXX | [If applicable] | [Link to requirements] |

---

## Cross-Story Dependencies

### Dependencies on Other Stories
| Dependency | Story ID | Type | Impact |
|------------|----------|------|---------|
| [Description] | US-XXX | [Functional/Data/UI] | [Impact description] |

### Stories Dependent on This Story  
| Dependent Story | Story ID | Type | Impact |
|----------------|----------|------|---------|
| [Description] | US-XXX | [Functional/Data/UI] | [Impact description] |

---

## Test Execution Planning

### Execution Order
1. **Prerequisites**: [Setup required]
2. **Core Tests**: TC_S[X]_US[XXX]_001, 004 (AC validation)
3. **Error Tests**: TC_S[X]_US[XXX]_002, 003 (Negative scenarios)
4. **Integration Tests**: TC_S[X]_US[XXX]_005, 006 (Cross-component)

### Environment Requirements
- **Test Environment**: [Mayo Clinic Patient Platform Test Environment]
- **Test Data**: [Patient data sets, healthcare records, test results data]
- **User Accounts**: [Patient accounts with various healthcare scenarios]
- **Dependencies**: [Healthcare systems, lab systems, billing systems, provider portals]

---

## Risk Assessment

### Story-Specific Risks
| Risk | Impact | Likelihood | Mitigation |
|------|---------|------------|------------|
| [Risk description] | High/Medium/Low | High/Medium/Low | [Mitigation strategy] |

### Test Coverage Risks
| Risk Area | Coverage | Risk Level | Action Required |
|-----------|----------|------------|-----------------|
| Edge Cases | [%] | [Level] | [Action] |
| Error Handling | [%] | [Level] | [Action] |
| Integration Points | [%] | [Level] | [Action] |

---

## Success Criteria

### Story Acceptance
- ✅ All acceptance criteria have test coverage
- ✅ All test cases pass successfully  
- ✅ No critical defects found
- ✅ Performance criteria met (if applicable)

### Quality Gates
- **AC Coverage**: 100%
- **Test Case Pass Rate**: 95%+
- **Critical Defect Count**: 0
- **Test Execution Time**: Within [TIME] limit

---

## Next Steps

### For Sprint Consolidation
1. Compare with other stories in sprint for duplicates
2. Identify cross-story integration opportunities
3. Plan regression suite integration

### For Regression Integration
1. Map to existing regression test cases
2. Identify enhancement opportunities
3. Plan regression suite updates

---

## Approvals

| Role | Name | Date | Signature | Comments |
|------|------|------|-----------|----------|
| Story Owner | [Name] | [Date] | [Signature] | Story acceptance |
| QA Lead | [Name] | [Date] | [Signature] | Test case review |
| Scrum Master | [Name] | [Date] | [Signature] | Process compliance |

---

## CSV Export Guidelines (Critical for Client Presentations)

### Excel-Compatible Formatting Rules
**ALWAYS apply these formatting standards when generating CSV files:**

#### Text Formatting
- Use semicolons (;) instead of pipe characters (|) for step separators
- Remove unnecessary quotation marks around simple text fields
- Keep cell content concise and readable

#### Test Steps Column Format (UPDATED - Use NUMBERED format)
```
Correct: "1. Login as admin; 2. Navigate to module; 3. Perform action; 4. Verify result"
Previous: "Login as admin; Navigate to module; Perform action; Verify result"
```

#### Expected Result Column Format (UPDATED - Use NUMBERED format)
```
Correct: "1. Admin dashboard displays; 2. Module loads successfully; 3. Action completes; 4. Results are verified"
Previous: "Admin dashboard displays; Module loads successfully; Action completes; Results are verified"
```

#### Column Structure
```csv
Test_Case_ID,Story_ID,Acceptance_Criteria,Priority,Type,Business_Impact,Execution_Time_Min,Test_Summary,Test_Steps,Expected_Result,Test_Data,Cross_Sprint_Status
```

#### Required Output Files
1. **[StoryID]_Generated_Test_Cases.md** - Detailed documentation
2. **[StoryID]_Test_Cases_Clean.csv** - Excel-friendly format (primary)
3. **[StoryID]_Test_Cases.csv** - Detailed format (backup)

### Quality Checklist Before Client Demo
- [ ] CSV opens correctly in Excel without blank columns
- [ ] All test steps are readable and properly formatted
- [ ] Cross_Sprint_Status column displays consolidation information
- [ ] No special characters break the CSV structure
- [ ] File names follow naming convention

---

## Change Log

| Date | Changed By | Change Description | Reason |
|------|------------|-------------------|---------|
| [Date] | [Name] | Initial test case creation | Story development |
| [Date] | [Name] | Updated AC-1.2 test cases | AC refinement |