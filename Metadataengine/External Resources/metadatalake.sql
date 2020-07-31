CREATE EXTERNAL DATA SOURCE [metadatalake]
    WITH (
    TYPE = BLOB_STORAGE,
    LOCATION = N'https://metadatalake001.blob.core.windows.net/metadataengine',
    CREDENTIAL = [metadatalakesas]
    );



