# Sprint 12 - US2035 Test Cases
## Need to discard the message

**Story ID**: US2035  
**Sprint**: Sprint 12  
**Module**: Messages  
**Application**: Mayo Clinic Patient Platform  
**Generated Date**: May 6, 2026

---

## 📋 Story-Level Traceability Matrix

| Acceptance Criteria ID | AC Description | Test Case IDs | Coverage Status |
|------------------------|----------------|---------------|-----------------|
| AC-3.1 | Patient should able to discard the message during composition | TC_S12_US2035_001, TC_S12_US2035_002, TC_S12_US2035_003, TC_S12_US2035_004, TC_S12_US2035_005, TC_S12_US2035_006, TC_S12_US2035_007 | ✅ Complete |

---

## 🧪 Individual Test Cases

### Test Case: TC_S12_US2035_001
**Test Case Title**: Verify patient can successfully discard message with complete data entered  
**Acceptance Criteria**: AC-3.1  
**Test Priority**: High  
**Test Type**: Functional - Positive  
**Preconditions**: 
- Patient has valid login credentials
- Patient has at least one assigned practitioner

**Test Steps**:
1. Login to Mayo Clinic Patient Platform with valid patient credentials
2. Navigate to the Messages section from the main menu
3. Click on "Send a message" button
4. Click "Next" button on the billing page
5. Select "Non-Urgent medical question" tile
6. Select a practitioner from the available list
7. Enter subject line: "Test message for discard"
8. Enter message text: "This message will be discarded"
9. Click "Discard" button
10. Confirm discard action if confirmation dialog appears
11. Verify navigation back to Messages main page

**Expected Results**:
1. Patient successfully logs into the platform
2. Messages section loads correctly
3. Message composition interface opens
4. Billing page is bypassed successfully
5. Non-urgent medical question option is displayed and selectable
6. Practitioner list displays correctly
7. Subject field accepts the text
8. Message text field accepts the input
9. Discard button is clicked
10. Confirmation dialog appears (if applicable) and user confirms
11. Message is discarded successfully, user returns to Messages main page, no draft is saved

**Test Data**:
- Username: patient.test@example.com
- Password: Test@123
- Subject: "Test message for discard"
- Message: "This message will be discarded"

**Business Impact**: Critical - Core discard functionality  
**Regression Candidate**: Yes

---

### Test Case: TC_S12_US2035_002
**Test Case Title**: Verify discard functionality with only subject entered (no message text)  
**Acceptance Criteria**: AC-3.1  
**Test Priority**: High  
**Test Type**: Functional - Positive  
**Preconditions**: 
- Patient has valid login credentials
- Patient has at least one assigned practitioner

**Test Steps**:
1. Login to Mayo Clinic Patient Platform
2. Navigate to Messages section
3. Click "Send a message" button
4. Click "Next" on billing page
5. Select "Non-Urgent medical question" tile
6. Select a practitioner
7. Enter subject line: "Subject only test"
8. Leave message text field empty
9. Click "Discard" button
10. Confirm discard if prompted
11. Verify return to Messages main page

**Expected Results**:
1. Login successful
2. Messages section loads
3. Composition interface opens
4. Billing page bypassed
5. Option selected
6. Practitioner selected
7. Subject entered successfully
8. Message field remains empty
9. Discard button clicked
10. Discard confirmed
11. Message composition discarded, user returns to Messages page, no data retained

**Test Data**:
- Subject: "Subject only test"
- Message: (empty)

**Business Impact**: High - Partial data discard  
**Regression Candidate**: Yes

---

### Test Case: TC_S12_US2035_003
**Test Case Title**: Verify discard functionality with only message text entered (no subject)  
**Acceptance Criteria**: AC-3.1  
**Test Priority**: Medium  
**Test Type**: Functional - Positive  
**Preconditions**: 
- Patient has valid login credentials
- Patient has at least one assigned practitioner

**Test Steps**:
1. Login to Mayo Clinic Patient Platform
2. Navigate to Messages section
3. Click "Send a message" button
4. Complete billing and non-urgent selection
5. Select a practitioner
6. Leave subject field empty
7. Enter message text: "Message without subject"
8. Click "Discard" button
9. Confirm discard action if required
10. Verify navigation back to main Messages page

**Expected Results**:
1. Login successful
2. Messages section displays
3. Composition opens
4. Selections completed
5. Practitioner selected
6. Subject field empty
7. Message text entered
8. Discard clicked
9. Discard confirmed
10. Composition discarded, user returns to Messages page

**Test Data**:
- Subject: (empty)
- Message: "Message without subject"

**Business Impact**: Medium - Partial data discard  
**Regression Candidate**: Yes

