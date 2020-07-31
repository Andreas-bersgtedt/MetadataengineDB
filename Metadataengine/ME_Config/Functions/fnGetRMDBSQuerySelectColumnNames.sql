-- =============================================
-- Author:      Andreas Bergstedt
-- Create Date: 2020-07-31
-- Description: String Substitution for spaces 
--				in column names to handle Parquet 
--				colum name limitations.
-- =============================================
CREATE FUNCTION [ME_Config].[fnGetRMDBSQuerySelectColumnNames]
(
        @EntityID BIGINT
)
RETURNS NVARCHAR(MAX)
AS
BEGIN
    -- Declare the return variable here
   DECLARE @ReturnSet NVARCHAR(MAX)=(
SELECT			CONVERT(NVARCHAR(MAX),(ISNULL	(
						STRING_AGG('['+REPLACE([MetadataObjectName],' ','_')+']=['+[MetadataObjectName]+']',',')
						WITHIN GROUP ( ORDER BY [MetadataObjectOrder]  ASC  )
						,'*'
						)))
FROM MEtadata.[object] 
Where EntityID IN (
SELECT DISTINCT EntityID 
FROM MEtadata.[object] 
where [MetadataObjectName] LIKE '% %'
) AND EntityID=@EntityID
)

    -- Return the result of the function
    RETURN @ReturnSet
END