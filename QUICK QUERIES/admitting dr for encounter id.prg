SELECT ;ADMITTING DR FROM ENCOUNTER ID
	 E_ENCNTR_PRSNL_R_DISP = UAR_GET_CODE_DISPLAY(E.ENCNTR_PRSNL_R_CD)
	, P.NAME_FULL_FORMATTED
	, ADMITTING_DR_PID = E.PRSNL_PERSON_ID
	, E.ENCNTR_ID

FROM
	ENCNTR_PRSNL_RELTN   E
	, (LEFT JOIN PRSNL P ON P.PERSON_ID = E.PRSNL_PERSON_ID)
PLAN
	E	
JOIN
	P
WHERE
	E.ENCNTR_ID = xxxxxxx ; Enter Encounter Id
	AND
	E.ENCNTR_PRSNL_R_CD = 1116 ; this filters for addmitting DR'S

WITH MAXREC = 100, NOCOUNTER, SEPARATOR=" ", FORMAT
