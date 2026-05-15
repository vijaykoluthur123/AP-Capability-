# SMART REGRESSION MANAGEMENT SYSTEM PROMPT
## Intelligent Test Case Generation & Regression Management

### 📋 **COMPREHENSIVE TEST CASE GENERATION PROMPT:**

---

"Generate comprehensive test cases for the following user story with acceptance criteria:*

User Story Information:
Story ID: **🔴[STORY_ID]🔴**
Sprint: **🔴[SPRINT_NUMBER]🔴**
Module: **🔴[MODULE_NAME]🔴**
Application: Mayo Clinic Patient Platform
Story Title: **🔴[STORY_TITLE]🔴**
POD MODULE SPECIFICATION:
Your Module: **🔴[MODULE_NAME]🔴**
Module Purpose: **🔴[MODULE_PURPOSE]🔴**

Key Features **🔴[MODULE_NAME]🔴** Module Handles:
**🔴[LIST_KEY_FEATURES]🔴**

Your Module's Main Workflows:
**🔴[DESCRIBE_WORKFLOWS]🔴**

Data Your Module Works With:
Input Data: **🔴[INPUT_DATA_DESCRIPTION]🔴**
Display Data: **🔴[DISPLAY_DATA_DESCRIPTION]🔴**
Validation Rules: **🔴[VALIDATION_RULES]🔴**

Your Module's Acceptance Criteria:
**🔴[PASTE_ACCEPTANCE_CRITERIA_WITH_AC_IDS]🔴**

Requirements:
Please generate:

Individual sprint test cases mapped to each acceptance criteria using professional formatting
Story-level traceability matrix showing AC to test case mapping (include in main document only)
Cross-sprint duplicate analysis (only if previous sprint data is explicitly provided)
Regression integration recommendations with duplicate consolidation strategies
Single CSV export file for test management tools (Excel-compatible)
Coverage gap analysis identifying missing test scenarios
Append regression tests to existing MASTER_REGRESSION_TEST_CASES_CLEAN.csv
Focus on the specified module only - generate test cases relevant to that specific module's functionality.

Test Case Requirements:
Use test case ID format: TC_S[Sprint]US[Story][Sequence] (e.g., TC_S12_US2036_001)
Include positive, negative, and edge case scenarios for each AC
Provide clear test steps, expected results, and test data
Include proper traceability back to acceptance criteria
Generate professional documentation ready for team execution
Identify regression test candidates with business impact classification
IMPORTANT: Only analyze for duplicates with explicitly provided existing test data - DO NOT assume or create fictional previous sprint data

CSV Formatting Standards (CRITICAL for Excel Compatibility):
ALWAYS follow these EXACT CSV formatting rules to ensure proper Excel display:

🚨 MANDATORY FORMAT REQUIREMENTS:
- Use COMMA separators (,) between ALL columns - NEVER use semicolons as main separators
- Use NUMBERED test steps WITHOUT internal semicolons: "1. Action one 2. Action two 3. Action three"
- Use NUMBERED expected results WITHOUT internal semicolons: "1. Expected result one 2. Expected result two"
- NO quotes around test steps or expected results fields
- NO semicolons within test step sequences (causes Excel column splitting issues)
- Remove ALL pipe characters (|) from content
- Keep cell content concise but maintain numbered sequence for clarity

✅ CORRECT CSV Format Example:
Test_Steps column: "1. Login to system 2. Navigate to module 3. Perform action 4. Verify result"
Expected_Result column: "1. System should respond correctly 2. Data should be displayed properly"

❌ INCORRECT Formats That Break Excel:
- Using semicolons as main separators: Test_ID;Story_ID;Test_Steps
- Internal semicolons in steps: "1. Login; 2. Navigate; 3. Action"  
- Quotes around step fields: "1. Login 2. Navigate"

🔴 CRITICAL: Test this format before delivery - CSV must open cleanly in Excel with proper column separation

Data Integrity Standards (CRITICAL - No Assumptions):
NEVER create fictional or assumed data:

