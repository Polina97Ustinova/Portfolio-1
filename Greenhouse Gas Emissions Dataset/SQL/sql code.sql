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
---Testing group by EducationSectorNumber
SELECT "asset_enteric-fermentation_emissions"."iso3_country",
SUM("asset_enteric-fermentation_emissions"."emissions_quantity") AS Total_Emissions
FROM "asset_enteric-fermentation_emissions"  
GROUP BY "asset_enteric-fermentation_emissions"."iso3_country" 

SELECT "asset_manure-management_emissions"."iso3_country",
SUM("asset_manure-management_emissions"."emissions_quantity") AS Total_Emissions
FROM "asset_manure-management_emissions"
GROUP BY "asset_manure-management_emissions"."iso3_country" 

SELECT "country_cropland-fires_emissions"."iso3_country",
SUM("country_cropland-fires_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_cropland-fires_emissions"
GROUP BY "country_cropland-fires_emissions"."iso3_country" 
ORDER BY "country_cropland-fires_emissions"."iso3_country"  ASC

SELECT "country_enteric-fermentation_emissions"."iso3_country",
SUM("country_enteric-fermentation_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_enteric-fermentation_emissions"
GROUP BY "country_enteric-fermentation_emissions"."iso3_country" 
ORDER BY "country_enteric-fermentation_emissions"."iso3_country" ASC

SELECT "country_manure-management_emissions"."iso3_country",
SUM("country_manure-management_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_manure-management_emissions"
GROUP BY "country_manure-management_emissions"."iso3_country" 
ORDER BY "country_manure-management_emissions"."iso3_country"  ASC

SELECT "country_other-agricultural-soil-emissions_emissions"."iso3_country",
SUM("country_other-agricultural-soil-emissions_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_other-agricultural-soil-emissions_emissions"
GROUP BY "country_other-agricultural-soil-emissions_emissions"."iso3_country" 
ORDER BY "country_other-agricultural-soil-emissions_emissions"."iso3_country" ASC

SELECT "country_rice-cultivation_emissions"."iso3_country",
SUM("country_rice-cultivation_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_rice-cultivation_emissions"
GROUP BY "country_rice-cultivation_emissions"."iso3_country" 
ORDER BY "country_rice-cultivation_emissions"."iso3_country" ASC


---Buildings
SELECT "country_other-onsite-fuel-usage_emissions"."iso3_country",
SUM("country_other-onsite-fuel-usage_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_other-onsite-fuel-usage_emissions"
GROUP BY "country_other-onsite-fuel-usage_emissions"."iso3_country" 
ORDER BY "country_other-onsite-fuel-usage_emissions"."iso3_country" ASC

SELECT "country_residential-and-commercial-onsite-fuel-usage_emissions"."iso3_country",
SUM("country_residential-and-commercial-onsite-fuel-usage_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_residential-and-commercial-onsite-fuel-usage_emissions"
GROUP BY "country_residential-and-commercial-onsite-fuel-usage_emissions"."iso3_country" 
ORDER BY "country_residential-and-commercial-onsite-fuel-usage_emissions"."iso3_country" ASC


---Fluorinated_gases
SELECT "country_fluorinated-gases_emissions"."iso3_country",
SUM("country_fluorinated-gases_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_fluorinated-gases_emissions"
GROUP BY "country_fluorinated-gases_emissions"."iso3_country" 
ORDER BY "country_fluorinated-gases_emissions"."iso3_country" ASC


---Fossil_fuel_operations
SELECT "asset_coal-mining_emissions"."iso3_country",
SUM("asset_coal-mining_emissions"."emissions_quantity") AS Total_Emissions
FROM "asset_coal-mining_emissions"
GROUP BY "asset_coal-mining_emissions"."iso3_country" 
ORDER BY "asset_coal-mining_emissions"."iso3_country"  ASC

SELECT "asset_oil-and-gas-production-and-transport_emissions"."iso3_country",
SUM("asset_oil-and-gas-production-and-transport_emissions"."emissions_quantity") AS Total_Emissions
FROM "asset_oil-and-gas-production-and-transport_emissions"
GROUP BY "asset_oil-and-gas-production-and-transport_emissions"."iso3_country" 
ORDER BY "asset_oil-and-gas-production-and-transport_emissions"."iso3_country" ASC

SELECT "asset_oil-and-gas-refining_emissions"."iso3_country",
SUM("asset_oil-and-gas-refining_emissions"."emissions_quantity") AS Total_Emissions
FROM "asset_oil-and-gas-refining_emissions"
GROUP BY "asset_oil-and-gas-refining_emissions"."iso3_country" 
ORDER BY "asset_oil-and-gas-refining_emissions"."iso3_country" ASC

SELECT "country_coal-mining_emissions"."iso3_country",
SUM("country_coal-mining_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_coal-mining_emissions"
GROUP BY "country_coal-mining_emissions"."iso3_country" 
ORDER BY "country_coal-mining_emissions"."iso3_country" ASC


SELECT "country_oil-and-gas-production-and-transport_emissions"."iso3_country",
SUM("country_oil-and-gas-production-and-transport_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_oil-and-gas-production-and-transport_emissions"
GROUP BY "country_oil-and-gas-production-and-transport_emissions"."iso3_country"
ORDER BY "country_oil-and-gas-production-and-transport_emissions"."iso3_country" ASC

SELECT "country_oil-and-gas-refining_emissions"."iso3_country",
SUM("country_oil-and-gas-refining_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_oil-and-gas-refining_emissions"
GROUP BY "country_oil-and-gas-refining_emissions"."iso3_country"
ORDER BY "country_oil-and-gas-refining_emissions"."iso3_country" ASC

SELECT "country_other-fossil-fuel-operations_emissions"."iso3_country",
SUM("country_other-fossil-fuel-operations_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_other-fossil-fuel-operations_emissions"
GROUP BY "country_other-fossil-fuel-operations_emissions"."iso3_country"
ORDER BY "country_other-fossil-fuel-operations_emissions"."iso3_country" ASC

SELECT "country_solid-fuel-transformation_emissions"."iso3_country",
SUM("country_solid-fuel-transformation_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_solid-fuel-transformation_emissions"
GROUP BY "country_solid-fuel-transformation_emissions"."iso3_country"
ORDER BY "country_solid-fuel-transformation_emissions"."iso3_country" ASC


---Manufacturing
SELECT "asset_aluminum_emissions"."iso3_country",
SUM("asset_aluminum_emissions"."emissions_quantity") AS Total_Emissions
FROM "asset_aluminum_emissions"
GROUP BY "asset_aluminum_emissions"."iso3_country" 

SELECT "asset_cement_emissions"."iso3_country",
SUM("asset_cement_emissions"."emissions_quantity") AS Total_Emissions
FROM "asset_cement_emissions"
GROUP BY "asset_cement_emissions"."iso3_country" 

SELECT "asset_steel_emissions"."iso3_country",
SUM("asset_steel_emissions"."emissions_quantity") AS Total_Emissions
FROM "asset_steel_emissions"
GROUP BY "asset_steel_emissions"."iso3_country" 

SELECT "country_aluminum_emissions"."iso3_country",
SUM("country_aluminum_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_aluminum_emissions"
GROUP BY "country_aluminum_emissions"."iso3_country" 


SELECT "country_cement_emissions"."iso3_country",
SUM("country_cement_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_cement_emissions"
GROUP BY "country_cement_emissions"."iso3_country" 

SELECT "country_chemicals_emissions"."iso3_country",
SUM("country_chemicals_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_chemicals_emissions"
GROUP BY "country_chemicals_emissions"."iso3_country" 

SELECT "country_other-manufacturing_emissions"."iso3_country",
SUM("country_other-manufacturing_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_other-manufacturing_emissions"
GROUP BY "country_other-manufacturing_emissions"."iso3_country" 

SELECT "country_pulp-and-paper_emissions"."iso3_country",
SUM("country_pulp-and-paper_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_pulp-and-paper_emissions"
GROUP BY "country_pulp-and-paper_emissions"."iso3_country" 

SELECT "country_steel_emissions"."iso3_country",
SUM("country_steel_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_steel_emissions"
GROUP BY "country_steel_emissions"."iso3_country" 

---Mineral_extraction
SELECT "asset_bauxite-mining_emissions"."iso3_country",
SUM("asset_bauxite-mining_emissions"."emissions_quantity") AS Total_Emissions
FROM "asset_bauxite-mining_emissions"
GROUP BY "asset_bauxite-mining_emissions"."iso3_country" 

SELECT "asset_copper-mining_emissions"."iso3_country",
SUM("asset_copper-mining_emissions"."emissions_quantity") AS Total_Emissions
FROM "asset_copper-mining_emissions"
GROUP BY "asset_copper-mining_emissions"."iso3_country" 

SELECT "asset_iron-mining_emissions"."iso3_country",
SUM("asset_iron-mining_emissions"."emissions_quantity") AS Total_Emissions
FROM "asset_iron-mining_emissions"
GROUP BY "asset_iron-mining_emissions"."iso3_country" 

SELECT "country_bauxite-mining_emissions"."iso3_country",
SUM("country_bauxite-mining_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_bauxite-mining_emissions"
GROUP BY "country_bauxite-mining_emissions"."iso3_country" 

SELECT "country_copper-mining_emissions"."iso3_country",
SUM("country_copper-mining_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_copper-mining_emissions"
GROUP BY "country_copper-mining_emissions"."iso3_country" 

SELECT "country_iron-mining_emissions"."iso3_country",
SUM("country_iron-mining_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_iron-mining_emissions"
GROUP BY "country_iron-mining_emissions"."iso3_country" 

SELECT "country_rock-quarrying_emissions"."iso3_country",
SUM("country_rock-quarrying_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_rock-quarrying_emissions"
GROUP BY "country_rock-quarrying_emissions"."iso3_country" 

SELECT "country_sand-quarrying_emissions"."iso3_country",
SUM("country_sand-quarrying_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_sand-quarrying_emissions"
GROUP BY "country_sand-quarrying_emissions"."iso3_country"

---Power
SELECT "asset_electricity-generation_emissions"."iso3_country",
SUM("asset_electricity-generation_emissions"."emissions_quantity") AS Total_Emissions
FROM "asset_electricity-generation_emissions"
GROUP BY "asset_electricity-generation_emissions"."iso3_country" 

SELECT "country_electricity-generation_emissions"."iso3_country",
SUM("country_electricity-generation_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_electricity-generation_emissions"
GROUP BY "country_electricity-generation_emissions"."iso3_country" 

SELECT "country_other-energy-use_emissions"."iso3_country",
SUM("country_other-energy-use_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_other-energy-use_emissions"
GROUP BY "country_other-energy-use_emissions"."iso3_country" 


---Waste
SELECT "asset_solid-waste-disposal_emissions"."iso3_country",
SUM("asset_solid-waste-disposal_emissions"."emissions_quantity") AS Total_Emissions
FROM "asset_solid-waste-disposal_emissions"
GROUP BY "asset_solid-waste-disposal_emissions"."iso3_country" 

SELECT "country_biological-treatment-of"."iso3_country",
SUM("country_biological-treatment-of"."emissions_quantity") AS Total_Emissions
FROM "country_biological-treatment-of"
GROUP BY "country_biological-treatment-of"."iso3_country" 

SELECT "country_incineration-and-open-burning-of-waste"."iso3_country",
SUM("country_incineration-and-open-burning-of-waste"."emissions_quantity") AS Total_Emissions
FROM "country_incineration-and-open-burning-of-waste"
GROUP BY "country_incineration-and-open-burning-of-waste"."iso3_country" 

SELECT "country_solid-waste-disposal_emissions"."iso3_country",
SUM("country_solid-waste-disposal_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_solid-waste-disposal_emissions"
GROUP BY "country_solid-waste-disposal_emissions"."iso3_country" 

SELECT "country_wastewater-treatment-and-discharge_emissions"."iso3_country",
SUM("country_wastewater-treatment-and-discharge_emissions"."emissions_quantity") AS Total_Emissions
FROM "country_wastewater-treatment-and-discharge_emissions"
GROUP BY "country_wastewater-treatment-and-discharge_emissions"."iso3_country" 

