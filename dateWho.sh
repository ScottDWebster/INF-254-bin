#!/bin/bash

date | tee -a dateWhoLog.txt
who | tee -a dateWhoLog.txt
