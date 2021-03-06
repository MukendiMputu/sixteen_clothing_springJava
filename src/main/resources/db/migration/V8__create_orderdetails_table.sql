/*Table structure for table `Orderdetails` */

DROP TABLE IF EXISTS `Orderdetails`;

CREATE TABLE `Orderdetails` (
    `orderNumber` int(11) NOT NULL,
    `productCode` varchar(15) NOT NULL,
    `quantityOrdered` int(11) NOT NULL,
    `priceEach` decimal(10,2) NOT NULL,
    `orderLineNumber` smallint(6) NOT NULL,
    PRIMARY KEY (`orderNumber`,`productCode`),
    KEY `productCode` (`productCode`),
    CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`orderNumber`) REFERENCES `Orders` (`orderNumber`),
    CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`productCode`) REFERENCES `Products` (`productCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
