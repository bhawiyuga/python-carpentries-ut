---
marp: true
theme: gaia
---

# Making Choices

---

## Objectives

- Write conditional statements including if, elif, and else branches
- Correctly evaluate expressions containing and and or

---

## Conditionals

Basic if-else structure:

```python
num = 37
if num > 100:
    print('greater')
else:
    print('not greater')
print('done')
```

Output:
```
not greater
done
```

---

## Conditionals (cont.)

If-elif-else chain:

```python
num = -3
if num > 0:
    print(num, 'is positive')
elif num == 0:
    print(num, 'is zero')
else:
    print(num, 'is negative')
```

---

## Comparing in Python

Comparison operators:
- `>`: greater than
- `<`: less than
- `==`: equal to
- `!=`: does not equal
- `>=`: greater than or equal to
- `<=`: less than or equal to

---

## Logical Operators

`and` operator:

```python
if (1 > 0) and (-1 >= 0):
    print('both parts are true')
else:
    print('at least one part is false')
```

`or` operator:

```python
if (1 < 0) or (1 >= 0):
    print('at least one test is true')
```

---

## True and False

- Special words in Python called booleans
- Represent truth values
- Examples:
  - `1 < 0` returns `False`
  - `-1 < 0` returns `True`

---

## Detecting Suspicious Inflammation Patterns

- **Observation**: 
  - Maximum daily inflammation increases by one unit per day
  - The minima per day were all zero
- **Proposed Detection Method**:
  1. Check if max inflammation on day 0 equals to 0 **and** day 20 equals to 20
  2. Check if all daily minima are zero
  3. Otherwise, OK

---

## Checking our Data (code)

```python
import numpy
data = numpy.loadtxt(fname='inflammation-01.csv', delimiter=',')

max_inflammation_0 = numpy.amax(data, axis=0)[0]
max_inflammation_20 = numpy.amax(data, axis=0)[20]

if max_inflammation_0 == 0 and max_inflammation_20 == 20:
    print('Suspicious looking maxima!')
elif numpy.sum(numpy.amin(data, axis=0)) == 0:
    print('Minima add up to zero!')
else:
    print('Seems OK!')
```
---

## Exercise 1: How Many Paths?

```python
if 4 > 5:
    print('A')
elif 4 == 5:
    print('B')
elif 4 < 5:
    print('C')
```
Which of the following would be printed if you were to run this code?
A. A
B. B
C. C
D. B and C

---

## Exercise 2: What Is Truth?

Which values are considered true and which are considered false? 

```python
if '':
    print('empty string is true')
if 'word':
    print('word is true')
if []:
    print('empty list is true')
if [1, 2, 3]:
    print('non-empty list is true')
if 0:
    print('zero is true')
if 1:
    print('one is true')
```

---

## Exercise 3: That's Not Not What I Meant

Write some `if` statements using `not` to test the rule you formulated in the previous challenge.

```python
if not '':
    print('empty string is not true')
if not 'word':
    print('word is not true')
if not not True:
    print('not not True is true')
```

---

## Exercise 4: Close Enough

Write conditions that print `True` if the variable `a` is within 10% of the variable `b` and `False` otherwise.

Compare your implementation with your partner's: do you get the same answer for all possible pairs of numbers?

---

## Exercise 5: In-Place Operators

Write code that sums the positive and negative numbers in a list separately, using in-place operators.

Example of in-place operators:
```python
x = 1  # original value
x += 1 # add one to x, assigning result back to x
x *= 3 # multiply x by 3
print(x)
```

Do you think the result is more or less readable than writing the same without in-place operators?

---

## Exercise 6: Sorting a List Into Buckets

Sort files into three lists: `large_files`, `small_files`, and `other_files` based on their names.

Starting point:
```python
filenames = ['inflammation-01.csv',
         'myscript.py',
         'inflammation-02.csv',
         'small-01.csv',
         'small-02.csv']
large_files = []
small_files = []
other_files = []
```

Hint: Use `string.startswith()` method.

---

## Exercise 7: Counting Vowels

Write a loop that counts the number of vowels in a character string.

- Test it on individual words and full sentences
- Compare your solution with your neighbor's
- How did you handle the letter 'y'?

---

## Key Points

- Use `if condition` to start a conditional statement, `elif condition` for additional tests, and `else` for default
- Branch bodies must be indented
- Use `==` to test for equality
- `X and Y` is only true if both X and Y are true
- `X or Y` is true if either X or Y, or both, are true
- Zero, empty string, and empty list are considered false; all other numbers, strings, and lists are considered true
- `True` and `False` represent truth values