---

### Test Case: TC_S12_US2035_004
**Test Case Title**: Verify discard functionality before entering any data  
**Acceptance Criteria**: AC-3.1  
**Test Priority**: Medium  
**Test Type**: Functional - Edge Case  
**Preconditions**: 
- Patient has valid login credentials

**Test Steps**:
1. Login to Mayo Clinic Patient Platform
2. Navigate to Messages section
3. Click "Send a message" button
4. Click "Next" on billing page
5. Select "Non-Urgent medical question" tile
6. Select a practitioner (optional - test both with and without)
7. Do not enter any subject or message text
8. Click "Discard" button immediately
9. Confirm discard if prompted
10. Verify return to Messages main page

**Expected Results**:
1. Login successful
2. Messages section loads
3. Composition opens
4. Billing bypassed
5. Option selected
6. Practitioner selected or not
7. No data entered in fields
8. Discard button clicked
9. Discard processed (may not require confirmation for empty form)
10. Returns to Messages page without errors

**Test Data**:
- No data entered

**Business Impact**: Medium - Empty form discard  
**Regression Candidate**: Yes

---

### Test Case: TC_S12_US2035_005
**Test Case Title**: Verify discard confirmation dialog displays and cancel option works  
**Acceptance Criteria**: AC-3.1  
**Test Priority**: High  
**Test Type**: Functional - Negative  
**Preconditions**: 
- Patient has valid login credentials
- Discard confirmation dialog exists in the system

**Test Steps**:
1. Login to Mayo Clinic Patient Platform
2. Navigate to Messages section
3. Click "Send a message" button
4. Complete all steps through practitioner selection
5. Enter subject: "Testing cancel discard"
6. Enter message text: "Test message content"
7. Click "Discard" button
8. When confirmation dialog appears, click "Cancel" or "No"
9. Verify user remains on message composition page
10. Verify all entered data is still present
11. Click "Discard" again
12. Click "Confirm" or "Yes" on confirmation dialog
13. Verify successful discard

**Expected Results**:
1. Login successful
2. Messages section loads
3. Composition opens
4. All selections completed
5. Subject entered
6. Message entered
7. Discard clicked
8. Confirmation dialog dismissed, action cancelled
9. User remains on composition page
10. Subject and message text still present
11. Discard clicked again
12. Discard confirmed
13. Message discarded, user returns to Messages main page

**Test Data**:
- Subject: "Testing cancel discard"
- Message: "Test message content"

**Business Impact**: High - User decision flow  
**Regression Candidate**: Yes

---

### Test Case: TC_S12_US2035_006
**Test Case Title**: Verify discard functionality after multiple field edits  
**Acceptance Criteria**: AC-3.1  
**Test Priority**: Medium  
**Test Type**: Functional - Positive  
**Preconditions**: 
- Patient has valid login credentials
- Multiple practitioners available

**Test Steps**:
1. Login to Mayo Clinic Patient Platform
2. Navigate to Messages and start new message
3. Complete initial selections including practitioner
4. Enter subject: "First subject"
5. Enter message: "First message content"
6. Change subject to: "Updated subject"
7. Change message to: "Updated message content"
8. Change practitioner selection to different practitioner
9. Click "Discard" button
10. Confirm discard
11. Verify return to Messages page
12. Verify no draft or data is retained

**Expected Results**:
1. Login successful
2. Composition started
3. Initial data entered
4. Subject entered
5. Message entered
6. Subject updated successfully
7. Message updated successfully
8. Practitioner changed successfully
9. Discard clicked
10. Discard confirmed
11. Returns to Messages main page
12. All composition data discarded, no drafts saved

**Test Data**:
- Initial Subject: "First subject"
- Updated Subject: "Updated subject"
- Initial Message: "First message content"
- Updated Message: "Updated message content"

**Business Impact**: Medium - Edit and discard workflow  
**Regression Candidate**: Yes

---

### Test Case: TC_S12_US2035_007
**Test Case Title**: Verify discard functionality with attachment added  
**Acceptance Criteria**: AC-3.1  
**Test Priority**: Medium  
**Test Type**: Functional - Positive  
**Preconditions**: 
- Patient has valid login credentials
- Allowed attachment file available (e.g., PDF)

**Test Steps**:
1. Login to Mayo Clinic Patient Platform
2. Navigate to Messages section
3. Click "Send a message" button
4. Complete billing and non-urgent selection steps
5. Select practitioner
6. Enter subject: "Message with attachment"
7. Enter message text: "Testing discard with file"
8. Attach allowed file type (e.g., PDF document)
9. Verify attachment is added successfully
10. Click "Discard" button
11. Confirm discard action
12. Verify message and attachment are discarded
13. Verify return to Messages main page

