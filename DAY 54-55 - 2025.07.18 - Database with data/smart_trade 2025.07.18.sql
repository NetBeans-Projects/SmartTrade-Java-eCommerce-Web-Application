-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.33 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for smart_trade
CREATE DATABASE IF NOT EXISTS `smart_trade` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `smart_trade`;

-- Dumping structure for table smart_trade.address
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `line_1` text NOT NULL,
  `line_2` text NOT NULL,
  `city_id` int NOT NULL,
  `postal_code` varchar(5) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_address_city1_idx` (`city_id`),
  KEY `fk_address_user1_idx` (`user_id`),
  CONSTRAINT `fk_address_city1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `fk_address_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.address: ~2 rows (approximately)
REPLACE INTO `address` (`id`, `line_1`, `line_2`, `city_id`, `postal_code`, `user_id`) VALUES
	(1, '113/A', 'Sebastian', 17, '14244', 1),
	(2, '123/D', 'Paul Road', 25, '43665', 1),
	(3, '121', 'Negombo Road', 25, '22144', 18),
	(4, '121', 'Negombo Road', 25, '22144', 18),
	(5, '5435/D', 'Colombo Road', 5, '77545', 18),
	(6, '44/C', 'Abepussa Road', 5, '24255', 12),
	(7, '4/V', 'Dompe Road', 5, '75897', 15),
	(8, '5/D', 'Ganemulla Road', 5, '54323', 9),
	(9, '33/A', 'Gampaha Road', 5, '22222', 4);

-- Dumping structure for table smart_trade.brand
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.brand: ~4 rows (approximately)
REPLACE INTO `brand` (`id`, `name`) VALUES
	(1, 'Apple'),
	(2, 'Samsung'),
	(3, 'Sony'),
	(4, 'Google');

-- Dumping structure for table smart_trade.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_user1_idx` (`user_id`),
  KEY `fk_cart_product1_idx` (`product_id`),
  CONSTRAINT `fk_cart_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_cart_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.cart: ~0 rows (approximately)

-- Dumping structure for table smart_trade.city
CREATE TABLE IF NOT EXISTS `city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.city: ~30 rows (approximately)
REPLACE INTO `city` (`id`, `name`) VALUES
	(1, 'Anuradhapura'),
	(2, 'Badulla'),
	(3, 'Batticaloa'),
	(4, 'Chilaw'),
	(5, 'Colombo'),
	(6, 'Dambulla'),
	(7, 'Dehiwala'),
	(8, 'Ella'),
	(9, 'Embilipitiya'),
	(10, 'Galle'),
	(11, 'Gampaha'),
	(12, 'Hambantota'),
	(13, 'Haputale'),
	(14, 'Hatton'),
	(15, 'Jaffna'),
	(16, 'Kalutara'),
	(17, 'Kandy'),
	(18, 'Kegalle'),
	(19, 'Kilinochchi'),
	(20, 'Kurunegala'),
	(21, 'Mannar'),
	(22, 'Matale'),
	(23, 'Matara'),
	(24, 'Monaragala'),
	(25, 'Negombo'),
	(26, 'Nuwara Eliya'),
	(27, 'Polonnaruwa'),
	(28, 'Ratnapura'),
	(29, 'Trincomalee'),
	(30, 'Vavuniya');

-- Dumping structure for table smart_trade.color
CREATE TABLE IF NOT EXISTS `color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.color: ~4 rows (approximately)
REPLACE INTO `color` (`id`, `value`) VALUES
	(1, 'Black'),
	(2, 'White'),
	(3, 'Gold'),
	(4, 'Red');

-- Dumping structure for table smart_trade.delivery_type
CREATE TABLE IF NOT EXISTS `delivery_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.delivery_type: ~0 rows (approximately)

-- Dumping structure for table smart_trade.model
CREATE TABLE IF NOT EXISTS `model` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `brand_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_model_brand_idx` (`brand_id`),
  CONSTRAINT `fk_model_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.model: ~5 rows (approximately)
REPLACE INTO `model` (`id`, `name`, `brand_id`) VALUES
	(1, 'iPhone 16 Pro', 1),
	(2, 'iPhone 15 Pro', 1),
	(3, 'Galaxy S25 Ultra', 2),
	(4, 'Galaxy S24 Ultra', 2),
	(5, 'Xperia I VI', 3);

-- Dumping structure for table smart_trade.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `address_id` int NOT NULL,
  `created_at` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_user1_idx` (`user_id`),
  KEY `fk_orders_address1_idx` (`address_id`),
  CONSTRAINT `fk_orders_address1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `fk_orders_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.orders: ~0 rows (approximately)

-- Dumping structure for table smart_trade.order_item
CREATE TABLE IF NOT EXISTS `order_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `orders_id` int NOT NULL,
  `qty` int NOT NULL,
  `order_status_id` int NOT NULL,
  `delivery_type_id` int NOT NULL,
  `rating` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_item_product1_idx` (`product_id`),
  KEY `fk_order_item_order_status1_idx` (`order_status_id`),
  KEY `fk_order_item_delivery_type1_idx` (`delivery_type_id`),
  KEY `fk_order_item_orders1_idx` (`orders_id`),
  CONSTRAINT `fk_order_item_delivery_type1` FOREIGN KEY (`delivery_type_id`) REFERENCES `delivery_type` (`id`),
  CONSTRAINT `fk_order_item_order_status1` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`),
  CONSTRAINT `fk_order_item_orders1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `fk_order_item_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.order_item: ~0 rows (approximately)

-- Dumping structure for table smart_trade.order_status
CREATE TABLE IF NOT EXISTS `order_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.order_status: ~0 rows (approximately)

