---Show table that is going to be used here
---Agriculture
SELECT * FROM public."asset_enteric-fermentation_emissions"
SELECT * FROM public."asset_manure-management_emissions"
SELECT * FROM public."country_cropland-fires_emissions"
SELECT * FROM public."country_enteric-fermentation_emissions"
SELECT * FROM public."country_manure-management_emissions"
SELECT * FROM public."country_other-agricultural-soil-emissions_emissions"
SELECT * FROM public."country_rice-cultivation_emissions"

---Buildings
SELECT * FROM public."country_other-onsite-fuel-usage_emissions"
SELECT * FROM public."country_residential-and-commercial-onsite-fuel-usage_emissions"

---Fluorinated_gases
SELECT * FROM public."country_fluorinated-gases_emissions"

---Fossil_fuel_operations
SELECT * FROM public."asset_coal-mining_emissions"
SELECT * FROM public."asset_oil-and-gas-production-and-transport_emissions"
SELECT * FROM public."asset_oil-and-gas-refining_emissions"
SELECT * FROM public."country_coal-mining_emissions"
SELECT * FROM public."country_oil-and-gas-production-and-transport_emissions"
SELECT * FROM public."country_oil-and-gas-refining_emissions"
SELECT * FROM public."country_other-fossil-fuel-operations_emissions"
SELECT * FROM public."country_solid-fuel-transformation_emissions"

---Manufacturing
SELECT * FROM public."asset_aluminum_emissions"
SELECT * FROM public."asset_cement_emissions"
SELECT * FROM public."asset_steel_emissions"
SELECT * FROM public."country_aluminum_emissions"
SELECT * FROM public."country_cement_emissions"
SELECT * FROM public."country_chemicals_emissions"
SELECT * FROM public."country_other-manufacturing_emissions"
SELECT * FROM public."country_pulp-and-paper_emissions"
SELECT * FROM public."country_steel_emissions"

---Mineral_extraction
SELECT * FROM public."asset_bauxite-mining_emissions"
SELECT * FROM public."asset_copper-mining_emissions"
SELECT * FROM public."asset_iron-mining_emissions"
SELECT * FROM public."country_bauxite-mining_emissions"
SELECT * FROM public."country_copper-mining_emissions"
SELECT * FROM public."country_iron-mining_emissions"
SELECT * FROM public."country_rock-quarrying_emissions"
SELECT * FROM public."country_sand-quarrying_emissions"

---Power
SELECT * FROM public."asset_electricity-generation_emissions"
SELECT * FROM public."country_electricity-generation_emissions"
SELECT * FROM public."country_other-energy-use_emissions"

---Waste
SELECT * FROM public."asset_solid-waste-disposal_emissions"
SELECT * FROM public."country_biological-treatment-of"
SELECT * FROM public."country_incineration-and-open-burning-of-waste"
SELECT * FROM public."country_solid-waste-disposal_emissions"
SELECT * FROM public."country_wastewater-treatment-and-discharge_emissions"


--- Country and emissions group up: 
---Agriculture
SELECT "country_cropland-fires_emissions"."iso3_country", 
"country_cropland-fires_emissions"."total_emissions" 
+ "country_enteric-fermentation_emissions"."total_emissions"
+ "country_manure-management_emissions"."total_emissions"
+ "country_other-agricultural-soil-emissions_emissions"."total_emissions"
+ "country_rice-cultivation_emissions"."total_emissions"
as Total 
FROM "country_cropland-fires_emissions"  
INNER JOIN "country_enteric-fermentation_emissions"
ON "country_cropland-fires_emissions"."ID" = "country_enteric-fermentation_emissions"."ID"
INNER JOIN "country_manure-management_emissions"
ON "country_cropland-fires_emissions"."ID" = "country_manure-management_emissions"."ID"
INNER JOIN "country_other-agricultural-soil-emissions_emissions"
ON "country_cropland-fires_emissions"."ID" = "country_other-agricultural-soil-emissions_emissions"."ID"
INNER JOIN "country_rice-cultivation_emissions"
ON "country_cropland-fires_emissions"."ID" = "country_rice-cultivation_emissions"."ID"


---Buildings
SELECT "country_other-onsite-fuel-usage_emissions"."iso3_country", 
"country_other-onsite-fuel-usage_emissions"."total_emissions" 
+ "country_residential-and-commercial-onsite-fuel-usage_emissions"
."total_emissions"
as Total 
FROM "country_other-onsite-fuel-usage_emissions"
INNER JOIN "country_residential-and-commercial-onsite-fuel-usage_emissions"
ON "country_other-onsite-fuel-usage_emissions"."ID" = "country_residential-and-commercial-onsite-fuel-usage_emissions"."ID"


---Fluorinated_gases
SELECT * FROM public."country_fluorinated-gases_emissions"


