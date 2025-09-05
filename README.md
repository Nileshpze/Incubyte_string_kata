# README

# String Calculator (TDD Kata)

This repo contains an implementation of the classic **String Calculator Kata**, written in Ruby with RSpec.  
The goal was to build it step by step using **Test Driven Development (TDD)**.

---

## How It Works

The `StringCalculator` takes a string of numbers and returns their sum.

1. **Empty input**  
   Returns `0`.

2. **Default delimiters**  
   Supports commas `,` and newlines `\n` between numbers.  
   Example: `"1\n2,3"` → `6`.

3. **Custom delimiter**  
   You can define your own delimiter at the start of the string using `//<delimiter>\n`.  
   Example: `"//;\n1;2"` → `3`.

4. **Negative numbers**  
   If the input contains negatives, the calculator raises an error and lists the invalid numbers.  
   Example: `"2,-4,3,-5"` → raises `negative numbers not allowed -4,-5`.
