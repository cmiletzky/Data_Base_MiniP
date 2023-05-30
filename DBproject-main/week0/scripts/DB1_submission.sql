CREATE TABLE area
(
  areaId NUMERIC(3) NOT NULL,
  areaName VARCHAR(20) NOT NULL,
  PRIMARY KEY (areaId)
);

CREATE TABLE city
(
  cityName VARCHAR(20) NOT NULL,
  areaId NUMERIC(3) NOT NULL,
  PRIMARY KEY (cityName),
  FOREIGN KEY (areaId) REFERENCES area(areaId)
);

CREATE TABLE agent
(
  agentID NUMERIC(9) NOT NULL,
  agentName VARCHAR(20),
  Rating NUMERIC(2),
  HireYear NUMERIC(4),
  bossID NUMERIC(9),
  salary FLOAT,
  areaId NUMERIC(3) NOT NULL,
  PRIMARY KEY (agentID),
  FOREIGN KEY (areaId) REFERENCES area(areaId)
);

CREATE TABLE client
(
  clientID NUMERIC(9) NOT NULL,
  clientName VARCHAR(20),
  phoneNr VARCHAR(10),
  Address VARCHAR(25),
  cityName VARCHAR(20) NOT NULL,
  agentID NUMERIC(9) NOT NULL,
  PRIMARY KEY (clientID),
  FOREIGN KEY (cityName) REFERENCES city(cityName),
  FOREIGN KEY (agentID) REFERENCES agent(agentID)
);

CREATE TABLE schedule
(
  agentId NUMERIC(9) NOT NULL,
  clientid NUMERIC(9) NOT NULL,
  meetingTime DATE,
  agentID NUMERIC(9) NOT NULL,
  clientID NUMERIC(9) NOT NULL,
  PRIMARY KEY (agentId, clientid, meetingTime),
  FOREIGN KEY (agentID) REFERENCES agent(agentID),
  FOREIGN KEY (clientID) REFERENCES client(clientID)
);