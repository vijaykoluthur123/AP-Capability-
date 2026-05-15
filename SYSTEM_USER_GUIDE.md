# SITE-SPECIFIC TEST CASE GENERATOR - USER GUIDE
## Mayo Clinic Patient Platform Test Case Management System
### **Version**: 1.0 | **Date**: November 10, 2025

---

# 📋 **COMPLETE USER GUIDE - STEP BY STEP**

## **SYSTEM OVERVIEW**

This system automatically generates comprehensive test cases for Mayo Clinic Patient Platform modules and intelligently manages regression test suites across multiple sprints. The system follows a modular approach where teams can customize test generation for their specific module while maintaining consistent quality standards.

---

## **📁 WORKSPACE STRUCTURE**

```
Site-Specific Test Case Generator/
├── checklist/                          # Analysis templates
├── executables/                        # Automation scripts
├── output/                             # Generated files
│   ├── sprint_test_cases/              # Individual sprint test cases
│   └── regression_test_cases/          # Master regression suite
├── prompt/                             # System prompts
├── reference/                          # Documentation
└── story_cards/                        # Sprint story examples
```

---

# 🚀 **QUICK START GUIDE**

## **STEP 1: PREPARE YOUR STORY CARD**

### **1.1 Create New Story Card File**
- **Location**: `story_cards/`
- **Naming**: `Sprint_[NUMBER]_StoryCard_[MODULE]_[USER_STORY_ID].md`
- **Example**: `Sprint_13_StoryCard_Appointments_US2036.md`

### **1.2 Story Card Template**
```markdown
# SPRINT [NUMBER] - [MODULE] MODULE STORY CARD
## Mayo Clinic Patient Platform

### **User Story Details**
- **Story ID**: [US-XXXX]
- **Sprint**: Sprint-[NUMBER]
- **Module**: [MODULE_NAME]
- **Story Title**: [As a Patient, I want to... so that...]
- **Priority**: [High/Medium/Low]
- **Story Points**: [Number]

### **Module Context**
- **Module**: [HOME/APPOINTMENTS/MESSAGES/TEST RESULTS/HEALTH RECORD/BILLING/MY ACCOUNT]
- **Feature Area**: [Specific feature within module]

### **Acceptance Criteria**
#### **AC-X.1**: [Primary Acceptance Criteria]
- Given I am logged in as a Patient to Mayo Clinic Patient Platform
- When I [specific action in your module]
- Then I should see [expected result]

#### **AC-X.2**: [Secondary Acceptance Criteria]
- Given I am on the [module] page
- When I [perform specific action]
- Then [expected outcome] should happen

### **Workflow Steps**
1. Login to Mayo Clinic Patient Platform
2. Navigate to [Module] section
3. [Module-specific workflow steps]
4. [Expected results and validations]
```

---

## **STEP 2: GENERATE SPRINT TEST CASES**

### **2.1 Request Test Case Generation**
**Command to AI Assistant**:
```
"Please generate comprehensive test cases for [USER_STORY_ID] - [Story Title] from the story card file."
```

### **2.2 What Gets Generated**
- **Markdown Documentation**: Detailed test case documentation
- **CSV File**: Excel-compatible test cases for execution
- **Coverage Analysis**: Gap analysis and traceability matrix

### **2.3 Output Files Created**
```
output/sprint_test_cases/
├── [USER_STORY_ID]_Generated_Test_Cases.md
└── [USER_STORY_ID]_Test_Cases.csv
```

---

## **STEP 3: REGRESSION MANAGEMENT (AUTOMATIC)**

### **3.1 Smart Regression Analysis**
The system automatically:
- Analyzes new test cases against existing regression suite
- Identifies consolidation opportunities
- Applies intelligent merging rules
- Updates Master Regression CSV

### **3.2 Regression Files Updated**
```
output/regression_test_cases/
├── MASTER_REGRESSION_TEST_CASES.csv          # Consolidated regression suite
└── Sprint_[NUMBER]_Consolidation_Analysis_Report.md  # Analysis details
```

---

# 📊 **MODULE-SPECIFIC CONFIGURATION**

