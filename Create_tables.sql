CREATE TABLE Genre (
    Id INT PRIMARY KEY,
    Type VARCHAR(30) NOT NULL
);



CREATE TABLE Movie (
    Id INT PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    Duration INT NOT NULL,
    GenreId INT,
    FOREIGN KEY (GenreId) REFERENCES Genre(id)
);

CREATE TABLE CinemaHall (
    Id INT PRIMARY KEY,
    Name VARCHAR(10) NOT NULL,
    Capacity INT NOT NULL
  
);

CREATE TABLE Screening (
    Id INT PRIMARY KEY,
    ScreeningTime TIMESTAMP  NOT NULL,
    CinemaHallId INT,
    MovieId INT,
    FOREIGN KEY (CinemaHallId) REFERENCES CinemaHall(id),
	FOREIGN KEY (MovieId) REFERENCES Movie(id)
);



CREATE TABLE SeatAvailability (
    Id INT PRIMARY KEY,
    SeatNumber INT,
    ScreeningId INT,
	Available BOOLEAN,
    FOREIGN KEY (ScreeningId) REFERENCES Screening(id)
);


CREATE TABLE SeatReservation (
    Id INT PRIMARY KEY,
    SeatAvailabilityId INT,
    ScreeningId INT,
    FOREIGN KEY (ScreeningId) REFERENCES Screening(id),
	FOREIGN KEY (SeatAvailabilityId) REFERENCES SeatAvailability(id)
);

CREATE TABLE Costumer(
	Id INT PRIMARY KEY,
	Name VARCHAR(15),
	Surname VARCHAR(30)
);

CREATE TABLE PaymentMethod(
	Id INT PRIMARY KEY,
	Cash BOOLEAN,
	Card BOOLEAN
);

CREATE TABLE Ticket (
    Id INT PRIMARY KEY,
    CostumerId INT,
	SeatReservationId INT,
    PaymentMethodId INT,
	Price DECIMAL(10, 2) NOT NULL,
	paymentDate TIMESTAMP NOT NULL,
    FOREIGN KEY (CostumerId) REFERENCES Costumer(id),
	FOREIGN KEY (SeatReservationId) REFERENCES SeatReservation(id),
	FOREIGN KEY (PaymentMethodId) REFERENCES PaymentMethod(id)
);






