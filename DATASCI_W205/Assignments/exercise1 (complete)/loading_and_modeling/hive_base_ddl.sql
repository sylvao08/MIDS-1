DROP TABLE IF EXISTS effective_care;
CREATE EXTERNAL TABLE effective_care(
  ProviderID int,
  HospitalName string,
  Address string,
  City string,
  State string,
  ZIPCode bigint,
  CountyName string,
  PhoneNumber bigint,
  Condition string,
  MeasureID string,
  MeasureName string,
  Score string,
  Sample string,
  Footnote string,
  MeasureStartDate string,
  MeasureEndDate string)
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
  stored as textfile 
  LOCATION '/user/gregce/hospital_compare/effective_care/';

DROP TABLE IF EXISTS hospitals;
CREATE EXTERNAL TABLE hospitals(
  ProviderID int,
  HospitalName string,
  Address string,
  City string,
  State string,
  ZIPCode bigint,
  CountyName string,
  PhoneNumber bigint,
  HospitalType string,
  HospitalOwnership string,
  EmergencyServices string)
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
  stored as textfile 
  LOCATION '/user/gregce/hospital_compare/hospitals/';
  
DROP TABLE IF EXISTS measuredates;
CREATE EXTERNAL TABLE measuredates(
  MeasureName string,
  MeasureID string,
  MeasureStartQuarter string,
  MeasureStartDate string,
  MeasureEndQuarter string,
  MeasureEndDate string
 )
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
  stored as textfile 
  LOCATION '/user/gregce/hospital_compare/measuredates/';
  

  
DROP TABLE IF EXISTS readmissionreduction;
CREATE EXTERNAL TABLE readmissionreduction(
  HospitalName string,
  ProviderID int,
  State string,
  MeasureName string,
  NumberofDischarges string,
  Footnote double,
  ExcessReadmissionRatio string,
  PredictedReadmissionRate string,
  ExpectedReadmissionRate string,
  NumberofReadmissions string,
  StartDate string,
  EndDate string)
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
  stored as textfile 
  LOCATION '/user/gregce/hospital_compare/readmissionreduction/';
  

DROP TABLE IF EXISTS readmissions;
CREATE EXTERNAL TABLE readmissions(
  ProviderID int,
  HospitalName string,
  Address string,
  City string,
  State string,
  ZIPCode bigint,
  CountyName string,
  PhoneNumber bigint,
  MeasureName string,
  MeasureID string,
  ComparedtoNational string,
  Denominator string,
  Score string,
  LowerEstimate string,
  HigherEstimate string,
  Footnote string,
  MeasureStartDate string,
  MeasureEndDate string
)
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
  stored as textfile 
  LOCATION '/user/gregce/hospital_compare/readmissions/';
  



DROP TABLE IF EXISTS hosp_patientexperience;
CREATE EXTERNAL TABLE hosp_patientexperience
(
  ProviderID int,
  HospitalName string,
  Address string,
  City string,
  State string,
  ZIPCode string,
  CountyName string,
  CommunicationwithNursesAchievementPoints string,
  CommunicationwithNursesImprovementPoints string,
  CommunicationwithNursesDimensionScore string,
  CommunicationwithDoctorsAchievementPoints string,
  CommunicationwithDoctorsImprovementPoints string,
  CommunicationwithDoctorsDimensionScore string,
  ResponsivenessofHospitalStaffAchievementPoints string,
  ResponsivenessofHospitalStaffImprovementPoints string,
  ResponsivenessofHospitalStaffDimensionScore string,
  PainManagementAchievementPoints string,
  PainManagementImprovementPoints string,
  PainManagementDimensionScore string,
  CommunicationaboutMedicinesAchievementPoints string,
  CommunicationaboutMedicinesImprovementPoints string,
  CommunicationaboutMedicinesDimensionScore string,
  CleanlinessandQuietnessofHospitalEnvironmentAchievementPoints string,
  CleanlinessandQuietnessofHospitalEnvironmentImprovementPoints string,
  CleanlinessandQuietnessofHospitalEnvironmentDimensionScore string,
  DischargeInformationAchievementPoints string,
  DischargeInformationImprovementPoints string,
  DischargeInformationDimensionScore string,
  OverallRatingofHospitalAchievementPoints string,
  OverallRatingofHospitalImprovementPoints string,
  OverallRatingofHospitalDimensionScore string,
  HCAHPSBaseScore string,
  HCAHPSConsistencyScore string
  )
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
  stored as textfile 
  LOCATION '/user/gregce/hospital_compare/hosp_patientexperience/';
  
DROP TABLE IF EXISTS hosp_totalperformance;
CREATE EXTERNAL TABLE hosp_totalperformance
  (
  ProviderID int,
  HospitalName string,
  Address string,
  City string,
  State string,
  ZipCode string,
  CountyName string,
  UnweightedNormalizedClinicalProcessofCareDomainScore string,
  WeightedClinicalProcessofCareDomainScore string,
  UnweightedPatientExperienceofCareDomainScore string,
  WeightedPatientExperienceofCareDomainScore string,
  UnweightedNormalizedOutcomeDomainScore string,
  WeightedOutcomeDomainScore string,
  UnweightedNormalizedEfficiencyDomainScore string,
  WeightedEfficiencyDomainScore string,
  TotalPerformanceScore double 
  )
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
  stored as textfile 
  LOCATION '/user/gregce/hospital_compare/hosp_totalperformance/';
  
  
  DROP TABLE IF EXISTS hosp_surveys;
  CREATE EXTERNAL TABLE hosp_surveys
  (
    ProviderID int,
    HospitalName string,
    Address string,
    City string,
    State string,
    ZIPCode bigint,
    CountyName string,
    PhoneNumber bigint,
    HCAHPSMeasureID string,
    HCAHPSQuestion string,
    HCAHPSAnswerDescription string,
    PatientSurveyStarRating string,
    PatientSurveyStarRatingFootnote string,
    HCAHPSAnswerPercent string,
    HCAHPSAnswerPercentFootnote string,
    NumberofCompletedSurveys string,
    NumberofCompletedSurveysFootnote string,
    SurveyResponseRatePercent string,
    SurveyResponseRatePercentFootnote string,
    MeasureStartDate string,
    MeasureEndDate string
  )
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
  stored as textfile 
  LOCATION '/user/gregce/hospital_compare/hosp_surveys/';
