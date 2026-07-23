
# 🎵 Spotify SQL Data Analysis: Exploring Music Trends and Business Insights Using PostgreSQL
![Spotify_logo](https://github.com/nurhossainjoy/Spotify-Music-Data-Analysis-with-PostgreSQL/blob/main/Logo/Logo.png)

## 📌 Project Overview

This project demonstrates how **SQL** can be used to analyze Spotify music data and generate meaningful business insights. Using **PostgreSQL**, the project answers a variety of real-world business questions by applying SQL concepts ranging from basic filtering and aggregation to advanced analytical techniques such as **Common Table Expressions (CTEs)** and **Window Functions**.

The objective is to showcase practical SQL skills that are commonly required for **Business Analyst**, **Data Analyst**, and **Business Intelligence** roles.

---

## 🎯 Objectives

- Analyze Spotify music streaming data using PostgreSQL.
- Explore track, artist, and album performance.
- Generate business insights from streaming and engagement metrics.
- Practice SQL concepts through real-world business scenarios.
- Build a professional SQL portfolio project.

---

## 📂 Project Structure

```text
Spotify-SQL-Data-Analysis/
│
├── Dataset/
│   └── spotify.csv
│
├── SQL/
│   └── Spotify_SQL_Business_Questions_and_Solutions.sql
│
├── Images/
│   ├── Database_Schema.png
│   └── ER_Diagram.png
│
├── README.md
└── LICENSE
```

---

## 🗂 Dataset Description

The dataset contains information about Spotify tracks, including streaming statistics, engagement metrics, audio characteristics, and artist details.

### Dataset Includes

- Track Information
- Artist Information
- Album Information
- Spotify Streams
- YouTube Views
- Likes & Comments
- Audio Features
- Licensing Status
- Official Video Information
- Platform Performance

### Key Columns

| Category | Columns |
|----------|----------|
| Track Details | Track, Artist, Album |
| Streaming Metrics | Stream, Views, Likes, Comments |
| Audio Features | Danceability, Energy, Valence, Acousticness, Instrumentalness, Liveness, Speechiness |
| Music Information | Tempo, Duration, Key, Mode |
| Content Status | Licensed, Official Video |
| Platform | Most Played On |

---

# 🗄 Database Schema

The **Database Schema** provides a structured overview of the Spotify dataset used in this project. It illustrates the organization of the dataset and serves as a reference for understanding the available attributes before performing SQL analysis.

The dataset consists of a **single table (`spotify`)** containing multiple columns representing track information, streaming performance, engagement metrics, and audio characteristics.

The schema helps developers and analysts understand the structure of the dataset before writing SQL queries.

![](https://github.com/nurhossainjoy/Spotify-Music-Data-Analysis-with-PostgreSQL/blob/main/ERD%26DB_Schema/Spotify_database_schema_image.png)
---

# 🔗 Entity Relationship (ER) Diagram

Although the dataset is stored as a single table, the ER Diagram provides a conceptual representation of how entities such as **Tracks**, **Artists**, and **Albums** are related.

This visualization improves data understanding and documents the logical relationships within the dataset.

![](https://github.com/nurhossainjoy/Spotify-Music-Data-Analysis-with-PostgreSQL/blob/main/ERD%26DB_Schema/Spotify_ERD.png)

---

# 🛠 Tools & Technologies

- PostgreSQL
- pgAdmin 4
- SQL
- Git
- GitHub

---

# 📚 SQL Concepts Used

This project demonstrates a wide range of SQL techniques, including:

- SELECT Statement
- WHERE Clause
- ORDER BY
- GROUP BY
- HAVING
- Aggregate Functions
- CASE WHEN
- DISTINCT
- Common Table Expressions (CTEs)
- Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- Subqueries
- Type Casting
- Data Filtering
- Business Analytics Queries

---

# 📈 Business Questions Solved

Some of the business questions answered in this project include:

- Retrieve tracks with over 1 billion streams.
- List albums along with their artists.
- Calculate total comments for licensed tracks.
- Find tracks belonging to specific album types.
- Count the total number of tracks by each artist.
- Identify tracks with the highest energy values.
- Calculate average danceability by album.
- Find the top viewed tracks.
- Compare Spotify streams with YouTube views.
- Rank tracks using Window Functions.
- Identify artists with the most popular tracks.
- Analyze album-level audio characteristics.
- Compare highest and lowest energy values within each album.

---

# 📊 Skills Demonstrated

✔ Data Cleaning

✔ Data Exploration

✔ Business Analysis

✔ SQL Query Optimization

✔ Data Aggregation

✔ Window Functions

✔ Common Table Expressions (CTEs)

✔ Ranking Functions

✔ Analytical Thinking

✔ Data Storytelling

---

# 💡 Sample Insights

- Certain artists dominate both Spotify streams and YouTube views.
- High-energy songs tend to perform better in streaming platforms.
- Album popularity varies significantly even within the same artist.
- Licensed tracks generally receive higher engagement.
- Audio features can reveal listening trends and music characteristics.

---

# 🚀 How to Run

### Clone Repository

```bash
git clone https://github.com/yourusername/spotify-sql-data-analysis.git
```

### Open PostgreSQL

Import the dataset into PostgreSQL using pgAdmin.

### Execute SQL Script

Run:

```sql
Spotify_SQL_Business_Questions_and_Solutions.sql
```

to reproduce all analyses.

---

# 📸 Project Preview

### Database Schema

<p align="center">
<img src="Images/Database_Schema.png" width="900">
</p>

### ER Diagram

<p align="center">
<img src="Images/ER_Diagram.png" width="900">
</p>

---

# 🎯 Learning Outcomes

After completing this project, you will gain practical experience in:

- Writing SQL queries for business analysis
- Performing exploratory data analysis with SQL
- Using PostgreSQL efficiently
- Applying Window Functions and CTEs
- Solving real-world business problems using SQL
- Building a professional SQL portfolio

---

# 🤝 Connect With Me

**MD Nur Hossain Joy**

- GitHub: https://github.com/nurhossainjoy
- LinkedIn: https://www.linkedin.com/in/md-nur-hossain-joy-0b0bb9190/
- Email: mdnurhossainjoy4456@gmail.com

---

# ⭐ If you found this project useful...

Give this repository a ⭐ and feel free to fork it for your own learning!

---
````