Only work with explicitly provided user story and acceptance criteria
Do not assume previous sprint data unless explicitly provided
If cross-sprint analysis is requested, clearly state what data is needed
Mark any cross-references as "Pending - requires previous sprint data" if not provided

⚠️ CRITICAL EXECUTION INSTRUCTIONS - FOLLOW EXACTLY:
FILE OPERATIONS (MANDATORY):

APPEND regression tests to EXACTLY this file: MASTER_REGRESSION_TEST_CASES_CLEAN.csv
DO NOT create new files with names like: MASTER_REGRESSION_TEST_CASES.csv
DO NOT create variations or copies of existing master files
USE ONLY replace_string_in_file tool for existing files
CREATE new files ONLY for: [STORY_ID]_Generated_Test_Cases.md and [STORY_ID]_Test_Cases.csv

DELIVERABLES (EXACTLY THESE - NO MORE, NO LESS):

**🔴[STORY_ID]🔴**_Generated_Test_Cases.md (new file - allowed)
**🔴[STORY_ID]🔴**_Test_Cases.csv (new file - allowed)
Updated MASTER_REGRESSION_TEST_CASES_CLEAN.csv (append only - existing file)

WORKFLOW RESTRICTIONS:

FOLLOW EXACTLY the consolidation analysis steps I specified
DO NOT add additional analysis files unless explicitly requested
DO NOT create integration reports unless I ask for them
ASK before deviating from these exact instructions

ASSUMPTION CONTROL:

USE ONLY the user story data I provided above
DO NOT reference previous conversations unless I mention them
DO NOT assume context from earlier in this session
DO NOT create fictional previous sprint data for comparison

CONFIRMATION REQUIRED:
Reply "Understood - will append consolidated regression tests to existing MASTER_REGRESSION_TEST_CASES_CLEAN.csv file only, and create only the 2 new files specified" before proceeding.

READ ALL LINES CAREFULLY AND DO NOT ASSUME ANYTHING"

### Project Context:
- **Application**: Mayo Clinic Patient Platform
- **Current Sprint**: [New Sprint Number - e.g., Sprint-13]
- **Master Regression CSV**: MASTER_REGRESSION_TEST_CASES_CLEAN.csv
- **New Sprint Test Cases**: [Paste new sprint test cases here]

### Input Required:
1. **Current Master Regression CSV**: [Paste current MASTER_REGRESSION_TEST_CASES_CLEAN.csv content]
2. **New Sprint Test Cases**: [Paste new sprint test case data - either CSV or markdown format]

### ⚠️ **CRITICAL INSTRUCTION - NO ASSUMPTIONS:**
**NEVER create fictional data or assume previous sprint content that is not explicitly provided.**
- If no Master Regression CSV exists, state that this will be the baseline sprint
- If Master Regression CSV is empty, use new sprint as foundation
- Only analyze and consolidate with data that is actually provided
- Do not invent test cases, sprints, or user stories that don't exist

### Smart Analysis Requirements:

#### **1. DUPLICATE DETECTION & CONSOLIDATION**
Analyze new test cases against existing regression tests to identify:

- **Exact Duplicates**: Same test logic, different test data
  - Action: Update existing test with additional test data scenarios
  - Mark as "Updated" in Regression_Status

- **Functional Duplicates**: Same functionality, different implementation
  - Action: Consolidate into single test with comprehensive steps
  - Update Cross_Sprint_Dependencies to show consolidation

- **Similar Tests**: Related functionality that can be combined
  - Action: Enhance existing test to cover new scenarios
  - Add cross-sprint references

#### **2. NEW TEST CASE IDENTIFICATION**
Identify genuinely new test cases that should be added:

- **New Features**: Completely new functionality not covered
  - Action: Add as new regression test case with Active status
  
- **New Edge Cases**: New boundary conditions or error scenarios
  - Action: Add with appropriate priority based on business impact

- **New Integrations**: Tests that connect previously separate features
  - Action: Add with cross-sprint dependencies mapped

#### **3. INTELLIGENT UPDATE LOGIC**

**For Each New Test Case:**

