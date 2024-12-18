-- Create table exactly matching CSV structure
CREATE TABLE vessel_master_data (
    id UUID PRIMARY KEY,
    vesselid VARCHAR(50),
    app_version_used VARCHAR(50),
    dwt NUMERIC(12,3),
    imo BIGINT,
    lbp NUMERIC(10,3),
    loa NUMERIC(10,3),
    eedi NUMERIC(10,3),
    flag VARCHAR(10),
    mmsi BIGINT,
    name VARCHAR(255),
    email VARCHAR(255),
    owner VARCHAR(255),
    design VARCHAR(255),
    height NUMERIC(10,3),
    breadth NUMERIC(10,3),
    call_sign VARCHAR(50),
    ice_class VARCHAR(50),
    max_draft NUMERIC(10,3),
    build_date DATE,
    fleet_group VARCHAR(255),
    lightweight NUMERIC(12,3),
    net_tonnage NUMERIC(12,3),
    power_shore VARCHAR(50),
    vessel_type VARCHAR(50),
    cargo_volume NUMERIC(12,3),
    crane_number INTEGER,
    design_draft NUMERIC(10,3),
    design_speed NUMERIC(10,3),
    tech_manager VARCHAR(255),
    gross_tonnage NUMERIC(12,3),
    minimum_draft NUMERIC(10,3),
    ae_consumption VARCHAR(50),
    max_safe_speed NUMERIC(10,3),
    min_safe_speed NUMERIC(10,3),
    port_of_registry VARCHAR(255),
    boiler_consumption VARCHAR(50),
    version INTEGER,
    platform VARCHAR(50),
    timestamp TIMESTAMP WITH TIME ZONE,
    tzoffset INTEGER,
    chemical_tanker VARCHAR(10),
    dynamic_positioning VARCHAR(10)
);

-- Import command
\copy vessel_master_data FROM 'C:/Users/Rishabh/OneDrive/Documents/db/Demo Data/Master_Data.csv' WITH ( FORMAT csv,
    HEADER true,
    DELIMITER ',',
    ENCODING 'UTF8',
    QUOTE '"'
);
\d vessel_master_data


INSERT INTO vessel_master_data (
    id, vesselid, app_version_used, dwt, imo, lbp, loa, eedi, flag, mmsi, name, email, owner, design, height, breadth, call_sign, ice_class, max_draft, build_date, fleet_group, lightweight, net_tonnage, power_shore, vessel_type, cargo_volume, crane_number, design_draft, design_speed, tech_manager, gross_tonnage, minimum_draft, ae_consumption, max_safe_speed, min_safe_speed, port_of_registry, boiler_consumption, version, platform, timestamp, tzoffset, chemical_tanker, dynamic_positioning
) VALUES (
    '164e150d-ac45-400e-88ed-eb8b6aadbe9f', '6169-213', '2.5.773', 54702, 1234567, 220.23, 225.13, 6, 'SG', 565460000, 'DEMO VESSEL', 'mail@example.com', NULL, 'Fully ref', 49.9, 36.64, '9V2733', 'no', 12.02, '2015-09-07', NULL, 19040, 18642, '0', 'lpg_tanker', 84052, 0, 11.62, 16.5, NULL, 47347, 3.58, 'ae_total_fuel', 16.5, 5.2, 'Singapore', 'boiler_total_fuel', 16, 'desktop', '2024-02-24 07:13:00+00', 28800, '0', '0'
);
