#!/bin/bash

# Check disk space
df -h

# Check memory usage
free -m

# Check CPU usage
top -bn1 | grep "Cpu(s)" | \
    sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
    awk '{print 100 - $1"%"}'

# Check network connectivity
ping -c 3 www.google.com

