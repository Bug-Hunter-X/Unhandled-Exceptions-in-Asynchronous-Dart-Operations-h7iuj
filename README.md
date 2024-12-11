# Unhandled Exceptions in Asynchronous Dart Operations

This repository demonstrates a common error in Dart: improperly handling exceptions within asynchronous operations.  The `bug.dart` file shows code that makes a network request and processes JSON data, but lacks robust exception handling. The `bugSolution.dart` file provides a corrected version with improved exception handling.

## Bug Description

The `fetchData` function in `bug.dart` fetches data from a URL.  However, it doesn't comprehensively handle potential exceptions such as network errors, invalid JSON, or other runtime exceptions. This can result in the application crashing or failing silently, making it difficult to debug.

## Solution

The `bugSolution.dart` file addresses this by implementing more robust exception handling. The `try-catch` block now handles various error scenarios, providing more informative error messages and preventing unexpected crashes.