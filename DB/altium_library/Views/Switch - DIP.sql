

CREATE VIEW [dbo].[Switch - DIP] AS
SELECT TOP (100) PERCENT PartId,
       Value,
       COMMENT,
       MfrPartNo AS [Part Number],
       Manufacturer,
       Description,
       Supplier1 AS [Supplier 1],
       Supplier1PartNo AS [Supplier Part Number 1],
       FootprintRef AS [Footprint Ref],
       FootprintPath AS [Footprint Path],
       SymbolRef AS [Library Ref],
       SymbolPath AS [Library Path],
       ComponentLink1Description,
       ComponentLink1URL,
       ComponentLink2Description,
       ComponentLink2URL,
       ComponentLink3Description,
       ComponentLink3URL,
       Supplier2 AS [Supplier 2],
       Supplier2PartNo AS [Supplier Part Number 2],
       FootprintRef2 AS [Footprint Ref 2],
       FootprintPath2 AS [Footprint Path 2],
       FootprintRef3 AS [Footprint Ref 3],
       FootprintPath3 AS [Footprint Path 3],
       Price,
       TYPE,
       DevicePackage AS [Device Package],
	   PartStatus AS [Part Status],
       Series,
       Circuit,
	   NumberOfPositions AS [Number Of Positions],
	   CurrentRating AS [Current Rating],
	   Voltage,
	   ActuatorType AS [Actuator Type],
	   ActuatorLevel AS [Actuator Level],
	   ContactFinish AS [Contact Finish],
	   HeightAboveBoard AS [Height Above Board],
	   TerminationStyle AS [Termination Style],
	   SizeDimension AS [Length],
	   BodyMaterial AS [Body Material],
	   MechanicalLife AS [Mechanical Life],
	   ElectricalLife AS [Electrical Life],
	   TemperatureRange AS [Operating Temperature]
FROM dbo.Components
WHERE (ComponentType = 'SWITCH')
  AND (ComponentSubType = 'DIP')