## **MAYO CLINIC PATIENT PLATFORM MODULES**

### **HOME Module**
- **Focus**: Dashboard widgets, notifications, quick access features
- **Workflows**: Login → Dashboard → Widget interactions → Quick actions

### **APPOINTMENTS Module**
- **Focus**: Scheduling, viewing, modifying appointment functions
- **Workflows**: Schedule → View → Modify → Cancel appointments

### **MESSAGES Module**
- **Focus**: Secure communication features
- **Workflows**: Compose → Send → Receive → Manage messages

### **TEST RESULTS Module**
- **Focus**: Lab results, diagnostic reports access
- **Workflows**: View results → Download → Share with providers

### **HEALTH RECORD Module**
- **Focus**: Medical history, medications, allergies management
- **Workflows**: View history → Update medications → Manage allergies

### **BILLING Module**
- **Focus**: Financial, insurance, payment functions
- **Workflows**: View bills → Make payments → Insurance management

### **MY ACCOUNT Module**
- **Focus**: Profile, settings, security management
- **Workflows**: Update profile → Security settings → Preferences

---

# 🔧 **DETAILED STEP-BY-STEP PROCESS**

## **PROCESS A: CREATE NEW SPRINT STORY CARD**

### **Step A1: Identify Your Sprint and Module**
- Determine sprint number (e.g., Sprint-13)
- Identify module (HOME, APPOINTMENTS, MESSAGES, etc.)
- Get user story ID from your project management system

### **Step A2: Create Story Card File**
1. Navigate to `story_cards/` folder
2. Create new file: `Sprint_[NUMBER]_StoryCard_[MODULE]_[US_ID].md`
3. Use the story card template above
4. Fill in your specific requirements

### **Step A3: Define Acceptance Criteria**
- Write clear, testable acceptance criteria
- Use Given-When-Then format
- Focus on your specific module functionality
- Include both positive and negative scenarios

---

## **PROCESS B: GENERATE TEST CASES**

### **Step B1: Request Test Case Generation**
**Provide to AI Assistant**:
```
Story Card: [Your story card file name]
Request: "Generate comprehensive test cases for this user story"
```

### **Step B2: Review Generated Test Cases**
The system will create:
- **Individual test cases** for each acceptance criteria
- **Positive, negative, and edge case scenarios**
- **CSV format** for test execution tools
- **Traceability matrix** linking tests to acceptance criteria

### **Step B3: Validate Output**
- Check all acceptance criteria are covered
- Verify test steps are clear and executable
- Confirm CSV format is Excel-compatible
- Review business impact and priority assignments

---

## **PROCESS C: REGRESSION SUITE MANAGEMENT**

### **Step C1: Automatic Smart Analysis**
The system automatically:
1. Compares new tests to existing regression suite
2. Identifies similar workflows and common steps
3. Applies Mayo Clinic module consolidation rules
4. Creates optimized regression test cases

### **Step C2: Review Consolidation Results**
Check the generated analysis report for:
- **Consolidation decisions** and reasoning
- **Test case reductions** and efficiency gains
- **Coverage verification** ensuring no gaps
- **Cross-sprint dependencies** mapping

### **Step C3: Updated Regression Suite**
The Master Regression CSV will contain:
- **Consolidated test cases** with comprehensive workflows
- **Reduced execution time** while maintaining coverage
- **Clear traceability** to original sprint tests
- **Module-specific organization**

---

# ⚙️ **SYSTEM CONFIGURATION**

## **CSV FORMATTING STANDARDS**

### **Critical Excel Compatibility Rules**
- **Field Separators**: Use semicolons (`;`) for test steps
- **Text Fields**: Remove unnecessary quotation marks
- **Cell Content**: Keep concise and readable
- **Format**: `"Action 1; Action 2; Action 3; Verify result"`
- **Avoid**: Pipe characters (`|`), complex formatting

### **Test Case ID Conventions**
- **Sprint Tests**: `TC_S[SPRINT]_US[STORY]_[SEQUENCE]`
- **Regression Tests**: `REG_[MODULE]_[SEQUENCE]`
- **Example Sprint**: `TC_S13_US2036_001`
- **Example Regression**: `REG_APPT_001`

