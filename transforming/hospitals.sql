DROP TABLE hospitals_formatted;
CREATE TABLE hospitals_formatted

AS SELECT

	CAST(ProviderID AS INT),
	HospitalName,
	Address,
	City,
	State,
	ZipCode,
	CountyName,
	PhoneNumber,
	HospitalType,
	HospitalOwnership,
	EmergencyServices

FROM hospitals;
