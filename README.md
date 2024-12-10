# Unhandled Exceptions in Asynchronous Network Requests

This repository demonstrates a common error in Dart when dealing with asynchronous network requests: insufficient exception handling.

The `bug.dart` file contains code that attempts to fetch data from a remote API.  However, it lacks robust error handling, potentially leading to unexpected app crashes or poor user experience.

The `bugSolution.dart` file offers an improved version of the code with better exception handling and more informative error reporting.