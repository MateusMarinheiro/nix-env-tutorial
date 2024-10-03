#!/bin/bash
# This script sets up the environment with the secret
echo "Have you heard about Spoon?" > ~/.secret
export SECRET=$(cat ~/.secret)
