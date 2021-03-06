/*Table structure for table `Orders` */

DROP TABLE IF EXISTS `Orders`;

CREATE TABLE `Orders` (
    `orderNumber` int(11) NOT NULL,
    `orderDate` date NOT NULL,
    `requiredDate` date NOT NULL,
    `shippedDate` date DEFAULT NULL,
    `status` varchar(15) NOT NULL,
    `comments` text,
    `customerNumber` int(11) NOT NULL,
    PRIMARY KEY (`orderNumber`),
    KEY `customerNumber` (`customerNumber`),
    CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `Customers` (`customerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;