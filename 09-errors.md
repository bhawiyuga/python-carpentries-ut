---
marp: true
theme: gaia
---

# Errors and Exceptions

---

## Objectives

- Read a traceback and determine error location and type
- Describe situations where different error types occur:
  - Syntax errors
  - Indentation errors
  - Name errors
  - Index errors
  - Missing file errors

---

## Background

- All programmers encounter errors
- Understanding error types helps in fixing them
- Python errors have a specific form called a traceback

---

## Traceback Example

```python
def favorite_ice_cream():
    ice_creams = [
        'chocolate',
        'vanilla',
        'strawberry'
    ]
    print(ice_creams[3])

favorite_ice_cream()
```

---

## Traceback Analysis

- Two levels in the traceback
- Error occurred in `favorite_ice_cream()` function
- Line 9: `print(ice_creams[3])`
- Error type: IndexError
- Message: "list index out of range"

---

## Long Tracebacks

- Can be very long (up to 20 levels)
- Length doesn't indicate severity
- Actual error usually at the bottom-most level

---

## Reading Error Messages

Practice:
- Identify traceback levels
- Locate function and line number of error
- Determine error type and message

---

## Syntax Errors

- Caused by incorrect Python syntax
- Examples:
  - Missing colons
  - Incorrect indentation
  - Missing parentheses

---

## Tabs and Spaces

- Mixing tabs and spaces can cause indentation errors
- Visually difficult to spot
- Python doesn't allow mixing tabs and spaces

---

## Variable Name Errors

- NameError: occurs when using undefined variables
- Common reasons:
  1. Missing quotes around strings
  2. Using variables before definition
  3. Typos in variable names

---

## Index Errors

- Occur when accessing non-existent items in containers
- Example: Trying to access index 3 in a 3-item list

---

## File Errors

- FileNotFoundError: when reading non-existent files
- UnsupportedOperationError: writing to read-only files
- OSErrors: general input/output problems

---

## Exercises

1. Identifying Syntax Errors
2. Identifying Variable Name Errors
3. Identifying Index Errors

---

# Errors and Exceptions

---

## Objectives

- Read a traceback and determine error location and type
- Describe situations where different error types occur:
  - Syntax errors
  - Indentation errors
  - Name errors
  - Index errors
  - Missing file errors

---

## Background

- All programmers encounter errors
- Understanding error types helps in fixing them
- Python errors have a specific form called a traceback

---

## Traceback Example

```python
def favorite_ice_cream():
    ice_creams = [
        'chocolate',
        'vanilla',
        'strawberry'
    ]
    print(ice_creams[3])

favorite_ice_cream()
```

---

## Traceback Analysis

- Two levels in the traceback
- Error occurred in `favorite_ice_cream()` function
- Line 9: `print(ice_creams[3])`
- Error type: IndexError
- Message: "list index out of range"

---

## Long Tracebacks

- Can be very long (up to 20 levels)
- Length doesn't indicate severity
- Actual error usually at the bottom-most level

---

## Reading Error Messages

Practice:
- Identify traceback levels
- Locate function and line number of error
- Determine error type and message

---

## Syntax Errors

- Caused by incorrect Python syntax
- Examples:
  - Missing colons
  - Incorrect indentation
  - Missing parentheses

---

## Tabs and Spaces

- Mixing tabs and spaces can cause indentation errors
- Visually difficult to spot
- Python doesn't allow mixing tabs and spaces

---

## Variable Name Errors

- NameError: occurs when using undefined variables
- Common reasons:
  1. Missing quotes around strings
  2. Using variables before definition
  3. Typos in variable names

---

## Index Errors

- Occur when accessing non-existent items in containers
- Example: Trying to access index 3 in a 3-item list

---

## File Errors

- FileNotFoundError: when reading non-existent files
- UnsupportedOperationError: writing to read-only files
- OSErrors: general input/output problems

---

# Exercises

---

## Exercise 1: Identifying Syntax Errors

```python
def another_function
  print('Syntax errors are annoying.')
   print('But at least Python tells us about them!')
  print('So they are usually not too hard to fix.')
```

1. Identify errors without running the code
2. Run the code and read the error message
3. Fix the error
4. Repeat steps 2 and 3 until all errors are fixed

---

## Exercise 2: Identifying Variable Name Errors

```python
for number in range(10):
    # use a if the number is a multiple of 3, otherwise use b
    if (Number % 3) == 0:
        message = message + a
    else:
        message = message + 'b'
print(message)
```
1. Identify errors without running the code
2. Run the code and read the error message
3. Determine the type of NameError
4. Fix the error and repeat steps 2-4 until all errors are fixed

---

## Exercise 3: Identifying Index Errors

```python
seasons = ['Spring', 'Summer', 'Fall', 'Winter']
print('My favorite season is ', seasons[4])
```

1. Identify errors without running the code
2. Run the code and read the error message
3. Determine the error type
4. Fix the error