1. **Scan Existing Tests**: Compare ONLY against provided Master Regression CSV content
2. **Calculate Similarity Score** (only if existing tests are provided): 
   - 90-100%: Exact duplicate → Update existing
   - 70-89%: Functional duplicate → Consolidate
   - 50-69%: Similar → Enhance existing
   - 0-49%: New test → Add as new
3. **If No Master CSV Provided**: Mark all new tests as "Baseline" status

3. **Dependency Mapping**: 
   - Identify which existing tests this depends on
   - Update Cross_Sprint_Dependencies field
   - Map bidirectional dependencies

4. **Priority Reconciliation**:
   - If new test has higher priority, update existing test priority
   - If business impact increased, update Business_Impact field

#### **4. REGRESSION STATUS MANAGEMENT**

**Update Regression_Status field:**
- **Baseline**: First sprint test cases (when no previous regression data exists)
- **Active**: Test is current and should be executed
- **Updated**: Test was modified from new sprint input
- **Consolidated**: Multiple tests were combined into this one
- **Deprecated**: Test superseded by newer implementation
- **Duplicate**: Exact duplicate found and merged

### Expected Output Format:

#### **Updated Master Regression CSV**
```csv
Test_Case_ID,Story_ID,Sprint,Acceptance_Criteria,Priority,Type,Business_Impact,Execution_Time_Min,Test_Summary,Test_Steps,Expected_Result,Test_Data,Regression_Status,Cross_Sprint_Dependencies,Last_Updated,Module,Feature
[Updated CSV with all smart consolidations and new additions - ENSURE semicolon (;) separators in Test_Steps column for Excel compatibility]
```

#### **Change Analysis Report**
For each change made, provide:

1. **Action Taken**: (Added/Updated/Consolidated/Deprecated)
2. **Reason**: Why this action was chosen
3. **Impact**: What changed in the regression test
4. **Dependencies**: How cross-sprint relationships were updated

### Smart Update Rules (Mayo Clinic Patient Platform):

#### **Patient Authentication & Login Tests**
- **Rule**: Only one comprehensive patient login test needed
- **Action**: Consolidate all patient login variations into master authentication test
- **Exception**: Security-specific login tests (unauthorized access, MFA) remain separate

#### **Patient Data CRUD Operations**
- **Rule**: Create/Read/Update/Delete operations for patient data can be consolidated per data type
- **Action**: Combine simple patient data CRUD operations into lifecycle tests
- **Exception**: Complex healthcare workflow CRUD operations stay separate

#### **Healthcare Data Validation Tests**
- **Rule**: Similar validation logic for patient/healthcare data should be consolidated
- **Action**: Group by validation type (required fields, medical data formats, HIPAA compliance)
- **Exception**: Cross-module validation differences require separate tests

#### **Module-Specific Navigation Tests**
- **Rule**: Each module (Home, Appointments, Messages, Test Results, Health Record, Billing, My Account) has independent functionality
- **Action**: Consolidate only within the same module - do NOT consolidate across different modules
- **Exception**: Cross-module workflows that specifically require multiple modules stay separate

#### **Module Consolidation Rules:**
- **HOME Module**: Dashboard widgets, notifications, quick access features
- **APPOINTMENTS Module**: Scheduling, viewing, modifying appointment functions only
- **MESSAGES Module**: Secure communication features only  
- **TEST RESULTS Module**: Lab results, diagnostic reports access only
- **HEALTH RECORD Module**: Medical history, medications, allergies management only
- **BILLING Module**: Financial, insurance, payment functions only
- **MY ACCOUNT Module**: Profile, settings, security management only

#### **Healthcare Data Display Tests**
- **Rule**: Similar data display patterns should be consolidated
- **Action**: Combine test results display, health record display, billing display into unified tests
- **Exception**: Specialized medical data displays (imaging, lab results) remain separate

#### **Patient Communication Tests**
- **Rule**: Basic messaging functionality should be consolidated
- **Action**: Combine message creation, viewing, secure communication into single test
- **Exception**: Provider-specific communication workflows remain separate

### Quality Assurance Guidelines:

