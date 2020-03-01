#!/usr/bin/env bash

bash activity-1-loc-analysis.sh
bash activity-2-domain-analysis.sh
bash activity-3-service-analysis.sh

cd "Produced Result Files"
python3 csv2tex_vars.py activity-2-domain-analysis.csv
python3 csv2tex_vars.py activity-3-service-analysis.csv
