SELECT P.PeakName, R.RiverName, LOWER(P.PeakName) + RIGHT(LOWER(R.RiverName), LEN(R.RiverName) - 1) AS "Mix"
FROM Peaks AS P
CROSS JOIN Rivers AS R
WHERE RIGHT(P.PeakName, 1) = LEFT(R.RiverName, 1)
ORDER BY Mix

--Second version using SUBSTRING
SELECT P.PeakName, R.RiverName, LOWER(P.PeakName) + SUBSTRING(LOWER(R.RiverName), 2, LEN(R.RiverName) - 1) AS "Mix"
FROM Peaks AS P
CROSS JOIN Rivers AS R
WHERE RIGHT(P.PeakName, 1) = LEFT(R.RiverName, 1)
ORDER BY Mix
