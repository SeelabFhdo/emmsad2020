#!/usr/bin/env bash
# You need at least Java 11 in order to run the preliminary static-analyzer's JAR
source export_java_home.sh
bash export_java_home.sh

java -jar static-analyzer-standalone.jar -s "Reconstruction Models/customer-core/customerCore.data" -i "Reconstruction Models/intermediate/mapping models/customerCore/customerCore_customerCore.xmi" --invoke_only_specified_phases intermediate_model_validation --additional_intermediate_model="Reconstruction Models/intermediate/mapping models/customerManagement/customerManagement_customerManagement.xmi" --additional_intermediate_model="Reconstruction Models/intermediate/mapping models/customerSelfServiceBackend/customerSelfServiceBackend_customerSelfServiceBackend.xmi" --additional_intermediate_model="Reconstruction Models/intermediate/mapping models/policyManagementBackend/policyManagementBackend_policyManagementBackend.xmi" --csv_file="Produced Result Files/activity-2-domain-analysis.csv"
