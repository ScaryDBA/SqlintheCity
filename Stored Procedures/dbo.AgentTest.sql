SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE   PROC [dbo].[AgentTest]
AS
SELECT * FROM dbo.Agent AS a
WHERE a.AgentId = 42;
GO
