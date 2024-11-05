---
marp: true
theme: gaia
---

# Creating Functions

---

## Objectives

- Define a function that takes parameters
- Return a value from a function
- Test and debug a function
- Set default values for function parameters
- Explain why we should divide programs into small, single-purpose functions

---

## Background

Instead of repeating code:

```python
fahrenheit_val = 99
celsius_val = ((fahrenheit_val - 32) * (5/9))

fahrenheit_val2 = 43
celsius_val2 = ((fahrenheit_val2 - 32) * (5/9))
```

We can use functions to package reusable code.

---

## Composing Functions

Define a function to convert Fahrenheit to Celsius:

```python
def fahr_to_celsius(temp):
    return ((temp - 32) * (5/9))
```

Usage:

```python
print('freezing point of water:', fahr_to_celsius(32), 'C')
print('boiling point of water:', fahr_to_celsius(212), 'C')
```

---

## Composing Functions (cont.)

Convert Celsius to Kelvin:

```python
def celsius_to_kelvin(temp_c):
    return temp_c + 273.15

def fahr_to_kelvin(temp_f):
    temp_c = fahr_to_celsius(temp_f)
    temp_k = celsius_to_kelvin(temp_c)
    return temp_k
```

---

## Variable Scope

- Local variables exist only within functions
- Global variables can be accessed inside functions

```python
def print_temperatures():
    print('temperature in Fahrenheit was:', temp_fahr)
    print('temperature in Kelvin was:', temp_kelvin)

temp_fahr = 212.0
temp_kelvin = fahr_to_kelvin(temp_fahr)
print_temperatures()
```

---

## Tidying up

Create functions for visualization and problem detection:

```python
def visualize(filename):
    # ... (visualization code)

def detect_problems(filename):
    # ... (problem detection code)

for filename in filenames[:3]:
    print(filename)
    visualize(filename)
    detect_problems(filename)
```

---

## Testing and Documenting

Example function:

```python
def offset_mean(data, target_mean_value):
    return (data - numpy.mean(data)) + target_mean_value
```

Test with:

```python
z = numpy.zeros((2, 2))
print(offset_mean(z, 3))
```

---

## Testing and Documenting (cont.)

Add documentation:

```python
def offset_mean(data, target_mean_value):
    """Return a new array containing the original data
       with its mean offset to match the desired value."""
    return (data - numpy.mean(data)) + target_mean_value
```

Use `help(offset_mean)` to view documentation.

---

## Defining Defaults

Add default parameter:

```python
def offset_mean(data, target_mean_value=0.0):
    """Return a new array containing the original data
       with its mean offset to match the desired value, (0 by default)."""
    return (data - numpy.mean(data)) + target_mean_value
```

---

## Readable functions

Compare:

```python
def s(p):
    a = 0
    for v in p:
        a += v
    m = a / len(p)
    d = 0
    for v in p:
        d += (v - m) * (v - m)
    return numpy.sqrt(d / (len(p) - 1))

def std_dev(sample):
    sample_sum = 0
    for value in sample:
        sample_sum += value
    sample_mean = sample_sum / len(sample)
    sum_squared_devs = 0
    for value in sample:
        sum_squared_devs += (value - sample_mean) * (value - sample_mean)
    return numpy.sqrt(sum_squared_devs / (len(sample) - 1))
```

---

## Exercises

1. Combining Strings
2. Return versus print
3. Selecting Characters From Strings
4. Rescaling an Array
5. Testing and Documenting Your Function
6. Defining Defaults
7. Variables Inside and Outside Functions
8. Mixing Default and Non-Default Parameters
9. Readable Code

---

## 1. Combining Strings

Write a function called `fence` that takes two parameters:
- `original`
- `wrapper`

It should return a new string with the `wrapper` character at the beginning and end of the `original`.

Example usage:
```python
print(fence('name', '*'))
```

---

## 2. Return versus print

Consider this function:
```python
def add(a, b):
    print(a + b)
```

What will we see if we execute:
```python
A = add(7, 3)
print(A)
```

Think about the difference between `return` and `print`.

---

## 3. Selecting Characters From Strings

Write a function called `outer` that returns a string made up of just the first and last characters of its input.

Example usage:
```python
print(outer('helium'))
```

---

## 4. Rescaling an Array

Write a function `rescale` that:
- Takes an array as input
- Returns a corresponding array of values scaled to lie in the range 0.0 to 1.0

Hint: If L and H are the lowest and highest values in the original array, then the replacement for a value v should be (v-L) / (H-L).

---

## 5. Testing and Documenting Your Function

1. Use `numpy.arange` and `numpy.linspace` to generate test values for your `rescale` function.
2. Test your function with these values.
3. Add a docstring to explain what your function does.

---

## 6. Defining Defaults

Rewrite the `rescale` function so that:
- It scales data to lie between 0.0 and 1.0 by default
- Allows the caller to specify lower and upper bounds if they want

Compare your implementation with your neighbor's.

---

## 7. Variables Inside and Outside Functions

What does this code display when run, and why?

```python
f = 0
k = 0

def f2k(f):
    k = ((f - 32) * (5.0 / 9.0)) + 273.15
    return k

print(f2k(8))
print(f2k(41))
print(f2k(32))
print(k)
```

---

## 8. Mixing Default and Non-Default Parameters

Given this code:

```python
def numbers(one, two=2, three, four=4):
    n = str(one) + str(two) + str(three) + str(four)
    return n

print(numbers(1, three=3))
```

What do you expect will be printed? What is actually printed?

---

## 9. Readable Code

1. Choose a function you wrote for one of the previous exercises.
2. Revise it to make the code more readable.
3. Collaborate with a neighbor to critique each other's functions.
4. Discuss how your function implementations could be further improved for readability.

