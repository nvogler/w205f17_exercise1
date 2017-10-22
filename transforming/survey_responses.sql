CREATE TABLE survey_responses_formatted AS

SELECT
	ProviderID,
	CountyName,
	QuestionA,
	QuestionB,
	QuestionC,
	QuestionD,
	QuestionE,
	QuestionF,
	QuestionG,
	QuestionH,
	QuestionI,
	QuestionJ,
	QuestionK,
	QuestionL,
	QuestionM,
	QuestionN,
	QuestionO,
	QuestionP,
	QuestionQ,
	QuestionR,
	QuestionS,
	QuestionT,
	QuestionU,
	QuestionV,
	QuestionW,
	QuestionX,
	QuestionY,
	baseScore,
	ConsistencyScore
FROM survey_responses

