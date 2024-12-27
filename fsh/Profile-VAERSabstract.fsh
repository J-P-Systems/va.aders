Profile: VAERSabstract
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSabstract
Title: "VAERS: abstract"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization."
* ^status = #draft
* ^abstract = true
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|6.1.0"
* patient and status and primarySource MS
* patient only Reference(VAERSPatient)
* status = #completed
* primarySource = false

Mapping: source-to-VAERSabstract
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSabstract
* patient -> "1876: reference from ADERS - 0_Pt_ICN_Full"
* status -> "2026: fixed value = #completed" "because of must-support"
* statusReason -> "2027: target not supported" "because of must-support: assume done"
* primarySource -> "2028: fixed value = false" "because of must-support"