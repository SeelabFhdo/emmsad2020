#!/usr/bin/env bash
# You need at least Java 11 in order to run the preliminary static-analyzer's JAR
source export_java_home.sh
bash export_java_home.sh

java -jar static-analyzer-standalone.jar -s "Reconstruction Models/customer-core/customerCore.services" -i "Reconstruction Models/intermediate/mapping models/customerCore.xmi" --invoke_only_specified_phases intermediate_model_validation --additional_intermediate_model="Reconstruction Models/intermediate/mapping models/customerManagement.xmi" --additional_intermediate_model="Reconstruction Models/intermediate/mapping models/customerSelfServiceBackend.xmi" --additional_intermediate_model="Reconstruction Models/intermediate/mapping models/policyManagementBackend.xmi" --csv_file="Produced Result Files/activity-3-service-analysis.csv" 
