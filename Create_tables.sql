CREATE TABLE Genre (
    Id SERIAL PRIMARY KEY,
    Type VARCHAR(30) NOT NULL
);



CREATE TABLE Movie (
    Id SERIAL PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    Duration INT NOT NULL,
    GenreId INT NOT NULL,
    FOREIGN KEY (GenreId) REFERENCES Genre(id)
);

CREATE TABLE CinemaHall (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(10) NOT NULL,
    Capacity INT NOT NULL
  
);

CREATE TABLE Screening (
    Id SERIAL PRIMARY KEY,
    ScreeningTime TIMESTAMP  NOT NULL,
    CinemaHallId INT NOT NULL,
    MovieId INT NOT NULL,
    FOREIGN KEY (CinemaHallId) REFERENCES CinemaHall(id),
	FOREIGN KEY (MovieId) REFERENCES Movie(id)
);



CREATE TABLE SeatAvailability (
    Id SERIAL  PRIMARY KEY,
    SeatNumber INT NOT NULL,
    ScreeningId INT NOT NULL,
	Available BOOLEAN,
    FOREIGN KEY (ScreeningId) REFERENCES Screening(id)
);


CREATE TABLE SeatReservation (
    Id SERIAL  PRIMARY KEY,
    SeatAvailabilityId INT NOT NULL,
    ScreeningId INT NOT NULL,
    FOREIGN KEY (ScreeningId) REFERENCES Screening(id),
	FOREIGN KEY (SeatAvailabilityId) REFERENCES SeatAvailability(id)
);

CREATE TABLE Costumer(
	Id SERIAL  PRIMARY KEY,
	Name VARCHAR(15),
	Surname VARCHAR(30)
);

CREATE TABLE PaymentMethod(
	Id SERIAL  PRIMARY KEY,
	Cash BOOLEAN,
	Card BOOLEAN
);

CREATE TABLE Ticket (
    Id SERIAL  PRIMARY KEY,
    CostumerId INT NOT NULL,
	SeatReservationId INT NOT NULL,
    PaymentMethodId INT NOT NULL,
	Price DECIMAL(10, 2) NOT NULL,
	paymentDate TIMESTAMP NOT NULL,
    FOREIGN KEY (CostumerId) REFERENCES Costumer(id),
	FOREIGN KEY (SeatReservationId) REFERENCES SeatReservation(id),
	FOREIGN KEY (PaymentMethodId) REFERENCES PaymentMethod(id)
);





