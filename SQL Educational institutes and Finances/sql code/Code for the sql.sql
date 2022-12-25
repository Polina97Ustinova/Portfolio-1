---Show table that is going to be used here
SELECT * FROM public."Finance_and_Education"

---testing
SELECT "Finance_and_Education"."OperatingIncome_1",
"Finance_and_Education"."EducationSectorNumber" FROM "Finance_and_Education" 

---testing to sort by or orger by OperatingIncome_1 from big to small and vice versa
SELECT "Finance_and_Education"."EducationSectorNumber", "Finance_and_Education"."OperatingIncome_1"  
FROM "Finance_and_Education"  
ORDER BY "Finance_and_Education"."EducationSectorNumber" ASC

SELECT "Finance_and_Education"."EducationSectorNumber", "Finance_and_Education"."OperatingIncome_1" 
FROM "Finance_and_Education"  
ORDER BY "Finance_and_Education"."OperatingIncome_1" DESC


---show only unique EducationSectorNumber
SELECT DISTINCT "Finance_and_Education"."EducationSectorNumber" 
FROM "Finance_and_Education" 

---Testing group by
SELECT "Finance_and_Education"."EducationSectorNumber", COUNT(*) 
FROM "Finance_and_Education"  GROUP BY "Finance_and_Education"."EducationSectorNumber" 

---Sum all the EducationSectorNumbers of their OperatingIncome_1
SELECT "Finance_and_Education"."EducationSectorNumber", 
SUM("Finance_and_Education"."OperatingIncome_1") AS Total
FROM "Finance_and_Education"  
GROUP BY "Finance_and_Education"."EducationSectorNumber"


---CHECK AVERAGE OF EducationSectorNumber of their OperatingIncome_1
SELECT "Finance_and_Education"."EducationSectorNumber", 
AVG("Finance_and_Education"."OperatingIncome_1") AS Average
FROM "Finance_and_Education"  
GROUP BY "Finance_and_Education"."EducationSectorNumber"
ORDER BY "Finance_and_Education"."EducationSectorNumber" DESC


---Sum all the EducationSectorNumbers rough sum of their Revenue 
SELECT "Finance_and_Education"."EducationSectorNumber", 
SUM(("Finance_and_Education"."OperatingIncome_1") + ("Finance_and_Education"."GrantsFromTheState_2")
	+ ("Finance_and_Education"."OtherGovernmentalGrants_3") 
	+ ("Finance_and_Education"."TuitionAndExamFees_4") + ("Finance_and_Education"."IncomeFromContractsWithThirdParties_5")
	+ ("Finance_and_Education"."OtherIncome_6") + ("Finance_and_Education"."OtherIncome_6")) AS Total_Revenue
FROM "Finance_and_Education"  
GROUP BY "Finance_and_Education"."EducationSectorNumber"


---Sum all the EducationSectorNumbers of their Cost 
SELECT "Finance_and_Education"."EducationSectorNumber", 
SUM(("Finance_and_Education"."OperatingCosts_7") + ("PersonnelCosts_8")
	+ ("Finance_and_Education"."Depreciation_9") +("Finance_and_Education"."HousingCosts_10")
	+ ("Finance_and_Education"."TotalOtherCosts_11") +("Finance_and_Education"."AdministrativeCosts_12")
	+ ("Finance_and_Education"."InventoryMaterialAndTeachingAid_13") +("Finance_and_Education"."Other_14")
	+ ("Finance_and_Education"."NetFinancialCosts2_16")) AS Total_Cost
FROM "Finance_and_Education"  
GROUP BY "Finance_and_Education"."EducationSectorNumber"


---Who gets more other income?  ---Who gets least other income?
SELECT "Finance_and_Education"."EducationSectorNumber", 
SUM(("Finance_and_Education"."OperatingIncome_1") + ("Finance_and_Education"."IncomeFromContractsWithThirdParties_5") + ("Finance_and_Education"."OtherIncome_6")) 
AS Total_Income
FROM "Finance_and_Education"  
GROUP BY "Finance_and_Education"."EducationSectorNumber" 


---Who costs the most?   ---Who costs the least? 
SELECT "Finance_and_Education"."EducationSectorNumber", 
SUM(("Finance_and_Education"."OperatingCosts_7") + ("Finance_and_Education"."PersonnelCosts_8") + ("Finance_and_Education"."HousingCosts_10") + ("Finance_and_Education"."TotalOtherCosts_11") + ("Finance_and_Education"."AdministrativeCosts_12")) 
AS Total_Cost
FROM "Finance_and_Education"  
GROUP BY "Finance_and_Education"."EducationSectorNumber" 


---Compare who cost the most and who gets most grands from the state? ---Compare who cost the most and who gets least grands from the state?
SELECT "Finance_and_Education"."EducationSectorNumber", 
SUM(("Finance_and_Education"."GrantsFromTheState_2") + ("Finance_and_Education"."OtherGovernmentalGrants_3"))
AS Total_Grand
FROM "Finance_and_Education"  
GROUP BY "Finance_and_Education"."EducationSectorNumber" 


---Sum all the EducationSectorNumbers of their profit 
SELECT "Finance_and_Education"."EducationSectorNumber", 
(sum(("Finance_and_Education"."OperatingIncome_1") + ("Finance_and_Education"."GrantsFromTheState_2")
	+ ("Finance_and_Education"."OtherGovernmentalGrants_3") 
	+ ("Finance_and_Education"."TuitionAndExamFees_4") + ("Finance_and_Education"."IncomeFromContractsWithThirdParties_5")
	+ ("Finance_and_Education"."OtherIncome_6") + ("Finance_and_Education"."OtherIncome_6"))
	- sum(("Finance_and_Education"."OperatingCosts_7") + ("PersonnelCosts_8")
	+ ("Finance_and_Education"."Depreciation_9") +("Finance_and_Education"."HousingCosts_10")
	+ ("Finance_and_Education"."TotalOtherCosts_11") +("Finance_and_Education"."AdministrativeCosts_12")
	+ ("Finance_and_Education"."InventoryMaterialAndTeachingAid_13") +("Finance_and_Education"."Other_14")
	+ ("Finance_and_Education"."NetFinancialCosts2_16"))) 
	AS Total_Profit
FROM "Finance_and_Education"    
GROUP BY "Finance_and_Education"."EducationSectorNumber"


----Percentege income / cost by EducationSectorNumber and Periods
SELECT "Finance_and_Education"."Periods", "Finance_and_Education"."EducationSectorNumber", 
((("Finance_and_Education"."OperatingIncome_1") + ("Finance_and_Education"."IncomeFromContractsWithThirdParties_5") + ("Finance_and_Education"."OtherIncome_6")) 
/(("Finance_and_Education"."OperatingCosts_7") + ("Finance_and_Education"."PersonnelCosts_8") + ("Finance_and_Education"."HousingCosts_10") + ("Finance_and_Education"."TotalOtherCosts_11") + ("Finance_and_Education"."AdministrativeCosts_12")) 
)*100 AS Percentage_Of_Profit
FROM "Finance_and_Education"   
GROUP BY "Finance_and_Education"."Periods", 
"Finance_and_Education"."EducationSectorNumber", 
"Finance_and_Education"."OperatingIncome_1", 
"Finance_and_Education"."IncomeFromContractsWithThirdParties_5",
"Finance_and_Education"."OtherIncome_6",
"Finance_and_Education"."OperatingCosts_7", 
"Finance_and_Education"."PersonnelCosts_8",
"Finance_and_Education"."HousingCosts_10",
"Finance_and_Education"."TotalOtherCosts_11",
"Finance_and_Education"."AdministrativeCosts_12"