---Fossil_fuel_operations
SELECT "country_coal-mining_emissions"."iso3_country", 
"country_coal-mining_emissions"."total_emissions" 
+ "country_oil-and-gas-production-and-transport_emissions"."total_emissions"
+ "country_oil-and-gas-refining_emissions"."total_emissions"
+ "country_other-fossil-fuel-operations_emissions"."total_emissions"
+ "country_solid-fuel-transformation_emissions"."total_emissions"
as Total 
FROM "country_coal-mining_emissions"
INNER JOIN "country_oil-and-gas-production-and-transport_emissions"
ON "country_coal-mining_emissions"."ID" = 
"country_oil-and-gas-production-and-transport_emissions"."ID"
INNER JOIN "country_oil-and-gas-refining_emissions"
ON "country_coal-mining_emissions"."ID" = 
"country_oil-and-gas-refining_emissions"."ID"
INNER JOIN "country_other-fossil-fuel-operations_emissions"
ON "country_coal-mining_emissions"."ID" = 
"country_other-fossil-fuel-operations_emissions"."ID"
INNER JOIN "country_solid-fuel-transformation_emissions"
ON "country_coal-mining_emissions"."ID" = 
"country_solid-fuel-transformation_emissions"."ID"


---Manufacturing
SELECT "country_aluminum_emissions"."iso3_country", 
"country_aluminum_emissions"."total_emissions" 
+ "country_cement_emissions"."total_emissions"
+ "country_chemicals_emissions"."total_emissions"
+ "country_other-manufacturing_emissions"."total_emissions"
+ "country_pulp-and-paper_emissions"."total_emissions"
+ "country_steel_emissions"."total_emissions"
as Total 
FROM "country_aluminum_emissions"
INNER JOIN "country_cement_emissions"
ON "country_aluminum_emissions"."ID" = 
"country_cement_emissions"."ID"
INNER JOIN "country_chemicals_emissions"
ON "country_aluminum_emissions"."ID" = 
"country_chemicals_emissions"."ID"
INNER JOIN "country_other-manufacturing_emissions"
ON "country_aluminum_emissions"."ID" = 
"country_other-manufacturing_emissions"."ID"
INNER JOIN "country_pulp-and-paper_emissions"
ON "country_aluminum_emissions"."ID" = 
"country_pulp-and-paper_emissions"."ID"
INNER JOIN "country_steel_emissions"
ON "country_aluminum_emissions"."ID" = 
"country_steel_emissions"."ID"


---Mineral_extraction
SELECT "country_bauxite-mining_emissions"."iso3_country", 
"country_bauxite-mining_emissions"."total_emissions" 
+ "country_copper-mining_emissions"."total_emissions"
+ "country_iron-mining_emissions"."total_emissions"
+ "country_rock-quarrying_emissions"."total_emissions"
+ "country_sand-quarrying_emissions"."total_emissions"
as Total 
FROM "country_bauxite-mining_emissions"
INNER JOIN "country_copper-mining_emissions"
ON "country_bauxite-mining_emissions"."ID" = 
"country_copper-mining_emissions"."ID"
INNER JOIN "country_iron-mining_emissions"
ON "country_bauxite-mining_emissions"."ID" = 
"country_iron-mining_emissions"."ID"
INNER JOIN "country_rock-quarrying_emissions"
ON "country_bauxite-mining_emissions"."ID" = 
"country_rock-quarrying_emissions"."ID"
INNER JOIN "country_sand-quarrying_emissions"
ON "country_bauxite-mining_emissions"."ID" = 
"country_sand-quarrying_emissions"."ID"


---Power
SELECT "country_electricity-generation_emissions"."iso3_country", 
"country_electricity-generation_emissions"."total_emissions" 
+ "country_other-energy-use_emissions"."total_emissions"
as Total 
FROM "country_electricity-generation_emissions"
INNER JOIN "country_other-energy-use_emissions"
ON "country_electricity-generation_emissions"."ID" = 
"country_other-energy-use_emissions"."ID"


---Waste
SELECT "country_biological-treatment-of"."iso3_country", 
"country_biological-treatment-of"."total_emissions" 
+ "country_incineration-and-open-burning-of-waste"."total_emissions"
+ "country_solid-waste-disposal_emissions"."total_emissions"
+ "country_wastewater-treatment-and-discharge_emissions"."total_emissions"
as Total 
FROM "country_biological-treatment-of"
INNER JOIN "country_incineration-and-open-burning-of-waste"
ON "country_biological-treatment-of"."ID" = 
"country_incineration-and-open-burning-of-waste"."ID"
INNER JOIN "country_solid-waste-disposal_emissions"
ON "country_biological-treatment-of"."ID" = 
"country_solid-waste-disposal_emissions"."ID"
INNER JOIN "country_wastewater-treatment-and-discharge_emissions"
ON "country_biological-treatment-of"."ID" = 
"country_wastewater-treatment-and-discharge_emissions"."ID"