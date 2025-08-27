/*  --------------------Query----------------*/

/*  ------------------ a. Artworks in a specific medium ----------------*/

SELECT * FROM ARTWORK
WHERE artWorkMedium = 'OIL';

/*  ------------------ b.Artworks not purchased by any Members ----------------*/

SELECT a.artworkID, a.artWorkTitle
FROM ARTWORK a
LEFT JOIN ORDERITEM oi ON oi.artworkID = a.artworkID
LEFT JOIN ORDERS o      ON o.orderID = oi.orderID
LEFT JOIN MEMBER m      ON m.memberID = o.memberID
WHERE oi.artworkID IS NULL
ORDER BY m.memberLastName;

/*  ------------------ c. Each member’s carts and how many artworks they purchased in them ----------------*/

SELECT m.memberID, c.cartID,
  COUNT(DISTINCT oi.artworkID) AS NumberOfArt
FROM MEMBER m
JOIN CART c       ON c.memberID = m.memberID
JOIN ORDERS o     ON o.memberID = m.memberID
JOIN ORDERITEM oi ON oi.orderID = o.orderID
JOIN ARTWORK aw   ON aw.artworkID = oi.artworkID
WHERE c.cartStatus = 'CHECKED_OUT'
GROUP BY m.memberID, c.cartID
ORDER BY NumberOfArt DESC, MAX(aw.artWorkYearCreated) DESC;

/*  ------------------ d. Curators who handled the artwork with artworkID = 505 ----------------*/

SELECT DISTINCT c.curatorID
FROM ORDERITEM oi
JOIN ARTWORK a  ON a.artworkID = oi.artworkID
JOIN CURATOR c  ON c.curatorID = a.CuratorID
WHERE oi.artworkID = 505;

/*  ------------------ e. Artists who have artworks purchased in more than one order ----------------*/

SELECT 
  a.ArtistID,
  CONCAT(ar.artistFirstName, ' ', ar.artistLastName) AS artistName,
  COUNT(DISTINCT oi.orderID) AS NumberOfOrders
FROM ARTWORK a
JOIN ARTIST ar   ON ar.artistID = a.ArtistID
JOIN ORDERITEM oi ON oi.artworkID = a.artworkID
GROUP BY a.ArtistID, artistName
HAVING COUNT(DISTINCT oi.orderID) > 1;


commit;

