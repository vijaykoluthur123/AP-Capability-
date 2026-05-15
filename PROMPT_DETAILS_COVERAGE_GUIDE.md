# MAYO CLINIC PATIENT PLATFORM - TEST CASE GENERATION GUIDE
## Complete Coverage Analysis & Smart Regression Management

---

## 📋 **REQUIRED DETAILS FOR YOUR PROMPT**

### **1. Mayo Clinic User Story Information**
```
- Story ID: US2036 (your actual Mayo Clinic story number)
- Sprint: Sprint 12 (your actual sprint)
- Module: TEST RESULTS (choose from: Messages, Test Results, Appointments, Health Record, Billing, My Account)
- Story Title: "Need to view test results with friendly report"
```

### **2. Mayo Clinic Module Specification Details**
```
Your Module: TEST RESULTS
Module Purpose: As a patient i need to search and view test results with friendly report

Key Features Your Module Handles:
1. Search Test Results: Search for specific test results using search functionality
2. View Friendly Report: View detailed test results in a user-friendly report format
3. Test Result Navigation: Browse through multiple test results efficiently
4. Report Export Options: Print, download, and share friendly reports

Your Module's Main Workflows:
- Search Workflow: Login → Test Results → Click search bar → Enter test name → Search → View results
- Report Workflow: Login → Test Results → Search → Select result → Click view friendly report
- Navigation Workflow: Login → Test Results → Browse results → Navigate between different tests

Data Your Module Works With:
- Input Data: Search query (test name), test result selection
- Display Data: Search results list, test result details, friendly report view
- Validation Rules: Search should return relevant results, friendly report should display complete test information
```

### **3. Mayo Clinic Acceptance Criteria**
```
AC-3.1: Patient should be able to search for test results
- Given I am logged in as a Patient to Mayo Clinic Patient Platform
- When user click on Test results & enter "DX Chest" in search bar and click search button
- Then user should be able to see relevant test results displayed

AC-3.2: Patient should be able to view friendly report for test results
- Given I am logged in as a Patient to Mayo Clinic Patient Platform
- When user searches for test results & clicks on a result & clicks on view friendly report
- Then user should be able to view the test results in friendly report format successfully
```

---

## 🤖 **HOW THE AGENT CREATES TEST CASES**

### **Step 1: Analysis Phase**
Agent analyzes your input to understand:
- **Module Scope**: Focuses only on your specified module (APPOINTMENTS)
- **Workflow Complexity**: Identifies simple vs complex workflows
- **Data Relationships**: Understands input/output data dependencies
- **Business Rules**: Extracts validation and business logic requirements

### **Step 2: Test Case Generation Strategy**
For each Acceptance Criteria, agent creates:

#### **Positive Test Cases** (Happy Path)
- **AC-1.1**: 2-3 test cases covering normal scheduling scenarios
- **AC-1.2**: 2-3 test cases for different recurring patterns
- **AC-1.3**: 2-3 test cases for modification scenarios

#### **Negative Test Cases** (Error Handling)  
- **AC-1.4**: 3-4 test cases for various conflict scenarios
- **AC-1.5**: 2-3 test cases for cancellation edge cases

#### **Edge Case Test Cases** (Boundary Conditions)
- Date/time boundary testing (weekends, holidays, after-hours)
- Appointment limit testing (maximum appointments per day)
- Recurring pattern edge cases (leap years, month-end scenarios)

### **Step 3: Mayo Clinic Test Case Structure Creation**
Each test case includes:
```
Test Case ID: TC_S12_US2036_001
Story ID: US2036
Acceptance Criteria: AC-3.1
Priority: Critical/High/Medium/Low
Type: Positive/Negative/Edge Case
Business Impact: Critical/High/Medium/Low
Execution Time: Minutes required to execute
Test Summary: Brief description
Test Steps: NUMBERED step-by-step actions (1. Action 2. Action 3. Action) - NO semicolons within steps
Expected Result: NUMBERED expected outcomes (1. Result 2. Result 3. Result) - NO semicolons within results
Test Data: Specific Mayo Clinic patient data needed
Cross Sprint Status: New/Consolidates/Builds on previous

🚨 CSV FORMAT CRITICAL: Use comma separators between columns, NO semicolons within test steps
```

---

## 📊 **COVERAGE ANALYSIS PROVIDED**

