*Generate comprehensive test cases for the following user story with acceptance criteria:**

### User Story Information:
- **Story ID**: US2034
- **Sprint**: Sprint 12
- **Module**: Messages 
- **Application**: Mayo Clinic Patient Platform
- **Story Title**: Need to send the message for non-urgent medical questions 

### POD MODULE SPECIFICATION:

#### **Your Module**: Messages 
**Module Purpose**: As a patient i need to send a message to the doctors for non urgent medical questions 

**Key Features Messages Module Handles**:
1. Send Message to Doctor: Send a message to Doctor from mayo clinic patient portal for non-urgent medical questions

**Your Module's Main Workflows**:
- **Workflow 1**: Login to Mayo clinic → Click on Messages → Click on Send a message button → click on Next button in billing page → Select non-Urgent medical question tile → select Practitioners → Enter the Subject/Message Text → Click on send button 
- **Workflow 2**: Login to Mayo clinic → Click on Messages → Click on Send a message button → click on Next button in billing page → Select non-Urgent medical question tile → select Practitioners → Enter the Subject/Message Text & attach the video file and verify the error message

**Data Your Module Works With**:
- **Input Data**: Message text, subject line, practitioner selection, attachment files
- **Display Data**: Message composition interface, practitioner list, confirmation messages, error messages
- **Validation Rules**: Video attachments should trigger error message, text messages should be accepted

### Your Module's Acceptance Criteria:

#### AC-2.1: Patient should able to send the message for non urgent medical questions 
- Given I am logged in as a Patient to Mayo Clinic Patient Platform
- When user click on Messages & enter subject and send a message 
- Then user should able to send the message successfully

#### AC-2.2: Patient should see error when attaching video files
- Given I am logged in as a Patient to Mayo Clinic Patient Platform
- When user click on Messages & enter subject and add the video file
- Then user should able to see the error message and click on okay and send message without video
- And user should able to send the message successfully

### Requirements:
Please generate:
1. **Individual sprint test cases** mapped to each acceptance criteria using professional formatting
2. **Story-level traceability matrix** showing AC to test case mapping  
3. **Cross-sprint duplicate analysis** (only if previous sprint data is explicitly provided)
4. **Regression integration recommendations** with duplicate consolidation strategies
5. **CSV export format** for test management tools (Excel-compatible)
6. **Coverage gap analysis** identifying missing test scenarios

**Focus on the specified module only** - generate test cases relevant to that specific module's functionality.

### Test Case Requirements:
- Use test case ID format: TC_S[Sprint]_US[Story]_[Sequence] (e.g., TC_S12_US2034_001)
- Include positive, negative, and edge case scenarios for each AC
- Provide clear test steps, expected results, and test data
- Include proper traceability back to acceptance criteria
- Generate professional documentation ready for team execution
- Identify regression test candidates with business impact classification
- **IMPORTANT**: Only analyze for duplicates with explicitly provided existing test data - DO NOT assume or create fictional previous sprint data

### CSV Formatting Standards (CRITICAL for Client Demos):
**ALWAYS follow these CSV formatting rules to ensure proper Excel display:**
- Replace ALL pipe characters (|) in test steps with semicolons (;)
- Use semicolons (;) to separate multiple test steps within a cell
- Remove unnecessary quotation marks around simple text fields
- Keep cell content concise - summarize long test steps rather than detailed numbered lists
- Ensure consistent column formatting across all rows
- Test_Steps column should contain: "Action 1; Action 2; Action 3" format
- No special characters that break CSV parsing (avoid |, extra quotes, line breaks within cells)
- Generate TWO CSV files: detailed version and clean Excel-friendly version

### Data Integrity Standards (CRITICAL - No Assumptions):
**NEVER create fictional or assumed data:**
- Only work with explicitly provided user story and acceptance criteria
- Do not assume previous sprint data unless explicitly provided
- If cross-sprint analysis is requested, clearly state what data is needed
- Mark any cross-references as "Pending - requires previous sprint data" if not provided