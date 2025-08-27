/*              CIM12373_AT3 database             */

/* ===================== ARTIST ===================== */
CREATE TABLE ARTIST 
(    artistID            INT NOT NULL,
    artistFirstName     VARCHAR(50)  NOT NULL,
    artistLastName      VARCHAR(50)  NOT NULL,
    artistGenre         VARCHAR(60)  NOT NULL,
    artistEmail         VARCHAR(120) NOT NULL,
    artistPhone         VARCHAR(20)  NOT NULL,
    artistBiography     TEXT,
    artistPortfolioURL  VARCHAR(255),
    CONSTRAINT ARTIST_PK PRIMARY KEY (artistID),
    CONSTRAINT ARTIST_Email_UQ UNIQUE (artistEmail)
);

/* ===================== CURATOR ===================== */
CREATE TABLE CURATOR (
    curatorID                 INT NOT NULL,
    curatorFirstName          VARCHAR(50)  NOT NULL,
    curatorLastName          VARCHAR(50)  NOT NULL,
    curatorSpecializationArea VARCHAR(100) NOT NULL,
    curatorEmail              VARCHAR(120) NOT NULL,
    curatorPhone              VARCHAR(20)  NOT NULL,
    CONSTRAINT CURATOR_PK PRIMARY KEY (curatorID),
    CONSTRAINT CURATOR_Email_UQ UNIQUE (curatorEmail)
);

/* ===================== MEMBER ===================== */
CREATE TABLE MEMBER (
    memberID        INT NOT NULL,
    memberFirstName VARCHAR(50)  NOT NULL,
    memberLastName  VARCHAR(50)  NOT NULL,
    memberEmail     VARCHAR(120) NOT NULL,
    memberPhone     VARCHAR(20)  NOT NULL,
    memberAddress   VARCHAR(200) NOT NULL,
    CONSTRAINT MEMBER_PK PRIMARY KEY (memberID),
    CONSTRAINT MEMBER_Email_UQ UNIQUE (memberEmail)
);

CREATE TABLE SUPPLIER (
    supplierID           INT NOT NULL,
    supplierFirstName    VARCHAR(50),
    supplierLastName     VARCHAR(50),
    supplierCompanyName  VARCHAR(120) NOT NULL,
    supplierServiceType  VARCHAR(30)  NOT NULL,
    supplierEmail        VARCHAR(120) NOT NULL,
    supplierPhone        VARCHAR(20)  NOT NULL,
    CONSTRAINT SUPPLIER_PK PRIMARY KEY (supplierID),
    CONSTRAINT SUPPLIER_Email_UQ UNIQUE (supplierEmail),
    CONSTRAINT SUPPLIER_ServiceType_CHK CHECK (supplierServiceType IN ('COURIER','FRAMER','INSURANCE','LOGISTICS'))
);

CREATE TABLE ARTWORK (
    artworkID           INT          NOT NULL,
    artWorkTitle        VARCHAR(200) NOT NULL,
    artWorkYearCreated  YEAR         NOT NULL,
    artWorkMedium       VARCHAR(30)  NOT NULL,
    artWorkDescription  TEXT,
    artWorkPrice        DECIMAL(12,2) NOT NULL,
    artWorkStatus       VARCHAR(25)  NOT NULL,
    ArtistID            INT          NOT NULL,
    CuratorID           INT          NULL,
    CONSTRAINT ARTWORK_PK PRIMARY KEY (artworkID),
    CONSTRAINT ARTWORK_Medium_CHK CHECK (artWorkMedium IN ('OIL','ACRYLIC','DIGITAL','SCULPTURE','MIXED_MEDIA')),
    CONSTRAINT ARTWORK_Status_CHK CHECK (artWorkStatus IN ('PENDING_APPROVAL','AVAILABLE','SOLD','POST_EXPO_GALLERY')),
    CONSTRAINT ARTWORK_Artist_FK  FOREIGN KEY (ArtistID)  REFERENCES ARTIST(artistID),
    CONSTRAINT ARTWORK_Curator_FK FOREIGN KEY (CuratorID) REFERENCES CURATOR(curatorID),
    CONSTRAINT ARTWORK_Price_CHK  CHECK (artWorkPrice >= 0)
);

