CREATE EXTERNAL DATA SOURCE [Metadataengine]
    WITH (
    TYPE = BLOB_STORAGE,
    LOCATION = N'https://metadatalake001.blob.core.windows.net/metadataengine',
    CREDENTIAL = [metadatalake]
    );