**Expected Results**:
1. Login successful
2. Messages section loads
3. Composition opens
4. Selections completed
5. Practitioner selected
6. Subject entered
7. Message entered
8. File attached successfully
9. Attachment shows in composition
10. Discard clicked
11. Discard confirmed
12. Message and attachment both discarded
13. User returns to Messages page, no data retained

**Test Data**:
- Subject: "Message with attachment"
- Message: "Testing discard with file"
- Attachment: test_document.pdf

**Business Impact**: Medium - Discard with attachments  
**Regression Candidate**: Yes

---

## 📊 Coverage Gap Analysis

### Covered Scenarios:
✅ Discard with complete data (subject + message) (AC-3.1)  
✅ Discard with subject only (AC-3.1)  
✅ Discard with message only (AC-3.1)  
✅ Discard empty composition (AC-3.1)  
✅ Discard confirmation dialog and cancel functionality (AC-3.1)  
✅ Discard after multiple edits (AC-3.1)  
✅ Discard with attachments (AC-3.1)

### Potential Gaps Identified:
⚠️ **Browser Back Button**: No test case for using browser back button as alternative to discard  
⚠️ **Session Timeout**: No test for discard behavior during or after session timeout  
⚠️ **Concurrent Actions**: No test for clicking discard multiple times rapidly  
⚠️ **Navigation Away**: No test for navigating to different page without clicking discard (unsaved changes warning)  
⚠️ **Keyboard Shortcuts**: No test for ESC key or other keyboard shortcuts for discard  
⚠️ **Draft Auto-Save**: No test cases around draft functionality (if it exists)  
⚠️ **Error Scenarios**: No test for discard button being disabled or unavailable  
⚠️ **Accessibility**: No screen reader or keyboard navigation testing specified  

### Recommendations:
1. Add test case for navigating away without clicking discard (unsaved changes warning)
2. Include browser back button behavior test
3. Test keyboard shortcuts if supported (ESC key)
4. Verify discard button state and availability throughout composition
5. Add accessibility testing for discard functionality
6. Test rapid multiple clicks on discard button
7. Verify no memory leaks or data retention after discard

---

## 🎯 Regression Integration Recommendations

### High-Priority Regression Candidates:
1. **TC_S12_US2035_001** - Core discard with complete data (CRITICAL)
2. **TC_S12_US2035_005** - Discard confirmation and cancel flow (HIGH)
3. **TC_S12_US2035_002** - Discard with partial data (HIGH)

### Business Impact Classification:
- **Critical Impact**: TC_S12_US2035_001 (core discard functionality)
- **High Impact**: TC_S12_US2035_002, TC_S12_US2035_005 (user decision flows)
- **Medium Impact**: TC_S12_US2035_003, TC_S12_US2035_004, TC_S12_US2035_006, TC_S12_US2035_007

### Cross-Sprint Dependencies:
*Note: No previous sprint data provided. These test cases should be evaluated against:*
- **US2034**: Message sending functionality - discard should be alternative action
- **Existing Messages module**: Draft functionality (if exists)
- **Previous regression suite**: Message composition workflows

### Integration Points to Consider:
1. **Relationship with US2034**: Discard is complementary to Send functionality
2. **Draft Management**: Verify no draft is created when message is discarded
3. **Navigation Flow**: Ensure proper return to Messages home after discard
4. **Data Privacy**: Confirm all user data is cleared from memory after discard

---

## 📈 Test Execution Summary

| Metric | Count |
|--------|-------|
| Total Test Cases | 7 |
| AC-3.1 Coverage | 7 test cases |
| High Priority | 3 |
| Medium Priority | 4 |
| Positive Tests | 6 |
| Negative Tests | 1 |
| Edge Cases | 1 |
| Regression Candidates | 7 (100%) |

---

## 🔗 Cross-Story Dependencies

### Related User Stories:
- **US2034**: Message Sending - Discard is alternative to Send action
- **Future Stories**: Draft management (if planned)

### Workflow Integration:
The discard functionality works within the same message composition workflow as US2034. Test cases should verify:
- Smooth transition between Send and Discard actions
- Consistent UI/UX across message operations
- Data handling consistency between stories

---

**Document Status**: Ready for Review  
**Next Steps**: 
1. Review test cases with QA team
2. Clarify discard confirmation dialog requirements
3. Verify draft functionality requirements (if applicable)
4. Execute test cases in test environment
5. Integrate with US2034 test execution
6. Update regression suite based on results

---
*Generated by: Site-Specific Test Case Generator*  
*Prompt Version: Smart Regression Management System*
