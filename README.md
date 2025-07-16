# 🛒 SmartTrade eCommerce Application

SmartTrade is a full-stack eCommerce web application designed for buying and selling products Using Java EE AKA Jakarta EE. It includes features like user authentication, product listing, advanced product search, cart checkout, and admin reporting.

---

# Java Institute Coursework Project

This project was developed as part of the coursework at **Java Institute** under the guidance of _Dr. Tharaka Sankalpa_ & _Mr. Anjana Dilhara_.

🛑 **Access Restricted**
> This project and all its contents are intended **only for Java Institute students** who are part of this course.

Do not:
- Redistribute
- Modify and reupload
- Use for commercial or public purposes

© 2025 Java Institute – All Rights Reserved

---

## 📅 Daily Progress Overview

This is the Structure I've uploaded daily progress of the Java Web Developement

|    Date                       |   Frontend Folder   |    Backend Folder    |    Database Folder   |
|:-----------------------------:|:-------------------:|:--------------------:|:--------------------:|
| DAY 46 - 2025.07.14 (Morning) | `N/A`  | `N/A`   | [`Database ER Creation`](https://github.com/NetBeans-Projects/SmartTrade-Java-Web-eCommerce-Application/tree/database/DAY%2046%20-%202025.07.14%20(Morning)%20-%20Database%20ER%20Creation)  |
| DAY 48 - 2025.07.15 (Morning) | [`Template assets, Add sign-up, sign-in, verify-account Designs, Create sign-up.js , Update sign-up.html`](https://github.com/NetBeans-Projects/SmartTrade-Java-Web-eCommerce-Application/tree/frontend/DAY%2048%20-%202025.07.15%20(Morning)%20-%20Template%20assets%2C%20sign-up%2C%20sign-in%2C%20verify-account%20html%20designs%2C%20Create%20sign-up.js)  | [`Setup Hibernate, SignUp.java backend, Mail sending`](https://github.com/NetBeans-Projects/SmartTrade-Java-Web-eCommerce-Application/tree/backend/DAY%2048%20-%202025.07.15%20(Morning)%20-%20Setup%20Hibernate%2C%20SignUp%20backend%2C%20Mail%20sending) | [`Database ER Update & Forward Engineer`](https://github.com/NetBeans-Projects/SmartTrade-Java-Web-eCommerce-Application/tree/database/DAY%2048%20-%202025.07.15%20(Morning)%20-%20Database%20ER%20Update%20%26%20Forward%20Engineer)  |
| DAY 49 - 2025.07.15 (Evening) | [`Update sign-up.js`](https://github.com/NetBeans-Projects/SmartTrade-Java-Web-eCommerce-Application/tree/frontend/DAY%2049%20-%202025.07.15%20(Evening)%20-%20Same%20Morning%20Designs%20%2B%20Update%20sign-up.js) | [`SignUp.java Validations Update`](https://github.com/NetBeans-Projects/SmartTrade-Java-Web-eCommerce-Application/tree/backend/DAY%2049%20-%202025.07.15%20(Evening)%20-%20SignUp%20Validations%20Update) | `Same DB` |
| DAY 50 - 2025.07.16 (Morning) | `Update verify-account.html, Create verify-account.js` | `Update SignUp.java HttpSession, Create VerifyAccount.java` | To Be Done  |
| DAY 51 - 2025.07.16 (Evening) | To Be Done  | To Be Done   | To Be Done  |
| DAY 52 - 2025.07.17 (Morning) | To Be Done  | To Be Done   | To Be Done  |
| DAY 53 - 2025.07.17 (Evening) | To Be Done  | To Be Done   | To Be Done  |
| DAY 54 - 2025.07.18 (Morning) | To Be Done  | To Be Done   | To Be Done  |
| DAY 55 - 2025.07.18 (Evening) | To Be Done  | To Be Done   | To Be Done  |
| DAY 56 - 2025.07.21 (Morning) | To Be Done  | To Be Done   | To Be Done  |
| DAY 57 - 2025.07.21 (Evening) | To Be Done  | To Be Done   | To Be Done  |
| DAY 58 - 2025.07.22 (Morning) | To Be Done  | To Be Done   | To Be Done  |
| DAY 59 - 2025.07.22 (Evening) | To Be Done  | To Be Done   | To Be Done  |
| DAY 60 - 2025.07.23 (Morning) | To Be Done  | To Be Done   | To Be Done  |
| DAY 61 - 2025.07.23 (Evening) | To Be Done  | To Be Done   | To Be Done  |

### FINAL PROJECT
|    FULL COMPLETED PROJECT (with frontend & backend) until now `main` branch   |    Current Project   |


---

## 🔗 Project Structure & Branches

This project is organized into three main branches:

| Branch     | Description                       |
|------------|-----------------------------------|
| [`frontend`](https://github.com/NetBeans-Projects/SmartTrade-Java-Web-eCommerce-Application/tree/frontend) | HTML/CSS/JavaScript based UI      |
| [`backend`](https://github.com/NetBeans-Projects/SmartTrade-Java-Web-eCommerce-Application/tree/backend)  | Java Web backend (Servlet + Hibernate) |
| [`database`](https://github.com/NetBeans-Projects/SmartTrade-Java-Web-eCommerce-Application/tree/database) | MySQL scripts + ER diagrams       |

---

## 📌 Features

- ✅ User Sign Up / Sign In  
- ✅ Product Selling  
- ✅ Product Searching (Advanced Search + Pagination)  
- ✅ Product Purchasing (Cart + Checkout)  
- ✅ Purchase History  
- ✅ Admin Panel (Reporting)

---

## 🛠 Tech Stack

| Layer      | Technology |
|------------|------------|
| Frontend   | HTML, CSS, JavaScript |
| Backend    | Java EE, Servlets, Hibernate ORM |
| Database   | MySQL |
| Server     | GlassFish |
| ORM        | Hibernate 4.3.1.Final |
| JDBC Driver| `mysql-connector-j-8.4.0.jar` |

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/NetBeans-Projects/SmartTrade-Java-Web-eCommerce-Application.git
cd SmartTrade-Java-Web-eCommerce-Application
```

### 2. Switch to the Desired Branch

Depending on what part of the project you want to work with, switch to the appropriate branch:

```bash
git checkout frontend     # For frontend
git checkout backend      # For backend
git checkout database     # For database
```

### 3. 3. View Previous Code Versions

If you want to access the code as it existed on a specific date, you can browse the folder names and get the project.

---

## 📁 Project Structure

```directory

frontend/
  └── index.html, styles.css, app.js

backend/
  ├── src/
  │   ├── controller/         # Servlets (Insert, Search, etc.)
  │   ├── hibernate/          # Entity Classes + HibernateUtil
  │   └── model/              # (Optional business models)
  ├── WebContent/
  │   └── WEB-INF/web.xml
  └── hibernate.cfg.xml

database/
  ├── er-diagram.png
  └── smart_trade.sql

```

---

## 💾 Database Setup

### 1. Create a MySQL database:


``` sql
CREATE DATABASE smarttrade_db;
```


### 2. Import the backup SQL from the **`database/`** branch:

File: `smart_trade.sql`

### 3. Update the database connection in hibernate.cfg.xml:

---

## 🧪 Run the App

* Use NetBeans or IntelliJ with GlassFish/Tomcat to deploy the [`backend`](https://github.com/NetBeans-Projects/SmartTrade-Java-Web-eCommerce-Application/tree/backend) project.

* Serve [`frontend`](https://github.com/NetBeans-Projects/SmartTrade-Java-Web-eCommerce-Application/tree/frontend) files using a simple web server or directly through browser.

* Ensure database is running and accessible.

---

## 📚 Dependencies (JARs)

Make sure the following libraries are included in your `lib/` or classpath:

- `antlr-2.7.7.jar`
- `c3p0-0.9.2.1.jar`
- `dom4j-1.6.1.jar`
- `ehcache-core-2.4.3.jar`
- `hibernate-c3p0-4.3.1.Final.jar`
- `hibernate-commons-annotations-4.0.4.Final.jar`
- `hibernate-core-4.3.1.Final.jar`
- `hibernate-ehcache-4.3.1.Final.jar`
- `hibernate-entitymanager-4.3.1.Final.jar`
- `javassist-3.18.1-GA.jar`
- `jboss-logging-3.1.3.GA.jar`
- `jboss-transaction-api_1.2_spec-1.0.0.Final.jar`
- `mchange-commons-java-0.2.3.4.jar`
- `mysql-connector-j-8.4.0.jar`
- `slf4j-api-1.6.1.jar`
- `slf4j-simple-1.6.1.jar`

---

## ⚙️ Configuration Files

### `hibernate.cfg.xml`

```xml

<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE hibernate-configuration PUBLIC "-//Hibernate/Hibernate Configuration DTD 3.0//EN" "http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd">

<hibernate-configuration>

  <session-factory>

    <property name="hibernate.dialect">org.hibernate.dialect.MySQLDialect</property>
    <property name="hibernate.connection.driver_class">com.mysql.cj.jdbc.Driver</property>
    <property name="hibernate.connection.url">jdbc:mysql://localhost:3306/smart_trade?useSSL=false</property>
    <property name="hibernate.connection.username">root</property>
    <property name="hibernate.connection.password">Password</property>
    <property name="hibernate.show_sql">true</property>

  </session-factory>

</hibernate-configuration>

```

*Remember to - **REPLACE YOUR DATABASE PASSWORD***

---

## 🗄️ Database Files

* The folder database ER & Full backup sql/ contains:

#### 🧩 ER Diagram Model – Visual entity-relationship diagram of the database structure.

#### 💾 SQL Backup File – A complete .sql backup of the MySQL database.

* You can import this into your MySQL server using any tool like phpMyAdmin / MySQL Workbench / HeidiSQL / Navicat.

---

## 📌 Notes

Make sure MySQL is running and the database exists before running the application.

---

## 📞 Contact
For questions or improvements, feel free to open an issue or contact [Jude Thamel](https://github.com/JudeThamel).

---

## License

This project is licensed under **Java Institute Coursework License v1.0**.
  
🛑 **Access Restricted**
> This project and all its contents are intended **only for Java Institute students** who are part of this course.

[View Full License](./LICENSE)


<br />
<br />
<br />
