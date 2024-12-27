Profile: VAERSImmunizationvac1
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationvac1
Title: "VAERS Immunization[vac1]"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization."
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|6.1.0"
* occurrenceDateTime and vaccineCode.text and route.text and manufacturer.display and lotNumber and site and protocolApplied.doseNumberString and patient and status and primarySource MS
* patient only Reference(VAERSPatient)
* status = #completed
* primarySource = false

Mapping: source-to-VAERSImmunizationvac1
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationvac1
* occurrenceDateTime -> "1875: transform using concat(4_VacDate, 4_VacTime)"
* vaccineCode.text -> "1878: source value from ADERS - 17_Vac1_TypeBrand" "coding.display not really makes sense, since there is no code"
* route.text -> "1879: source value from ADERS - 17_Vac1_Route"
* manufacturer.display -> "1883: source value from ADERS - 17_Vac1_Mfgr"
* lotNumber -> "1884: source value from ADERS - 17_Vac1_Lot"
* site -> "1885: source value from ADERS - 17_Vac1_Site"
* protocolApplied.doseNumberString -> "1886: source value from ADERS - 17_Vac1_DoseInSeries"
* patient -> "1876: reference from ADERS - 0_Pt_ICN_Full"
* status -> "2026: fixed value = #completed" "because of must-support"
* statusReason -> "2027: target not supported" "because of must-support: assume done"
* primarySource -> "2028: fixed value = false" "because of must-support"