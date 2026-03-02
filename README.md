
# 🎬 Movie App Backend (Ruby on Rails)
A powerful and scalable **Ruby on Rails backend API** designed for managing movies, genres, reviews, and users. This project follows clean MVC architecture with RESTful endpoints, database-backed storage, automated test suites, and a modern development workflow.

**Author:** Mathavan Babu

---

## 📘 Overview
This backend system provides all essential APIs required for a full-featured Movie Streaming or Movie Review web application. It supports:

- 🎥 Create, update, delete, and list movies
- ⭐ Manage reviews and ratings for movies
- 🏷 Categorize movies using genres
- 👤 User authentication (signup + login) depending on your version
- 🗂 Database-driven movie and review management
- 🧪 Automated RSpec test suite
- 📦 Asset management via Node/Yarn
- 🧰 Clean folder structure for enterprise-level maintainability

This Rails backend works seamlessly with any frontend—React, Angular, Vue, Mobile apps, or even server-rendered HTML.

---

## 🎯 Project Purpose
This Movie App backend is ideal for:

### ✔ Learning Ruby on Rails backend development
### ✔ Practicing MVC architecture patterns
### ✔ Understanding REST API design
### ✔ Building a portfolio-ready project
### ✔ Integrating with frontend apps
### ✔ Demonstrating CRUD, authentication, routing & database design skills

---

## 🛠 Technologies Used
| Technology | Purpose |
|-----------|---------|
| **Ruby** | Core programming language |
| **Ruby on Rails** | MVC framework powering the backend |
| **SQLite / PostgreSQL** | Database layer |
| **RSpec** | Automated testing framework |
| **Bundler** | Gem dependency management |
| **Node.js + Yarn** | JS & asset pipeline support |
| **Webpacker** | Asset bundling |
| **Puma** | Rails server |
| **ERB / JBuilder** | Rendering JSON responses |

---

## 📂 Project Structure
```
.
├── app/                 # MVC components: models, controllers, views
├── config/              # Routing, environments, initializers
├── db/                  # Schema, migrations, seeds
├── lib/                 # Custom modules & helpers
├── public/              # Public assets
├── vendor/              # Third‑party libraries
├── test/ or spec/       # Automated tests (RSpec/Test::Unit)
├── tmp/                 # Temporary Rails files
├── Gemfile              # Ruby gem dependencies
├── Rakefile             # Rake automation tasks
├── package.json         # Node dependencies
├── yarn.lock            # Yarn lock file
└── README.md
```

---

## ⚙️ Requirements
Make sure the following tools are installed:

| Tool | Version |
|------|---------|
| Ruby | 2.7+ or 3.x |
| Rails | 6.x / 7.x |
| Node.js | 14+ |
| Yarn | Latest |
| SQLite / PostgreSQL | Based on environment |

Check versions:
```sh
ruby -v
rails -v
node -v
yarn -v
```

---

## 🚀 Installation & Setup
### Clone the Repository
```sh
git clone <repo-url>
cd movie-app-backend
```

### Install Ruby Gems
```sh
bundle install
```

### Install Node/Yarn Packages
```sh
yarn install
```

### Setup the Database
```sh
rails db:create
rails db:migrate
rails db:seed   # optional
```

### Start the Server
```sh
rails server
```
The backend will be available at:
```
http://localhost:3000
```

---

## 🎯 Available API Endpoints
Below are sample API endpoints commonly used in a movie app. Actual endpoints may vary based on your controller code.

### 🎥 Movies
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | /movies | List all movies |
| POST | /movies | Create a new movie |
| GET | /movies/:id | Show movie details |
| PATCH | /movies/:id | Update a movie |
| DELETE | /movies/:id | Delete a movie |

### ⭐ Reviews
| Method | Endpoint |
|--------|----------|
| POST | /movies/:movie_id/reviews |
| GET | /movies/:movie_id/reviews |

### 🏷 Genres
| Method | Endpoint |
|--------|----------|
| GET | /genres |
| POST | /genres |

### 👤 Users (If authentication exists)
| Method | Endpoint |
|--------|----------|
| POST | /signup |
| POST | /login |

---

## 🧪 Running Tests
To execute the test suite:
```sh
rspec
```
Or if using Rails default test framework:
```sh
rails test
```

---

## 🗄 Database
To view database schema:
```sh
rails db:schema:dump
```

To reset database:
```sh
rails db:reset
```

---

## 📝 Logging
Logs are stored here:
```
log/development.log
log/production.log
```

Live log streaming:
```sh
tail -f log/development.log
```

---

## 🚀 Deployment (Heroku Example)
```sh
heroku create
heroku buildpacks:set heroku/ruby
heroku buildpacks:add --index 1 heroku/nodejs
git push heroku main
heroku run rails db:migrate
```

---

## 📌 Additional Notes
- Works perfectly with modern frontends (React, Angular, Vue). 
- Designed with clean separation of concerns (Controllers, Services, Models).
- Follows Rails conventions for scalability.
- Includes automated RSpec suites for production grade stability.
- Supports easy future enhancements such as JWT auth, pagination, and caching.

---

## 🤝 Contributing
1. Fork the project
2. Create a feature branch:
```sh
git checkout -b feature/new-feature
```
3. Commit your changes:
```sh
git commit -m "Added new feature"
```
4. Push the branch:
```sh
git push origin feature/new-feature
```
5. Open a Pull Request

---

## 📄 License
This project is open‑source under the **MIT License**. You are free to use, modify, and distribute for personal or commercial use.

---

## 🎉 Final Thoughts
This Movie App backend serves as a strong foundation for:
- Full-stack learning
- Portfolio demonstrations
- Scalable movie review apps
- API-driven applications

