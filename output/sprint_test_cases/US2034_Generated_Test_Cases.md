# Sprint 12 - US2034 Test Cases
## Need to send the message for non-urgent medical questions

**Story ID**: US2034  
**Sprint**: Sprint 12  
**Module**: Messages  
**Application**: Mayo Clinic Patient Platform  
**Generated Date**: May 6, 2026

---

## 📋 Story-Level Traceability Matrix

| Acceptance Criteria ID | AC Description | Test Case IDs | Coverage Status |
|------------------------|----------------|---------------|-----------------|
| AC-2.1 | Patient should able to send the message for non urgent medical questions | TC_S12_US2034_001, TC_S12_US2034_002, TC_S12_US2034_003, TC_S12_US2034_004, TC_S12_US2034_005 | ✅ Complete |
| AC-2.2 | Patient should see error when attaching video files | TC_S12_US2034_006, TC_S12_US2034_007, TC_S12_US2034_008 | ✅ Complete |

---

## 🧪 Individual Test Cases

### Test Case: TC_S12_US2034_001
**Test Case Title**: Verify patient can successfully send non-urgent medical question message  
**Acceptance Criteria**: AC-2.1  
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
7. Enter subject line: "Question about medication"
8. Enter message text: "I have a question about my current medication dosage"
9. Click "Send" button

**Expected Results**:
1. Patient successfully logs into the platform
2. Messages section loads correctly
3. Message composition interface opens
4. Billing page is bypassed successfully
5. Non-urgent medical question option is displayed and selectable
6. Practitioner list displays correctly
7. Subject field accepts the text
8. Message text field accepts the input
9. Message is sent successfully with confirmation message displayed

**Test Data**:
- Username: patient.test@example.com
- Password: Test@123
- Subject: "Question about medication"
- Message: "I have a question about my current medication dosage"

**Business Impact**: Critical - Core messaging functionality  
**Regression Candidate**: Yes

---

### Test Case: TC_S12_US2034_002
**Test Case Title**: Verify message sending with maximum character length in subject and message  
**Acceptance Criteria**: AC-2.1  
**Test Priority**: Medium  
**Test Type**: Functional - Edge Case  
**Preconditions**: 
- Patient has valid login credentials
- Patient has at least one assigned practitioner

**Test Steps**:
1. Login to Mayo Clinic Patient Platform with valid patient credentials
2. Navigate to Messages section
3. Click on "Send a message" button
4. Click "Next" button on the billing page
5. Select "Non-Urgent medical question" tile
6. Select a practitioner from the list
7. Enter maximum allowed characters in subject line (if limit exists)
8. Enter maximum allowed characters in message text field (if limit exists)
9. Click "Send" button

**Expected Results**:
1. Patient successfully logs in
2. Messages section loads
3. Message composition opens
4. Billing page is bypassed
5. Non-urgent option is selected
6. Practitioner is selected
7. Subject field accepts maximum characters without error
8. Message field accepts maximum characters without error
9. Message is sent successfully

**Test Data**:
- Subject: [250 character string if limit exists]
- Message: [Maximum allowed characters]

**Business Impact**: Medium - Data validation  
**Regression Candidate**: Yes

---

### Test Case: TC_S12_US2034_003
**Test Case Title**: Verify message sending with minimum required data  
**Acceptance Criteria**: AC-2.1  
**Test Priority**: Medium  
**Test Type**: Functional - Edge Case  
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
7. Enter minimal subject: "Question"
8. Enter minimal message: "Hello"
9. Click "Send" button

**Expected Results**:
1. Login successful
2. Messages section displays
3. Composition interface opens
4. Billing page bypassed
5. Option selected successfully
6. Practitioner selected
7. Subject accepted
8. Minimal message accepted
9. Message sent successfully

**Test Data**:
- Subject: "Question"
- Message: "Hello"

**Business Impact**: Medium - Boundary validation  
**Regression Candidate**: Yes

---

### Test Case: TC_S12_US2034_004
**Test Case Title**: Verify message sending to multiple different practitioners sequentially  
**Acceptance Criteria**: AC-2.1  
**Test Priority**: Medium  
**Test Type**: Functional - Positive  
**Preconditions**: 
- Patient has valid login credentials
- Patient has multiple assigned practitioners

**Test Steps**:
1. Login to Mayo Clinic Patient Platform
2. Navigate to Messages section
3. Click "Send a message" button
4. Click "Next" on billing page
5. Select "Non-Urgent medical question" tile
6. Select first practitioner from the list
7. Enter subject and message
8. Click "Send" button
9. Verify confirmation message
10. Click "Send a message" button again
11. Repeat steps 4-7 for second practitioner
12. Click "Send" button

