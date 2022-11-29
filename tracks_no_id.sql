SELECT 
    t.Name AS TrackName,
    a.Title AS AlbumName,
    g.Name AS GenreType
FROM Track t
JOIN Album a ON t.AlbumId = a.AlbumId
JOIN Genre g ON t.GenreId = g.GenreId

