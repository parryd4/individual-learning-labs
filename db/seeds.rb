# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.create(username: "dan", admin: true, password: "1", first_name: "Dan", last_name: "Parry")
User.create(username: "buddy", password: "1", first_name: "Senor", last_name: "Test")

# Lab.create()
