/*
====================================================================
DDL Script: Create Bronze Tables
====================================================================
Script Purpose:
  This script creates tables in the 'bronze' schema, dropping existing
  tables if they already exist.
  Run this script to re-define the DDL structure of 'bronze' tables
====================================================================
*/

IF OBJECT_ID ('bronze.hospital_general_information', 'U') IS NOT NULL
	DROP TABLE bronze.hospital_general_information;
GO

CREATE TABLE bronze.hospital_general_information (
	hgi_facility_id NVARCHAR(MAX),
	hgi_facility_name NVARCHAR(MAX),
	hgi_address NVARCHAR(MAX),
	hgi_city_town NVARCHAR(MAX),
	hgi_state NVARCHAR(MAX),
	hgi_zip_code NVARCHAR(MAX),
	hgi_country_parish NVARCHAR(MAX),
	hgi_telephone_number NVARCHAR(MAX),
	hgi_hospital_type NVARCHAR(MAX),
	hgi_hospital_ownership NVARCHAR(MAX),
	hgi_emergency_services NVARCHAR(MAX),
	hgi_birthing_friendly NVARCHAR(MAX),
	hgi_hospital_overall_rating NVARCHAR(MAX),
	hgi_rating_footnote NVARCHAR(MAX),
	hgi_group_measure_count NVARCHAR(MAX),
	hgi_facility_mort_measures_count NVARCHAR(MAX),
	hgi_mort_measures_better_count NVARCHAR(MAX),
	hgi_mort_measures_no_different NVARCHAR(MAX),
	hgi_mort_measures_worse NVARCHAR(MAX),
	hgi_mort_group_footnote NVARCHAR(MAX),
	hgi_safety_group_measure_count NVARCHAR(MAX),
	hgi_facility_safety_measure_count NVARCHAR(MAX),
	hgi_safety_measures_better_count NVARCHAR(MAX),
	hgi_safety_measures_no_different_count NVARCHAR(MAX),
	hgi_safety_measures_worse_count NVARCHAR(MAX),
	hgi_safety_group_footnote NVARCHAR(MAX),
	hgi_readm_group_measure_count NVARCHAR(MAX),
	hgi_facility_readm_measures_count NVARCHAR(MAX),
	hgi_readm_measures_better_count NVARCHAR(MAX),
	hgi_readm_measures_no_different_count NVARCHAR(MAX),
	hgi_readm_measures_worse_count NVARCHAR(MAX),
	hgi_readm_group_footnote NVARCHAR(MAX),
	hgi_pt_exp_group_measure_count NVARCHAR(MAX),
	hgi_facility_pt_exp_measures_count NVARCHAR(MAX),
	hgi_pt_exp_group_footnote NVARCHAR(MAX),
	hgi_te_group_measure_count NVARCHAR(MAX),
	hgi_facility_te_measures_count NVARCHAR(MAX),
	hgi_te_group_footnote NVARCHAR(MAX)
);

IF OBJECT_ID ('bronze.unplanned_hospital_visits', 'U') IS NOT NULL
	DROP TABLE bronze.unplanned_hospital_visits;

CREATE TABLE bronze.unplanned_hospital_visits (
	uhv_facility_id NVARCHAR(MAX),
	uhv_facility_name NVARCHAR(MAX),
	uhv_address NVARCHAR(MAX),
	uhv_city_town NVARCHAR(MAX),
	uhv_state NVARCHAR(MAX),
	uhv_zip_code NVARCHAR(MAX),
	uhv_country_parish NVARCHAR(MAX),
	uhv_telephone_number NVARCHAR(MAX),
	uhv_measure_id NVARCHAR(MAX),
	uhv_measure_name NVARCHAR(MAX),
	uhv_compared_to_national NVARCHAR(MAX),
	uhv_denominator NVARCHAR(MAX),
	uhv_score NVARCHAR(MAX),
	uhv_lower_estimate NVARCHAR(MAX),
	uhv_higher_estimate NVARCHAR(MAX),
	uhv_number_of_patients NVARCHAR(MAX),
	uhv_number_of_patients_returned NVARCHAR(MAX),
	uhv_footnote NVARCHAR(MAX),
	uhv_start_date NVARCHAR(MAX),
	uhv_end_date NVARCHAR(MAX)
);
