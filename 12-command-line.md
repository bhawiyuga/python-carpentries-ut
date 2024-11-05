---
marp: true
theme: gaia
---

# Command-Line Programs

---

## Objectives

- Use the values of command-line arguments in a program
- Handle flags and files separately in a command-line program
- Read data from standard input in a program so that it can be used in a pipeline

---

## Background

- Jupyter Notebook and interactive tools are great for prototyping
- For processing large datasets, we need command-line programs
- Goal: Create programs that work like Unix command-line tools
- Example: Program to read a dataset and print average inflammation per patient

---

## Switching to Shell Commands

- We'll use shell terminal window (e.g., bash) instead of Python interpreter
- `$` indicates a shell command

Example:
```bash
$ python ../code/readings_04.py --mean inflammation-01.csv
```

---

## Script Requirements

1. Read from standard input if no filename is given
2. Read data from files if filenames are provided
3. Report statistics for each file separately
4. Use flags (--min, --mean, --max) to determine statistic to print

---

## Command-Line Arguments

- Use `sys` module to handle command-line arguments
- `sys.argv` contains list of command-line arguments

Example:
```python
import sys
print('sys.argv is', sys.argv)
```

---

## Handling Multiple Files

- Use a loop to process each file separately
- Be careful with `sys.argv[0]` (script name)
- Use `sys.argv[1:]` to get only the filenames

---

## Handling Command-Line Flags

- Check for flags before processing files
- Use `assert` to validate flag input
- Separate file processing into a function

---

## Handling Standard Input

- Read from `sys.stdin` if no filenames are provided
- Use `<` to redirect file content to standard input

Example:
```bash
$ python ../code/count_stdin.py < small-01.csv
```

---

## Final Program Structure

1. Parse command-line arguments
2. Validate input
3. Process files or standard input
4. Apply requested operation (min, mean, max)
5. Print results

---

# Exercises

---

## Exercise 1: Arithmetic on the Command Line

Write a Python program that performs arithmetic operations:

```bash
$ python arith.py --add 1 2
$ python arith.py --subtract 3 4
```

- Implement addition, subtraction, multiplication, and division
- Parse command-line arguments for operation and numbers

---

## Exercise 2: Finding Particular Files

Use the `glob` module to create a simple version of `ls`:

```bash
$ python my_ls.py py
left.py
right.py
zero.py
```

- List files in the current directory with a specific suffix
- Use command-line argument to specify the suffix

---

## Exercise 3: Changing Flags

Modify `readings.py` to use shorter flags:

- Replace `--min` with `-n`
- Replace `--mean` with `-m`
- Replace `--max` with `-x`

Consider:
- Is the code easier to read?
- Is the program easier to understand?

---

## Exercise 4: Adding a Help Message

Modify `readings.py` to display usage information:

- Print a help message if no parameters are given
- Explain how to use the program
- Include examples of valid commands

---

## Exercise 5: Adding a Default Action

Enhance `readings.py` with a default behavior:

- If no action is specified, display the means of the data
- Keep existing functionality for when actions are specified

---

## Exercise 6: A File-Checker

Create a program called `check.py`:

- Take names of inflammation data files as arguments
- Check that all files have the same number of rows and columns
- Design and implement tests for your program

---

## Exercise 7: Counting Lines

Write a program called `line_count.py` similar to Unix `wc`:

- If no filenames given, report number of lines in standard input
- If filenames given, report lines in each file and total
- Handle both file input and standard input

---

## Exercise 8: Generate an Error Message

Create `check_arguments.py`:

- Print usage and exit if no arguments are provided
- Use `sys.exit()` to terminate the program

Example output:
```bash
$ python check_arguments.py
usage: python check_argument.py filename.txt

$ python check_arguments.py filename.txt
Thanks for specifying arguments!
```