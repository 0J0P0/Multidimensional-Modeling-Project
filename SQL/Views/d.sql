CREATE VIEW d
AS
  (
  SELECT a.ID, t.ID,
    SUM()*1000 as MRRh,
    SUM()*1000 as MRRc
  FROM AircraftDimension a, TemporalDimension t, LogBookMetrics lbm
  WHERE a.ID = lbm.aircraftID AND t.ID = lbm.timeID
  GROUP BY a.ID, t.ID
  ORDER BY a.ID, t.ID
) WITH CHECK OPTION;