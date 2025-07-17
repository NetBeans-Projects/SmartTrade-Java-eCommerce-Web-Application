# Current Backend Directory



```plaintext

SmartTrade/
├── Web Pages/
│   └── [JSP/HTML files go here]
│
├── Source Packages/
│   ├── <default package>/
│   │   ├── hibernate.cfg.xml
│   │   └── hibernate.properties
│   │
│   ├── controller/
│   │   ├── CityData.java           # Handles city-related API logic
│   │   ├── MyAccount.java          # User account data retrieval
│   │   ├── SignIn.java             # Handles user login
│   │   ├── SignOut.java            # Handles logout logic
│   │   ├── SignUp.java             # Handles user registration
│   │   └── VerifyAccount.java      # Email/OTP verification logic
│   │
│   ├── hibernate/
│   │   ├── Address.java            # Address entity
│   │   ├── City.java               # City entity
│   │   ├── HibernateUtil.java      # Hibernate session factory
│   │   └── User.java               # User entity
│   │
│   └── model/
│       ├── Mail.java               # Email sending logic
│       ├── SessionFilter.java      # Filter for session validation
│       ├── SignInCheckFilter.java  # Filter for access control
│       ├── Util.java               # Common utility methods
│       └── mail.properties         # SMTP config
│
├── Configuration Files/
│   ├── MANIFEST.MF
│   └── glassfish-web.xml          # GlassFish specific deployment config
│
├── Libraries/
├── Test Libraries/
└── Test Packages/

```



