---
marp: true
theme: gaia
---

# Debugging

---

## Know What It's Supposed to Do

- First step: understand the expected behavior
- "My program doesn't work" is not specific enough
- Write test cases for failing scenarios
- Challenges in scientific software testing:
  - Test with simplified data
  - Test a simplified case
  - Compare to an oracle
  - Check conservation laws
  - Visualize (as a last resort)

---

## Make It Fail Every Time

- Find a test case that consistently reproduces the failure
- Importance of reproducibility in debugging
- Ensure you're testing the right code/data/configuration
- Avoid intermittent problems

---

## Change One Thing at a Time, For a Reason

- Avoid random code changes
- Change one thing at a time:
  - To gather more information
  - To test a fix
- Re-run all tests after each change
- Be aware of potential regressions

---

## Keep Track of What You've Done

- Document your debugging process
- Helps in:
  - Reproducing work
  - Avoiding repetition
  - Asking for help effectively

---

## Be Humble

- Ask for help if stuck for 10+ minutes
- Benefits of explaining the problem to others
- Beware of confirmation bias
- Learn from mistakes
- Develop good coding habits:
  - Modular, testable code
  - Use assertions

---

# Debugging

---

## Exercise: Debug with a Neighbor

1. Write a function
2. Introduce a tricky bug
3. Switch seats with a neighbor
4. Debug each other's code
5. Reflect on which debugging principles were helpful

---

## Exercise: Not Supposed to Be the Same

Debug the following BMI calculation code:

```python
patients = [[70, 1.8], [80, 1.9], [150, 1.7]]
def calculate_bmi(weight, height):
    return weight / (height ** 2)
for patient in patients:
    weight, height = patients[0]
    bmi = calculate_bmi(height, weight)
    print("Patient's BMI is:", bmi)
```

Identify bugs and suggest improvements.