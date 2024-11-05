---
marp: true
theme: gaia
---

# Defensive Programming

---

## Objectives

- Explain what an assertion is
- Add assertions that check the program's state is correct
- Correctly add precondition and postcondition assertions to functions
- Explain what test-driven development is, and use it when creating new functions
- Explain why variables should be initialized using actual data values rather than arbitrary constants

---

## Background

- Our previous lessons introduced basic programming tools
- We need to learn how to verify program correctness
- To achieve this, we need to:
  1. Write programs that check their own operation
  2. Write and run tests for widely-used functions
  3. Make sure we know what "correct" actually means

---

## Assertions

- Defensive programming assumes mistakes will happen
- Assertions check if something is true at a certain point in a program
- If assertion is false, Python halts the program and prints an error message

---

## Types of Assertions

1. Precondition: Must be true at the start of a function
2. Postcondition: Function guarantees is true when it finishes
3. Invariant: Always true at a particular point inside code

---

## Example: Normalizing a Rectangle

```python
def normalize_rectangle(rect):
    assert len(rect) == 4, 'Rectangles must contain 4 coordinates'
    x0, y0, x1, y1 = rect
    assert x0 < x1, 'Invalid X coordinates'
    assert y0 < y1, 'Invalid Y coordinates'
    # ... (rest of the function)
    assert 0 < upper_x <= 1.0, 'Calculated upper X coordinate invalid'
    assert 0 < upper_y <= 1.0, 'Calculated upper Y coordinate invalid'
    return (0, 0, upper_x, upper_y)
```

---

## Benefits of Assertions

- Catch errors early
- Help understand programs
- Fail early, fail often
- Turn bugs into assertions or tests

---

## Test-Driven Development (TDD)

1. Write short functions for each test
2. Write the main function that should pass those tests
3. Fix and re-run tests if wrong answers are produced

---

## Benefits of TDD

- Avoids confirmation bias
- Helps define function behavior
- Implicitly defines input and output formats

---

## Example: Range Overlap Function

```python
def range_overlap(ranges):
    pass

# Test cases
assert range_overlap([ (0.0, 1.0) ]) == (0.0, 1.0)
assert range_overlap([ (2.0, 3.0), (2.0, 4.0) ]) == (2.0, 3.0)
assert range_overlap([ (0.0, 1.0), (0.0, 2.0), (-1.0, 1.0) ]) == (0.0, 1.0)
```

---

## Handling Edge Cases

- Consider cases where ranges don't overlap
- Define behavior for touching endpoints
- Use `None` for no overlap

---

## Final Range Overlap Implementation

```python
def range_overlap(ranges):
    """Return common overlap among a set of [left, right] ranges."""
    max_left = 0.0
    min_right = 1.0
    for (left, right) in ranges:
        max_left = max(max_left, left)
        min_right = min(min_right, right)
    return (max_left, min_right)
```

---

# Exercises

---

## Exercise 1: Pre- and Post-Conditions

**Task:**
Write pre-conditions and post-conditions for an `average` function that calculates the average of numbers in a NumPy array.

**Steps:**
1. Define pre- and post-conditions
2. Compare with your neighbor's conditions

Can you think of a function that will pass your tests but not your neighbor's, or vice versa?

---

## Exercise 2: Testing Assertions

### Given Function:

```python
def get_total_cars(values):
    assert len(values) > 0
    for element in values:
        assert int(element)
    values = [int(element) for element in values]
    total = sum(values)
    assert total > 0
```

---

## Exercise 2: Tasks

1. Explain in words what each assertion in the function checks

2. For each assertion, give an example of input that will make it fail

---

## Exercise 2: Hint

Consider the following examples:

```python
get_total_cars([1, 2, 3, 4])  # Works correctly

get_total_cars(['a', 'b', 'c'])  # Raises ValueError
```

Think about why the second example fails and what other inputs might cause issues.