**Expected Results**:
1. Login successful
2. Messages section loads
3. Composition opens
4. Billing bypassed
5. Option selected
6. First practitioner selected
7. Data entered successfully
8. First message sent successfully
9. Confirmation displayed
10. New composition opens
11. Second message composed
12. Second message sent successfully to different practitioner

**Test Data**:
- Practitioner 1: Dr. Smith
- Practitioner 2: Dr. Johnson
- Subject: "Follow-up question"
- Message: "I need clarification on treatment plan"

**Business Impact**: Medium - Multi-practitioner workflow  
**Regression Candidate**: Yes

---

### Test Case: TC_S12_US2034_005
**Test Case Title**: Verify mandatory field validation when trying to send without required data  
**Acceptance Criteria**: AC-2.1  
**Test Priority**: High  
**Test Type**: Functional - Negative  
**Preconditions**: 
- Patient has valid login credentials

**Test Steps**:
1. Login to Mayo Clinic Patient Platform
2. Navigate to Messages section
3. Click "Send a message" button
4. Click "Next" on billing page
5. Select "Non-Urgent medical question" tile
6. Select a practitioner
7. Leave subject field empty
8. Enter message text
9. Click "Send" button
10. Enter subject but leave message empty
11. Click "Send" button
12. Leave both subject and message empty
13. Click "Send" button

**Expected Results**:
1. Login successful
2. Messages section displays
3. Composition opens
4. Billing bypassed
5. Option selected
6. Practitioner selected
7. Subject field remains empty
8. Message entered
9. Error message displayed: "Subject is required" - message not sent
10. Subject entered, message empty
11. Error message displayed: "Message is required" - message not sent
12. Both fields empty
13. Error messages displayed for both required fields - message not sent

**Test Data**:
- Test with empty subject
- Test with empty message
- Test with both empty

**Business Impact**: High - Data validation  
**Regression Candidate**: Yes

---

### Test Case: TC_S12_US2034_006
**Test Case Title**: Verify error message when attaching video file to message  
**Acceptance Criteria**: AC-2.2  
**Test Priority**: High  
**Test Type**: Functional - Negative  
**Preconditions**: 
- Patient has valid login credentials
- Video file (.mp4) is available for upload

**Test Steps**:
1. Login to Mayo Clinic Patient Platform
2. Navigate to Messages section
3. Click "Send a message" button
4. Click "Next" on billing page
5. Select "Non-Urgent medical question" tile
6. Select a practitioner
7. Enter subject: "Test with video"
8. Enter message text: "Attaching video file"
9. Click attachment button
10. Select video file (e.g., test_video.mp4)
11. Attempt to attach the video file
12. Observe error message
13. Click "Okay" on error message
14. Remove video attachment
15. Click "Send" button without video

**Expected Results**:
1. Login successful
2. Messages section loads
3. Composition opens
4. Billing bypassed
5. Option selected
6. Practitioner selected
7. Subject entered
8. Message text entered
9. File selection dialog opens
10. Video file selected
11. Video attachment attempted
12. Error message displayed: "Video files are not allowed" or similar validation message
13. Error message dismissed
14. Video removed from attachments
15. Message sent successfully without video attachment

**Test Data**:
- Video file: test_video.mp4 (any video format)
- Subject: "Test with video"
- Message: "Attaching video file"

**Business Impact**: High - File validation rules  
**Regression Candidate**: Yes

---

### Test Case: TC_S12_US2034_007
**Test Case Title**: Verify error for multiple video format types (.avi, .mov, .wmv)  
**Acceptance Criteria**: AC-2.2  
**Test Priority**: Medium  
**Test Type**: Functional - Negative  
**Preconditions**: 
- Patient has valid login credentials
- Multiple video files in different formats available

**Test Steps**:
1. Login to Mayo Clinic Patient Platform
2. Navigate to Messages and start new message
3. Complete practitioner selection and message composition
4. Attempt to attach .mp4 video file
5. Verify error message appears
6. Click "Okay" and remove attachment
7. Attempt to attach .avi video file
8. Verify error message appears
9. Click "Okay" and remove attachment
10. Attempt to attach .mov video file
11. Verify error message appears
12. Click "Okay" and remove attachment
13. Attempt to attach .wmv video file
14. Verify error message appears
15. Remove attachment and send message without video

**Expected Results**:
1. Login successful
2. Message composition ready
3. Fields completed
4. .mp4 attachment triggers error message
5. Error message displayed and acknowledged
6. Attachment removed
7. .avi attachment triggers error message
8. Error message displayed and acknowledged
9. Attachment removed
10. .mov attachment triggers error message
11. Error message displayed and acknowledged
12. Attachment removed
13. .wmv attachment triggers error message
14. Error message displayed for all video formats consistently
15. Message sent successfully without attachments

