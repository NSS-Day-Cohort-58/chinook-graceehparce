SELECT 
    Name,
    COUNT(p.PlaylistId) as "TracksPerPlaylist"
FROM PlaylistTrack p
JOIN Playlist l ON p.PlaylistId = l.PlaylistId
GROUP BY l.PlaylistId

