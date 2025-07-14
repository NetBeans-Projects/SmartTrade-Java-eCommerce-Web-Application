# 🛒 SmartTrade eCommerce Application

SmartTrade is a full-stack eCommerce web application designed for buying and selling products Using Java EE AKA Jakarta EE. It includes features like user authentication, product listing, advanced product search, cart checkout, and admin reporting.

---

## 📅 Daily Progress Overview

This is the Structure I've uploaded daily progress of the Java Web Developement

|    Date                       |   Frontend Folder   |    Backend Folder    |    Database Folder   |
|-------------------------------|---------------------|----------------------|----------------------|
| DAY 46 - 2025.07.14 (Morning) | `frontend/Day-01/`  | `backend/Day-01/`   | `database/Day-01/`  |
| DAY 48 - 2025.07.15 (Morning) | `frontend/Day-02/`  | `backend/Day-02/`   | `database/Day-02/`  |
| DAY 49 - 2025.07.15 (Evening) | `frontend/Day-03/`  | `backend/Day-03/`   | `database/Day-03/`  |
| DAY 50 - 2025.07.16 (Morning) | `frontend/Day-04/`  | `backend/Day-04/`   | `database/Day-04/`  |
| DAY 51 - 2025.07.16 (Evening) | `frontend/Day-05/`  | `backend/Day-05/`   | `database/Day-05/`  |
| DAY 52 - 2025.07.17 (Morning) | `frontend/Day-05/`  | `backend/Day-05/`   | `database/Day-05/`  |
| DAY 53 - 2025.07.17 (Evening) | `frontend/Day-05/`  | `backend/Day-05/`   | `database/Day-05/`  |
| DAY 54 - 2025.07.18 (Morning) | `frontend/Day-05/`  | `backend/Day-05/`   | `database/Day-05/`  |
| DAY 55 - 2025.07.18 (Evening) | `frontend/Day-05/`  | `backend/Day-05/`   | `database/Day-05/`  |
| DAY 56 - 2025.07.21 (Morning) | `frontend/Day-04/`  | `backend/Day-04/`   | `database/Day-04/`  |

| DAY 57 - 2025.07.21 (Evening) | `frontend/Day-05/`  | `backend/Day-05/`   | `database/Day-05/`  |

| DAY 58 - 2025.07.22 (Morning) | `frontend/Day-05/`  | `backend/Day-05/`   | `database/Day-05/`  |

| DAY 59 - 2025.07.22 (Evening) | `frontend/Day-05/`  | `backend/Day-05/`   | `database/Day-05/`  |

| DAY 60 - 2025.07.23 (Morning) | `frontend/Day-05/`  | `backend/Day-05/`   | `database/Day-05/`  |

| DAY 61 - 2025.07.23 (Evening) | `frontend/Day-05/`  | `backend/Day-05/`   | `database/Day-05/`  |



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

## 🗄️ Database Files

* The folder database ER & Full backup sql/ contains:

#### 🧩 ER Diagram Model – Visual entity-relationship diagram of the database structure.

#### 💾 SQL Backup File – A complete .sql backup of the MySQL database.

* You can import this into your MySQL server using any tool like phpMyAdmin / MySQL Workbench / HeidiSQL / Navicat.


## 📌 Notes

Make sure MySQL is running and the database exists before running the application.


## 📞 Contact
For questions or improvements, feel free to open an issue or contact [Jude Thamel](https://github.com/JudeThamel).


## License

This project is licensed under **JudeThamel License v1.0**.  
Only personal and educational use is allowed. Commercial or modified use is strictly prohibited without written permission.

[View Full License](./LICENSE)


<br />
<br />
<br />