**Test Data**:
- test_video.mp4
- test_video.avi
- test_video.mov
- test_video.wmv

**Business Impact**: Medium - Comprehensive file validation  
**Regression Candidate**: Yes

---

### Test Case: TC_S12_US2034_008
**Test Case Title**: Verify successful message sending with allowed attachment types after video error  
**Acceptance Criteria**: AC-2.2  
**Test Priority**: Medium  
**Test Type**: Functional - Positive  
**Preconditions**: 
- Patient has valid login credentials
- Video file and allowed attachment files (PDF, image) available

**Test Steps**:
1. Login to Mayo Clinic Patient Platform
2. Navigate to Messages section
3. Click "Send a message" button
4. Complete billing and non-urgent selection steps
5. Select practitioner
6. Enter subject and message
7. Attempt to attach video file
8. Verify error message appears
9. Click "Okay" on error message
10. Remove video attachment
11. Attach allowed file type (e.g., PDF or image file)
12. Verify attachment is accepted
13. Click "Send" button

**Expected Results**:
1. Login successful
2. Messages section loads
3. Composition opens
4. Selections completed
5. Practitioner selected
6. Text fields completed
7. Video attachment attempted
8. Error message displayed for video file
9. Error acknowledged
10. Video removed
11. Allowed file type (PDF/image) attached successfully without error
12. Attachment shows in attachment list
13. Message with allowed attachment sent successfully

**Test Data**:
- Video file: test.mp4 (for error validation)
- Allowed file: test_document.pdf or test_image.jpg
- Subject: "Documents for review"
- Message: "Please review attached document"

**Business Impact**: Medium - Alternative attachment workflow  
**Regression Candidate**: Yes

---

## 📊 Coverage Gap Analysis

### Covered Scenarios:
✅ Successful message sending with complete data (AC-2.1)  
✅ Maximum character length validation (AC-2.1)  
✅ Minimum data validation (AC-2.1)  
✅ Multiple practitioner messaging (AC-2.1)  
✅ Mandatory field validation (AC-2.1)  
✅ Video attachment error handling (AC-2.2)  
✅ Multiple video format validation (AC-2.2)  
✅ Allowed attachment after video error (AC-2.2)

### Potential Gaps Identified:
⚠️ **Network/Connection Issues**: No test case for message sending during network interruption or timeout scenarios  
⚠️ **Browser Compatibility**: No cross-browser testing specified for message composition  
⚠️ **Concurrent Sessions**: No test for sending messages from multiple devices simultaneously  
⚠️ **Special Characters**: Limited testing of special characters in subject/message fields  
⚠️ **Practitioner Availability**: No test for selecting practitioners who may be unavailable  
⚠️ **Session Timeout**: No test for message composition during session timeout  
⚠️ **Draft Functionality**: No test cases if draft save feature exists  

### Recommendations:
1. Consider adding network failure scenario test cases
2. Include special character handling validation
3. Test session timeout behavior during message composition
4. Verify practitioner status validation if applicable
5. Add accessibility testing for screen readers if required

---

## 🎯 Regression Integration Recommendations

### High-Priority Regression Candidates:
1. **TC_S12_US2034_001** - Core message sending functionality (CRITICAL)
2. **TC_S12_US2034_006** - Video attachment validation (HIGH)
3. **TC_S12_US2034_005** - Mandatory field validation (HIGH)

### Business Impact Classification:
- **Critical Impact**: TC_S12_US2034_001 (core functionality)
- **High Impact**: TC_S12_US2034_005, TC_S12_US2034_006 (validation rules)
- **Medium Impact**: TC_S12_US2034_002, TC_S12_US2034_003, TC_S12_US2034_004, TC_S12_US2034_007, TC_S12_US2034_008

### Cross-Sprint Dependencies:
*Note: No previous sprint data provided. These test cases should be evaluated against existing Messages module regression suite if available.*

---

## 📈 Test Execution Summary

| Metric | Count |
|--------|-------|
| Total Test Cases | 8 |
| AC-2.1 Coverage | 5 test cases |
| AC-2.2 Coverage | 3 test cases |
| High Priority | 3 |
| Medium Priority | 5 |
| Positive Tests | 4 |
| Negative Tests | 4 |
| Edge Cases | 2 |
| Regression Candidates | 8 (100%) |

---

**Document Status**: Ready for Review  
**Next Steps**: 
1. Review test cases with QA team
2. Validate test data availability
3. Execute test cases in test environment
4. Update regression suite based on results

---
*Generated by: Site-Specific Test Case Generator*  
*Prompt Version: Smart Regression Management System*
