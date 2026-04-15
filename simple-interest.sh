#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "================================="
echo "  Simple Interest Calculator"
echo "================================="

# Read principal amount
echo -n "Enter Principal amount: "
read principal

# Read rate of interest
echo -n "Enter Rate of Interest (%): "
read rate

# Read time period in years
echo -n "Enter Time period (in years): "
read time

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo "================================="
echo "Results:"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
echo "================================="
