DROP TABLE hospitals_f;
CREATE TABLE hospitals_f

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