-- Dumping structure for table smart_trade.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `model_id` int NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `qty` int NOT NULL,
  `color_id` int NOT NULL,
  `storage_id` int NOT NULL,
  `quality_id` int NOT NULL,
  `status_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_model1_idx` (`model_id`),
  KEY `fk_product_color1_idx` (`color_id`),
  KEY `fk_product_storage1_idx` (`storage_id`),
  KEY `fk_product_quality1_idx` (`quality_id`),
  KEY `fk_product_status1_idx` (`status_id`),
  KEY `fk_product_user1_idx` (`user_id`),
  CONSTRAINT `fk_product_color1` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`),
  CONSTRAINT `fk_product_model1` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`),
  CONSTRAINT `fk_product_quality1` FOREIGN KEY (`quality_id`) REFERENCES `quality` (`id`),
  CONSTRAINT `fk_product_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  CONSTRAINT `fk_product_storage1` FOREIGN KEY (`storage_id`) REFERENCES `storage` (`id`),
  CONSTRAINT `fk_product_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.product: ~0 rows (approximately)

-- Dumping structure for table smart_trade.quality
CREATE TABLE IF NOT EXISTS `quality` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.quality: ~2 rows (approximately)
REPLACE INTO `quality` (`id`, `value`) VALUES
	(1, 'New'),
	(2, 'Used');

-- Dumping structure for table smart_trade.status
CREATE TABLE IF NOT EXISTS `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.status: ~2 rows (approximately)
REPLACE INTO `status` (`id`, `value`) VALUES
	(1, 'Pending'),
	(2, 'Active');

-- Dumping structure for table smart_trade.storage
CREATE TABLE IF NOT EXISTS `storage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.storage: ~3 rows (approximately)
REPLACE INTO `storage` (`id`, `value`) VALUES
	(1, '128 GB'),
	(2, '256 GB'),
	(3, '512 GB');

-- Dumping structure for table smart_trade.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(20) NOT NULL,
  `verification` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table smart_trade.user: ~17 rows (approximately)
REPLACE INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `verification`, `created_at`) VALUES
	(1, 'John', 'Carter', 'johncarter@gmail.com', 'Eafeef#134', 'Verified', '2025-07-15 12:30:02'),
	(2, 'Robin', 'Hood', 'robinhood@gmail.com', 'robh@234', '735323', '2025-07-15 14:36:05'),
	(3, 'Scooby', 'Doo', 'scoobydoo@gmail.com', 'scoob587@', '986474', '2025-07-15 15:00:45'),
	(4, 'Oliver', 'Queen', 'oliverqueen@gmail.com', 'oliqn@3421', '126321', '2025-07-15 15:10:09'),
	(5, 'Bruce', 'Lee', 'brucelee@gmail.com', 'brul@7334', '636346', '2025-07-15 15:30:07'),
	(6, 'Hashen', 'Liyanarachchi', 'jmalfsefew@gmail.com', 'john123#', 'Verified', '2025-07-15 14:56:01'),
	(7, 'Brother', 'Sean', 'sean@gmail.com', 'sea@34423', '787129', '2025-07-15 18:01:25'),
	(8, 'Sam', 'Fernando', 'sam@gmail.com', 'Jdeaw@34423', '753685', '2025-07-15 18:06:25'),
	(9, 'Suran', 'Appu', 'suran@gmail.com', 'sura2342@', '272363', '2025-07-15 18:08:37'),
	(10, 'Amal', 'Perera', 'amal@gmail.com', 'Amal@5423', '041379', '2025-07-15 18:15:25'),
	(11, 'Anjana', 'Perera', 'anjana@gmail.com', 'Jhh@34423', '205996', '2025-07-15 18:24:25'),
	(12, 'Harsha', 'Mahamalage', 'har@gmail.com', 'Har@1313', '472882', '2025-07-16 11:39:06'),
	(13, 'Amith', 'Pussella', 'amith@gmail.com', 'Amith@123', 'Verified', '2025-07-16 12:25:41'),
	(14, 'Samuditha', 'Fernandopulle', 'samu@gmail.com', 'samu124423@A', 'Verified', '2025-07-16 13:22:58'),
	(15, 'Anura', 'Wickramasinghe', 'anu@gmail.com', 'Anu@123f', 'Verified', '2025-07-16 13:43:58'),
	(16, 'Jenul', 'Pigera', 'jenu@gmail.com', 'Jde@13143', 'Verified', '2025-07-16 14:54:09'),
	(17, 'Neil', 'Armstrong ', 'neil@gmail.com', 'Neil@324455sr', 'Verified', '2025-07-16 19:54:47'),
	(18, 'Kasun', 'Perera', 'kasun@gmail.com', '#@S7891a', 'Verified', '2025-07-18 18:44:33');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
