-- update time of screening "The Godfather"
UPDATE Screening 
SET ScreeningTime = '2024-06-03 21:00:00' 
WHERE MovieId = 3 AND CinemaHallId = 3;


--update pricce of ticket
UPDATE Ticket 
SET Price = 190.00 
WHERE SeatReservationId IN (
    SELECT Id 
    FROM SeatReservation 
    WHERE ScreeningId = 2
);