---

## **SMART CONSOLIDATION RULES**

### **Module Isolation**
- **Rule**: Never consolidate across different modules
- **Reason**: Each module has independent functionality
- **Example**: MESSAGES tests ≠ APPOINTMENTS tests

### **Workflow Consolidation**
- **Rule**: Merge tests with identical setup steps
- **Application**: Login → Navigate → Common actions
- **Result**: Comprehensive workflow tests instead of isolated steps

### **Validation Grouping**
- **Rule**: Combine similar validation logic
- **Application**: Field validations, error handling
- **Result**: Single test covering multiple validation scenarios

### **Edge Case Preservation**
- **Rule**: Maintain important boundary condition tests
- **Application**: Data limits, unusual inputs
- **Result**: Focused edge case coverage

---

# 📈 **QUALITY ASSURANCE**

## **COVERAGE VERIFICATION**

### **Acceptance Criteria Coverage**
- ✅ Every AC must have corresponding test case(s)
- ✅ Positive and negative scenarios covered
- ✅ Edge cases identified and tested
- ✅ Business impact properly classified

### **Traceability Matrix**
- ✅ Clear mapping: AC → Test Cases
- ✅ Cross-sprint dependencies documented
- ✅ Consolidation history maintained
- ✅ Coverage gaps identified

## **Regression Suite Health**

### **Efficiency Metrics**
- **Test Case Count**: Monitor growth vs. consolidation
- **Execution Time**: Track total regression duration
- **Coverage**: Ensure no functionality gaps
- **Maintainability**: Keep test complexity manageable

### **Module Distribution**
- **Balanced Coverage**: All modules appropriately represented
- **Module Independence**: No cross-module test pollution
- **Priority Alignment**: Critical functionality properly weighted

---

# 🛠️ **TROUBLESHOOTING**

## **COMMON ISSUES**

### **CSV Display Problems**
**Issue**: Excel shows formatting errors
**Solution**: 
- Check for pipe characters (`|`) in test steps
- Verify semicolon (`;`) separators used
- Remove extra quotation marks
- Use clean CSV format

### **Missing Test Coverage**
**Issue**: Acceptance criteria not fully covered
**Solution**:
- Review story card acceptance criteria
- Add missing test scenarios
- Include negative and edge cases
- Verify traceability matrix

### **Regression Consolidation Errors**
**Issue**: Too many or too few consolidated tests
**Solution**:
- Review consolidation rules application
- Check module isolation compliance
- Verify workflow similarity analysis
- Ensure coverage preservation

---

# 📋 **TEMPLATES AND EXAMPLES**

## **EXAMPLE STORY CARD**

```markdown
# SPRINT 13 - APPOINTMENTS MODULE STORY CARD
## Mayo Clinic Patient Platform

### **User Story Details**
- **Story ID**: US2036
- **Sprint**: Sprint-13
- **Module**: APPOINTMENTS
- **Story Title**: As a Patient, I want to reschedule my appointment online so that I can manage my healthcare without calling
- **Priority**: High
- **Story Points**: 8

### **Module Context**
- **Module**: APPOINTMENTS
- **Feature Area**: Appointment Management

### **Acceptance Criteria**
#### **AC-4.1**: Patient can reschedule existing appointment
- Given I am logged in as a Patient with existing appointments
- When I select an appointment and choose reschedule option
- Then I should see available time slots for rescheduling

#### **AC-4.2**: System validates reschedule constraints
- Given I am rescheduling an appointment
- When I select a time slot less than 24 hours in advance
- Then I should see a validation error about minimum notice requirement

### **Workflow Steps**
1. Login to Mayo Clinic Patient Platform
2. Navigate to Appointments section
3. View existing appointments
4. Select appointment to reschedule
5. Choose new date/time from available slots
6. Confirm reschedule with appointment details
```

## **EXAMPLE TEST CASE OUTPUT**

