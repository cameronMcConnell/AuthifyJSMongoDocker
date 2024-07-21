db = db.getSiblingDB(process.env.DB_NAME);
db.createCollection("users");
db.createCollection("unverifiedUsers");