/* ===================== ORDERS ===================== */
CREATE TABLE ORDERS (
    orderID          INT NOT NULL,
    memberID         INT NOT NULL,
    orderDate        DATETIME NOT NULL,
    orderTotalAmount DECIMAL(12,2) NOT NULL,
    CONSTRAINT ORDER_PK PRIMARY KEY (orderID),
    CONSTRAINT ORDER_Total_CHK CHECK (orderTotalAmount >= 0),
    CONSTRAINT ORDER_Member_FK FOREIGN KEY (memberID) REFERENCES MEMBER(memberID)
);

/* ===================== ORDERITEM ===================== */
CREATE TABLE ORDERITEM (
    orderItemID    INT NOT NULL,
    orderID        INT NOT NULL,
    artworkID      INT NOT NULL,
    orderUnitPrice DECIMAL(12,2) NOT NULL,
    CONSTRAINT ORDERITEM_PK PRIMARY KEY (orderItemID),
    CONSTRAINT ORDERITEM_Order_FK   FOREIGN KEY (orderID)   REFERENCES ORDERS(orderID),
    CONSTRAINT ORDERITEM_Artwork_FK FOREIGN KEY (artworkID) REFERENCES ARTWORK(artworkID),
    CONSTRAINT ORDERITEM_Price_CHK CHECK (orderUnitPrice >= 0),
    CONSTRAINT ORDERITEM_Artwork_UQ UNIQUE (artworkID)
);

/* ===================== REVIEW ===================== */
CREATE TABLE REVIEW
 (  reviewID       INT NOT NULL,
    memberID       INT NOT NULL,
    artworkID      INT NOT NULL,
    reviewRating   TINYINT NOT NULL,
    reviewComments TEXT,
    CONSTRAINT REVIEW_PK PRIMARY KEY (reviewID),
    CONSTRAINT REVIEW_Rating_CHK CHECK (reviewRating BETWEEN 1 AND 5),
    CONSTRAINT REVIEW_Member_FK  FOREIGN KEY (memberID)  REFERENCES MEMBER(memberID),
    CONSTRAINT REVIEW_Artwork_FK FOREIGN KEY (artworkID) REFERENCES ARTWORK(artworkID),
    CONSTRAINT REVIEW_UQ UNIQUE (memberID, artworkID)
);

/* ===================== CART ===================== */
CREATE TABLE CART 
(   cartID          INT NOT NULL,
    memberID        INT NOT NULL,
    cartDateCreated DATETIME NOT NULL,
    cartStatus      VARCHAR(15) NOT NULL,
    CONSTRAINT CART_PK PRIMARY KEY (cartID),
    CONSTRAINT CART_Status_CHK CHECK (cartStatus IN ('ACTIVE','CHECKED_OUT','ABANDONED')),
    CONSTRAINT CART_Member_FK FOREIGN KEY (memberID) REFERENCES MEMBER(memberID)
);

/* ===================== INVOICE ===================== */
CREATE TABLE INVOICE 
(   invoiceID            INT NOT NULL,
    orderID              INT NOT NULL,
    supplierID           INT NOT NULL,
    invoiceTotalCost     DECIMAL(12,2) NOT NULL,
    invoicePaymentMethod VARCHAR(20)   NOT NULL,
    CONSTRAINT INVOICE_PK PRIMARY KEY (invoiceID),
    CONSTRAINT INVOICE_Order_UQ UNIQUE (orderID),
    CONSTRAINT INVOICE_Total_CHK CHECK (invoiceTotalCost >= 0),
    CONSTRAINT INVOICE_Payment_CHK CHECK (invoicePaymentMethod IN ('CARD','PAYPAL','BANK_TRANSFER','OTHER')),
    CONSTRAINT INVOICE_Order_FK    FOREIGN KEY (orderID)    REFERENCES ORDERS(orderID),
    CONSTRAINT INVOICE_Supplier_FK FOREIGN KEY (supplierID) REFERENCES SUPPLIER(supplierID)
);

COMMIT;
