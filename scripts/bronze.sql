-- Raw data ingested directly from ISM Ticketing Tool CSVs
CREATE TABLE bronze.ism_ticket_data (
    ticket_id NVARCHAR(50),
    agent_id INT,
    agent_name NVARCHAR(100),
    issue_category NVARCHAR(100),
    priority_level NVARCHAR(50), -- e.g., 'P1', 'P2', 'P3'
    open_time VARCHAR(50),       -- Raw string/datetime from system
    resolve_time VARCHAR(50),    -- Raw string/datetime from system
    source_name VARCHAR(50) DEFAULT 'ism_ticketing'
);
