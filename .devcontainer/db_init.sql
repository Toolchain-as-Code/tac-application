CREATE TABLE bachelor_thesis (
    id SERIAL PRIMARY KEY,
    author VARCHAR(100) NOT NULL,
    title VARCHAR(255) NOT NULL,
    publication_date DATE NOT NULL
);

INSERT INTO bachelor_thesis
    (author, title, publication_date)
VALUES
    ('Jan Rother',
     'From the IDE to the Service: Toolchain as Code Strategy to Overcome the Development-Deployment-Gap in Application Management at a Major Automotive Manufacturer',
     '2024-12-09');
