/*  --------------------Query----------------*/

/*  ------------------ a ----------------*/

SELECT * FROM ARTWORK
WHERE artWorkMedium = 'OIL';

/*  ------------------ b ----------------*/

SELECT a.artworkID, a.artWorkTitle
FROM ARTWORK a
LEFT JOIN ORDERITEM oi ON oi.artworkID = a.artworkID
LEFT JOIN ORDERS o      ON o.orderID = oi.orderID
LEFT JOIN MEMBER m      ON m.memberID = o.memberID
WHERE oi.artworkID IS NULL
ORDER BY m.memberLastName, a.artWorkTitle;

/*  ------------------ c ----------------*/

SELECT 
  o.memberID,
  c.cartID,
  COUNT(DISTINCT oi.artworkID) AS NumberOfArt
FROM ORDERS o
JOIN CART c       ON c.cartID = o.orderID
JOIN ORDERITEM oi ON oi.orderID = o.orderID
JOIN ARTWORK aw   ON aw.artworkID = oi.artworkID
GROUP BY o.memberID, c.cartID
ORDER BY NumberOfArt DESC, MAX(aw.artWorkYearCreated) DESC;

/*  ------------------ d ----------------*/

SELECT DISTINCT c.curatorID
FROM ORDERITEM oi
JOIN ARTWORK a  ON a.artworkID = oi.artworkID
JOIN CURATOR c  ON c.curatorID = a.CuratorID
WHERE oi.artworkID = 505;

/*  ------------------ e ----------------*/

SELECT 
  a.ArtistID,
  CONCAT(ar.artistFirstName, ' ', ar.artistLastName) AS artistName,
  COUNT(DISTINCT oi.orderID) AS NumberOfOrders
FROM ARTWORK a
JOIN ARTIST ar   ON ar.artistID = a.ArtistID
JOIN ORDERITEM oi ON oi.artworkID = a.artworkID
GROUP BY a.ArtistID, artistName
HAVING COUNT(DISTINCT oi.orderID) > 1
ORDER BY NumberOfOrders DESC, artistName;