```csv
Test_Case_ID,Story_ID,Priority,Test_Summary,Test_Steps,Expected_Result
TC_S13_US2036_001,US2036,High,Verify patient can reschedule appointment successfully,Login to Mayo Clinic Patient Platform; Navigate to Appointments; Select existing appointment; Click Reschedule; Choose new time slot; Confirm reschedule,Appointment should be rescheduled successfully with confirmation displayed
```

---

# 📞 **SUPPORT AND MAINTENANCE**

## **FILE MANAGEMENT**

### **Regular Maintenance Tasks**
1. **Archive Old Sprints**: Move completed sprint files to archive
2. **Clean Output Folders**: Remove temporary or duplicate files
3. **Update Documentation**: Keep reference materials current
4. **Backup Regression Suite**: Maintain Master CSV backups

### **Version Control**
- **Story Cards**: Version control all story card files
- **Master Regression**: Backup before major updates
- **Analysis Reports**: Maintain historical consolidation decisions

## **SYSTEM UPDATES**

### **Adding New Modules**
1. Update module list in prompt templates
2. Add module-specific consolidation rules
3. Update story card template
4. Test with sample story card

### **Modifying Consolidation Rules**
1. Update Smart Regression Management prompt
2. Test with existing test cases
3. Verify coverage preservation
4. Update documentation

---

# 🎯 **BEST PRACTICES**

## **STORY CARD CREATION**

### **Do's**
✅ Use clear, testable acceptance criteria
✅ Include both positive and negative scenarios
✅ Focus on single module functionality
✅ Provide realistic workflow steps
✅ Specify validation requirements

### **Don'ts**
❌ Mix multiple modules in one story
❌ Write vague or untestable criteria
❌ Ignore edge cases and error scenarios
❌ Skip validation and security requirements
❌ Create overly complex acceptance criteria

## **Test Case Quality**

### **Effective Test Cases**
✅ Clear, step-by-step instructions
✅ Specific expected results
✅ Realistic test data examples
✅ Appropriate priority classification
✅ Proper business impact assessment

### **Regression Efficiency**
✅ Consolidate similar workflows
✅ Maintain complete coverage
✅ Monitor execution time
✅ Keep tests maintainable
✅ Document consolidation decisions

---

# 📊 **SUCCESS METRICS**

## **Quality Indicators**

### **Test Generation Success**
- **Coverage**: 100% of acceptance criteria covered
- **Completeness**: Positive, negative, and edge cases included
- **Executability**: Clear, actionable test steps
- **Traceability**: AC-to-test mapping verified

### **Regression Optimization**
- **Efficiency**: Test case count vs. coverage ratio
- **Maintainability**: Consolidated workflow complexity
- **Execution Time**: Total regression suite duration
- **Module Balance**: Appropriate coverage distribution

## **System Health Metrics**

### **Weekly Reviews**
- Check Master Regression CSV for bloat
- Verify new sprint test quality
- Review consolidation effectiveness
- Monitor execution time trends

### **Monthly Assessments**
- Evaluate overall system effectiveness
- Review module coverage balance
- Assess team adoption and usage
- Plan system improvements

---

# 🚀 **GETTING STARTED CHECKLIST**

## **Initial Setup** (One-time)
- [ ] Review workspace folder structure
- [ ] Understand Mayo Clinic module breakdown
- [ ] Read CSV formatting standards
- [ ] Study story card template

## **For Each New Sprint** (Repeating)
- [ ] Create story card file with proper naming
- [ ] Write clear acceptance criteria
- [ ] Request test case generation
- [ ] Review generated test cases and CSV
- [ ] Verify regression suite updates
- [ ] Check consolidation analysis report

## **Quality Assurance** (Each Sprint)
- [ ] Confirm 100% AC coverage
- [ ] Verify CSV Excel compatibility
- [ ] Check test executability
- [ ] Review regression efficiency
- [ ] Validate module isolation

---

**This system is now ready for Sprint 13+ with established baseline regression suite and proven consolidation methodology! 🎉**

---

**Document Version**: 1.0  
**Last Updated**: November 10, 2025  
**System Status**: Production Ready  
**Current Baseline**: Sprint 12 (Messages Module - 4 Regression Tests)**