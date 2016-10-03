SELECT P.PeakName, R.RiverName, LOWER(P.PeakName) + RIGHT(LOWER(R.RiverName), LEN(R.RiverName) - 1) AS "Mix"
FROM Peaks AS P
CROSS JOIN Rivers AS R
WHERE RIGHT(LOWER(P.PeakName), 1) = LEFT(LOWER(R.RiverName), 1)
ORDER BY Mix