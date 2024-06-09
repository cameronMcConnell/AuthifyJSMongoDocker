db = db.getSiblingDB(process.env.DB_NAME);
db.createCollection('users');
db.insertOne({ adminKey: process.env.ADMIN_KEY });