#### **CSV Formatting Standards (Critical for Client Demos)**
- **Test Steps Format**: Use NUMBERED steps with semicolons (;) - NEVER use pipe characters (|)
- **Expected Results Format**: Use NUMBERED expected results with semicolons (;)
- **Text Fields**: Remove unnecessary quotation marks around simple text
- **Cell Content**: Keep content concise and Excel-compatible with clear numbering
- **Example Format**: "1. Login to system; 2. Navigate to module; 3. Perform action; 4. Verify result"
- **Expected Results Example**: "1. System should respond correctly; 2. Data should display properly; 3. Navigation should work smoothly"
- **Avoid**: "Login to system|Navigate to module|Perform action" (no pipes, no numbering)

#### **Test Case ID Management**
- **Existing IDs**: Never change existing Test_Case_IDs
- **New IDs**: Use format TC_S[SPRINT]_US[STORY]_[SEQUENCE]
- **Consolidated IDs**: Keep primary test ID, reference others in dependencies

#### **Cross-Sprint Dependencies**
- **Format**: "TC_S11_US001_001,TC_S12_US002_003" (comma-separated)
- **Bidirectional**: If A depends on B, ensure B references A
- **Transitive**: Map full dependency chains

#### **Data Integrity**
- **Test Data**: Combine test data from consolidated tests
- **Execution Time**: Sum execution times for consolidated tests
- **Priority**: Use highest priority from consolidated tests

---

## 📊 **EXAMPLE USAGE SCENARIOS:**

### **SCENARIO 1: First Sprint (No Existing Master CSV)**

**Input:**
- **Current Master Regression CSV**: [Empty - No previous regression data]
- **New Sprint Test Cases**: [Sprint 12 US-002 test cases]

**Expected Output:**
- **Action**: Create baseline regression suite
- **Status**: All tests marked as "Baseline"  
- **Result**: New MASTER_REGRESSION_TEST_CASES.csv with all Sprint 12 tests

### **SCENARIO 2: Subsequent Sprint (With Existing Master CSV)**

**Input:**
- **Current Master Regression CSV**: [Actual existing regression data]
- **New Sprint Test Cases**: [Sprint 13 US-003 test cases]

**Expected Smart Analysis** (example with actual data only):
1. **Compare new tests against provided existing tests only**
2. **Identify similarities based on actual test content**
3. **No assumptions about test relationships unless explicitly shown in data**
4. **Consolidate only when clear duplication exists in provided data**

---

## 🎯 **SMART SYSTEM BENEFITS:**

### **Automatic Duplicate Prevention**
- **Intelligence**: Recognizes same functionality across different sprints
- **Efficiency**: Prevents regression test bloat
- **Quality**: Maintains comprehensive coverage without redundancy

### **Cross-Sprint Integration**
- **Dependency Mapping**: Automatic identification of test dependencies
- **Consolidation Intelligence**: Combines related tests for better workflow
- **Traceability**: Maintains full audit trail of changes

### **Maintenance Efficiency**
- **Automated Updates**: System updates existing tests instead of adding duplicates
- **Priority Management**: Automatically adjusts priorities based on business impact
- **Status Tracking**: Clear indication of test evolution over time

### **Regression Optimization**
- **Smart Consolidation**: Reduces total regression execution time
- **Better Coverage**: Ensures all scenarios covered without overlap
- **Maintainable Suite**: Keeps regression suite size manageable

---

## 📝 **IMPLEMENTATION WORKFLOW:**

### **Step 1: Prepare Input**
- Copy current MASTER_REGRESSION_TEST_CASES.csv content
- Copy new sprint test cases (CSV or markdown format)
- Specify current sprint number

### **Step 2: Run Smart Analysis**
- Paste complete prompt with your data into AI system
- Review suggested changes and consolidations
- Approve or modify proposed updates

### **Step 3: Update Master CSV**
- Replace MASTER_REGRESSION_TEST_CASES.csv with updated version
- Document changes in sprint analysis file
- Update regression suite documentation

### **Step 4: Validation**
- Verify no test coverage gaps created
- Check dependency mappings are correct
- Ensure execution times and priorities accurate

**This Smart Regression Management System ensures your regression test suite evolves intelligently with each sprint while maintaining optimal efficiency and comprehensive coverage! 🚀**