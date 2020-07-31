
Create Procedure [ME_Config].sp_insertActivityEvent
(
@EventSource varchar(50),
@EventSourceID varchar(100),
@EventActivityName varchar(100),
@EventMessage varchar(1000)

)
AS
BEGIN

INSERT INTO [ME_Config].[ActivityLog]
           ([EventSource]
           ,[EventSourceID]
           ,[EventActivityName]
           ,[EventUTCTimestamp]
           ,[EventMessage])
     VALUES
           (@EventSource,
           @EventSourceID,
           @EventActivityName,
           getUTCDATE(),
           @EventMessage
		   )
END