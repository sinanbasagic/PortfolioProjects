CREATE TABLE movie_reviews (
    review_id INT PRIMARY KEY,
    movie_id INT,
    user_id INT,
    review_text VARCHAR(1000),
    rating FLOAT,
    review_date DATE
);
Insert into movie_reviews VALUES
(1, 101, 1001, 'Great movie, loved the plot and the acting was superb', 4.5, '2023-04-13'),
(2, 102, 1002, 'Disappointing movie, the plot was weak and the acting was mediocre', 2.0, '2023-04-13'),
(3, 103, 1003, 'One of the best movies I have ever seen, every minute was captivating', 5.0, '2023-04-12'),
(4, 104, 1004, 'Not my cup of tea, I found the movie boring and slow', 2.5, '2023-04-12'),
(5, 105, 1005, 'The special effects were amazing, but the plot was predictable', 3.5, '2023-04-11'),
(6, 106, 1006, 'A heartwarming story that left me in tears, highly recommended', 4.5, '2023-04-11'),
(7, 107, 1007, 'The movie had potential, but the ending was disappointing', 3.0, '2023-04-10'),
(8, 108, 1008, 'I loved this movie, the characters were relatable and the music was great', 4.0, '2023-04-10'),
(9, 109, 1009, 'A suspenseful thriller that kept me on the edge of my seat', 4.5, '2023-04-09'),
(10, 110, 1010, 'I thought this movie was okay, nothing really stood out to me', 3.0, '2023-04-09');

Select *
from [SQL Portfolio Project]..movie_reviews

Select AVG(Rating) as ReviewAverage
From movie_reviews

Select *
From movie_reviews
Order by review_date ASC;

Select movie_id, rating
From movie_reviews

Update movie_reviews
Set rating = 5.0
Where review_id = 1;

Update movie_reviews
Set rating = 4.5, review_text = 'this movie was amazing!'
Where review_id = 2;