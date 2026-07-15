-- Dimensions
CREATE TABLE gold.dim_uob_agent (
    agent_key INT IDENTITY(1,1) PRIMARY KEY,
    agent_id INT,
    agent_name NVARCHAR(100)
);

CREATE TABLE gold.dim_ticket_category (
    category_key INT IDENTITY(1,1) PRIMARY KEY,
    issue_category NVARCHAR(100),
    ivr_deflection_candidate INT -- Flag (1 or 0) for issues pushed to IVR
);

-- Fact Table for Excel Connection
CREATE TABLE gold.fact_uob_tickets (
    fact_key INT IDENTITY(1,1) PRIMARY KEY,
    ticket_id NVARCHAR(50),
    agent_key INT FOREIGN KEY REFERENCES gold.dim_uob_agent(agent_key),
    category_key INT FOREIGN KEY REFERENCES gold.dim_ticket_category(category_key),
    open_datetime DATETIME,
    resolve_datetime DATETIME,
    resolution_time_hours INT,
    sla_breached_flag INT,
    source_name VARCHAR(50)
);
