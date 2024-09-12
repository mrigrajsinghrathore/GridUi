# Grid UI with Dynamic Color Change Based on Date

## Overview
This Flutter project is a simple grid-based UI with two main sections:
- **Leave**
- **Attendance Regularization**

The background color of these sections changes dynamically according to the current date:
- If the current date is **greater than 15**, the background color of these sections will be **blue**.
- If the current date is **less than or equal to 15**, the background color of these sections will be **grey**.

## Features
- **Dynamic Date-Based Color Changes**: The "Leave" and "Attendance Regularization" sections will adjust their background colors depending on the current day of the month.
- **Simple and Clean UI**: The grid layout offers a straightforward and user-friendly design for easy navigation.

## How It Works
1. **Current Date Detection**: The app fetches the current date using Flutter's `DateTime.now()` method.
2. **Color Change Logic**:
   - If the day of the current date is **greater than 15**, the color of the "Leave" and "Attendance Regularization" sections will be set to **blue** (`Colors.blue`).
   - If the day is **15 or less**, the color of the sections will be set to **grey** (`Colors.grey`).
3. **Grid Layout**: The UI is structured as a grid, where each section occupies a grid tile.





