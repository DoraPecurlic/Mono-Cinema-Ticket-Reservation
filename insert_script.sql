INSERT INTO Genre (type) VALUES ('Akcija'), ('Komedija'), ('Drama'), ('Horor');

INSERT INTO Movie (title, duration, genreId) VALUES 
    ('Fast and furious', 120, 1),    -- 1 je ID za 'Akcija'
    ('The Exorcist', 90, 4),        -- 4 je ID za 'Horor'
    ('The GodFather', 150, 3);      -- 3 je ID za 'Drama'

INSERT INTO CinemaHall (name, capacity) VALUES 
    ('Dvorana 1', 100), 
    ('Dvorana 2', 150),
    ('Dvorana 3', 170);

INSERT INTO Screening (movieId, cinemaHallId, screeningTime) VALUES 
    (1, 1, '2024-07-03 18:00:00'),  -- Fast and furious u Dvorana 1
    (2, 2, '2024-07-03 19:00:00'),  -- The Exorcist u Dvorana 2
    (3, 3, '2024-06-03 20:00:00');  -- The GodFather u Dvorana 3

INSERT INTO SeatAvailability (SeatNumber, ScreeningId, Available) VALUES 
    (1, 1, TRUE), 
    (2, 1, FALSE), 
    (3, 2, TRUE);

INSERT INTO SeatReservation (SeatAvailabilityId, ScreeningId) VALUES 
    (1, 1), 
    (3, 2);

INSERT INTO Costumer (Name, Surname) VALUES 
    ('Marko', 'Marković'), 
    ('Ana', 'Anić');

INSERT INTO PaymentMethod (Cash, Card) VALUES 
    (TRUE, FALSE), 
    (FALSE, TRUE);

INSERT INTO Ticket (CostumerId, SeatReservationId, PaymentMethodId, Price, PaymentDate) VALUES 
    (1, 1, 1, 100.00, '2024-06-10 20:00:00'), 
    (2, 2, 2, 150.00, '2024-06-11 21:00:00');
