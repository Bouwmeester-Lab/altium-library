
CREATE VIEW [dbo].[Connector - Barrier Block]
AS
SELECT
  PartId,
  Comment,
  MfrPartNo AS [Part Number],
  Manufacturer,
  Description,
  Supplier1 AS [Supplier 1],
  Supplier1PartNo AS [Supplier Part Number 1],
  Supplier1 AS [Supplier 2],
  Supplier1PartNo AS [Supplier Part Number 2],
  Supplier1 AS [Supplier 3],
  Supplier1PartNo AS [Supplier Part Number 3],
  Supplier1 AS [Supplier 4],
  Supplier1PartNo AS [Supplier Part Number 4],
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
  FootprintRef2 AS [Footprint Ref 2],
  FootprintPath2 AS [Footprint Path 2],
  FootprintRef3 AS [Footprint Ref 3],
  FootprintPath3 AS [Footprint Path 3],
  Price,
  Type,
  Series,
  PartStatus AS [Part Status],
  NumberOfPorts AS [Number Of Circuits],
  NumberOfWireEntries AS [Number Of Wire Entries],
  Pitch,
  NumberOfLevels AS [Number Of Rows],
  CurrentRating AS [Current Rating],
  Voltage,
  WireGauge AS [Wire Gauge],
  TopTermination AS [Top Termination],
  BottomTermination AS [Bottom Termination],
  BarrierType AS [Barrier Type],
  Features,
  Colour,
  TerminalScrewMaterial AS [Terminal Screw Material],
  TerminalScrewFinish AS [Terminal Screw Finish],
  MountingType AS [Mounting Type],
  TemperatureRange AS [Operating Temperature]
FROM dbo.Components
WHERE (ComponentType = 'CONN')
AND (ComponentSubType = 'BAR')