### **1. Mayo Clinic Acceptance Criteria Coverage**
```
Coverage Report:
✅ AC-3.1: 6 test cases (3 positive, 2 negative, 1 edge case)
✅ AC-3.2: 3 test cases (2 positive, 1 comprehensive validation)

Total: 8 test cases covering all 2 acceptance criteria
Coverage: 100% - All ACs have corresponding test cases
Smart Consolidation: 8 individual tests → 3 regression tests (62.5% reduction)
```

### **2. Test Type Coverage Distribution**
```
Test Type Analysis:
- Positive Tests: 8 tests (47%) - Happy path scenarios
- Negative Tests: 6 tests (35%) - Error handling and validation  
- Edge Case Tests: 3 tests (18%) - Boundary conditions

Business Impact Distribution:
- Critical: 5 tests (29%) - Core appointment functionality
- High: 8 tests (47%) - Important user workflows
- Medium: 4 tests (24%) - Nice-to-have features
```

### **3. Functional Coverage Areas**
```
Workflow Coverage:
✅ Authentication & Access: Covered in all test cases
✅ Single Appointment Scheduling: 3 test cases
✅ Recurring Appointment Management: 4 test cases  
✅ Appointment Modification: 3 test cases
✅ Conflict Detection & Resolution: 3 test cases
✅ Cancellation & Waitlist Management: 4 test cases

Data Coverage:
✅ Provider Selection: Multiple scenarios tested
✅ Date/Time Validation: Comprehensive boundary testing
✅ Recurring Patterns: Weekly, monthly, custom patterns
✅ Appointment Types: Regular, follow-up, consultation
```

### **4. Gap Analysis**
```
Potential Coverage Gaps Identified:
⚠️ Provider Availability Changes: What happens if provider becomes unavailable?
⚠️ System Downtime Scenarios: Appointment scheduling during maintenance?
⚠️ Multi-location Scheduling: Different clinic locations not explicitly tested
⚠️ Insurance Verification: Integration with billing system not covered

Recommendations:
1. Add test cases for provider unavailability scenarios
2. Consider system reliability test cases
3. Add multi-location appointment scenarios if applicable
4. Include insurance verification workflows if relevant
```

### **5. Execution Time Analysis**
```
Execution Time Breakdown:
- Total Suite Execution Time: 52 minutes
- Average per Test Case: 3.1 minutes
- Critical Path Tests: 18 minutes (34%)
- Automation Candidates: 12 tests (quick validation scenarios)
- Manual Testing Required: 5 tests (complex user interactions)
```

### **6. Regression Integration Analysis**
```
Regression Considerations:
- New Functionality: 11 tests (no previous equivalent)
- Enhanced Features: 4 tests (builds on existing login/navigation)  
- Validation Updates: 2 tests (consolidates with existing validation)

Cross-Sprint Dependencies:
- Requires: Patient login functionality (assume exists)
- Provides: Appointment data for other modules (Messages, Billing)
- Integrates: With provider availability system
```

---

## 🎯 **WHAT YOU GET AS OUTPUT**

### **Generated Files:**
1. **US2036_Generated_Test_Cases.md** - Complete Mayo Clinic module documentation with analysis
2. **US2036_Test_Cases.csv** - Excel-friendly CSV (semicolon-separated) for test management tools
3. **Updated MASTER_REGRESSION_TEST_CASES_CLEAN.csv** - Smart consolidation appended to master regression suite

### **Documentation Includes:**
- Complete test case specifications
- Traceability matrix (AC to test case mapping)
- Coverage analysis report  
- Gap analysis and recommendations
- Execution time estimates
- Regression integration guidance
- Professional formatting ready for client presentation

---

## ✅ **COVERAGE GUARANTEE**

**The agent ensures:**
- ✅ **100% AC Coverage**: Every acceptance criteria has corresponding test cases
- ✅ **Comprehensive Scenarios**: Positive, negative, and edge cases for each AC
- ✅ **Business Impact Analysis**: Tests prioritized by business criticality
- ✅ **Gap Identification**: Points out potential missing scenarios
- ✅ **Professional Quality**: Ready for client demos and team execution
- ✅ **Module Focus**: Stays within your specified module boundaries
- ✅ **No Assumptions**: Works only with data you provide

**Just fill in your module details and acceptance criteria - the agent handles the rest! 🚀**