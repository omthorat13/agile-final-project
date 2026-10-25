#!/bin/bash

# Simple Interest Calculator Script
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "======================================"
echo "      Simple Interest Calculator      "
echo "======================================"
echo ""

# Prompt user for Principal amount
read -p "Enter Principal Amount: " principal

# Prompt user for Annual Interest Rate (%)
read -p "Enter Annual Interest Rate (%): " rate

# Prompt user for Time Period (in years)
read -p "Enter Time Period (in years): " time

# Calculate Simple Interest using 'bc' for floating-point calculations
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount (Principal + Interest)
total=$(echo "scale=2; $principal + $interest" | bc)

echo ""
echo "--------------------------------------"
echo "               Results                "
echo "--------------------------------------"
echo "Principal Amount : $principal"
echo "Interest Rate    : $rate%"
echo "Time Period      : $time years"
echo "--------------------------------------"
echo "Simple Interest  : $interest"
echo "Total Amount     : $total"
echo "======================================"
