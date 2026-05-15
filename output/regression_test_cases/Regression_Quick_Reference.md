# Regression Test Suite - Quick Reference
## Sprint 12 Messages Module

**Last Updated**: May 6, 2026  
**Total Test Cases**: 11  
**Module**: Messages

---

## 🎯 Critical Priority - Execute Every Release (2 test cases)

| Test ID | Title | Story | Type | Est. Time |
|---------|-------|-------|------|-----------|
| TC_S12_US2034_001 | Core message sending to practitioner | US2034 | Positive | 5 min |
| TC_S12_US2035_001 | Core message discard functionality | US2035 | Positive | 4 min |

**Total Critical Execution Time**: ~10 minutes

---

## 🔴 High Priority - Execute in Major/Minor Releases (4 test cases)

| Test ID | Title | Story | Type | Est. Time |
|---------|-------|-------|------|-----------|
| TC_S12_US2034_005 | Mandatory field validation | US2034 | Negative | 8 min |
| TC_S12_US2034_006 | Video attachment error handling | US2034 | Negative | 7 min |
| TC_S12_US2035_002 | Discard with partial data | US2035 | Positive | 5 min |
| TC_S12_US2035_005 | Discard confirmation dialog | US2035 | Negative | 6 min |

**Total High Priority Execution Time**: ~26 minutes

---

## 🟡 Medium Priority - Execute in Major Releases (5 test cases)

| Test ID | Title | Story | Type | Est. Time |
|---------|-------|-------|------|-----------|
| TC_S12_US2034_002 | Maximum character length validation | US2034 | Edge Case | 6 min |
| TC_S12_US2034_003 | Minimum required data | US2034 | Edge Case | 5 min |
| TC_S12_US2034_007 | Multiple video format validation | US2034 | Negative | 10 min |
| TC_S12_US2034_008 | Allowed attachments after error | US2034 | Positive | 8 min |
| TC_S12_US2035_007 | Discard with attachments | US2035 | Positive | 7 min |

**Total Medium Priority Execution Time**: ~36 minutes

---

## ⏱️ Execution Time Estimates

| Scenario | Test Cases | Estimated Time |
|----------|------------|----------------|
| **Hotfix/Patch** | Critical only (2) | 10-15 min |
| **Minor Release** | Critical + High (6) | 45-60 min |
| **Major Release** | All (11) | 90-120 min |
| **Full Regression** | All + exploratory | 4-5 hours |

---

## 📋 Acceptance Criteria Coverage

| Story | AC ID | Description | Test Cases |
|-------|-------|-------------|------------|
| US2034 | AC-2.1 | Send non-urgent messages | 4 tests |
| US2034 | AC-2.2 | Video attachment error | 3 tests |
| US2035 | AC-3.1 | Discard message | 4 tests |

**Coverage**: 100% of acceptance criteria

---

## 🔗 Test Execution Order

### Recommended Sequence:

**Phase 1: Core Sending Functionality (US2034)**
1. TC_S12_US2034_001 ← Start here (Critical)
2. TC_S12_US2034_005 (Validation)
3. TC_S12_US2034_002 (Max length)
4. TC_S12_US2034_003 (Min data)

**Phase 2: Attachment Handling (US2034)**
5. TC_S12_US2034_006 (Video error)
6. TC_S12_US2034_007 (Multiple formats)
7. TC_S12_US2034_008 (Allowed files)

**Phase 3: Discard Functionality (US2035)**
8. TC_S12_US2035_001 ← Critical
9. TC_S12_US2035_002 (Partial data)
10. TC_S12_US2035_005 (Confirmation)
11. TC_S12_US2035_007 (With attachments)

---

## 🛠️ Test Environment Setup

### Required Test Data:
- ✅ Test patient account with credentials
- ✅ At least 2 assigned test practitioners
- ✅ Video files: .mp4, .avi, .mov, .wmv
- ✅ Allowed files: PDF, JPG/PNG images
- ✅ Access to Mayo Clinic Patient Platform (test environment)

### Prerequisites:
- [ ] Test environment is accessible
- [ ] Patient account is active
- [ ] Practitioners are assigned to test patient
- [ ] Test files are prepared and available
- [ ] Defect tracking system is ready
- [ ] Previous test results are archived

---

## 🚨 Failure Escalation

| Priority | Action | Response Time |
|----------|--------|---------------|
| **Critical Failure** | Block release, immediate escalation | Within 1 hour |
| **High Failure** | Log High severity defect, assess impact | Within 4 hours |
| **Medium Failure** | Log Medium severity, evaluate for release | Within 1 day |

---

## 📊 Success Metrics

- **Target Pass Rate**: ≥95% (Critical & High)
- **Minimum Pass Rate**: 100% (Critical)
- **Blocking Issues**: 0 Critical defects
- **Execution Coverage**: 100% of planned tests

---

## 📁 File Locations

**Master Regression CSV**:  
`output/regression_test_cases/MASTER_REGRESSION_TEST_CASES_CLEAN.csv`

**Detailed Documentation**:  
`output/regression_test_cases/Sprint_12_Messages_Regression_Suite.md`

**Sprint Test Cases**:  
- `output/sprint_test_cases/US2034_Generated_Test_Cases.md`
- `output/sprint_test_cases/US2035_Generated_Test_Cases.md`

---

## 🔄 When to Update This Suite

- ✏️ After each sprint with Messages module changes
- 🔍 When new defects expose coverage gaps
- 📈 When business rules or workflows change
- 🗓️ Quarterly review and optimization

---

**Quick Contact**:  
For questions about this regression suite, contact the QA Team Lead or refer to the detailed documentation.
