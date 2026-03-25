use collegee

db.createCollection("class")

db.class.insertMany([
  {rollno:1, name:"Arun", age:21, gender:"Male", div:"A", sub:["Math","Physics"], credit:4},
  {rollno:2, name:"Bina", age:20, gender:"Female", div:"B", sub:["Math","Chemistry"], credit:3},
  {rollno:3, name:"Tina", age:22, gender:"Female", div:"A", sub:["Biology","Math"], credit:5},
  {rollno:4, name:"Rahul", age:19, gender:"Male", div:"C", sub:["Physics","Chemistry"], credit:4},
  {rollno:5, name:"Tom", age:23, gender:"Male", div:"B", sub:["Math","CS"], credit:5},
  {rollno:6, name:"Anu", age:20, gender:"Female", div:"A", sub:["CS","Math"], credit:3},
  {rollno:7, name:"Riya", age:21, gender:"Female", div:"C", sub:["Biology","Chemistry"], credit:4},
  {rollno:8, name:"Kiran", age:22, gender:"Male", div:"B", sub:["Math","Physics"], credit:5},
  {rollno:9, name:"Teena", age:24, gender:"Female", div:"A", sub:["CS","Math"], credit:5},
  {rollno:10, name:"Manu", age:18, gender:"Male", div:"C", sub:["Physics","Math"], credit:2}
])

db.class.find().pretty()

db.class.aggregate([
  {$group:{ _id:"$div", totalStudents:{$sum:1}, maxAge:{$max:"$age"}}}
])

db.class.aggregate([
  {$match:{age:{$gt:20}}}
])

db.class.aggregate([
  {$sort:{age:-1}}
])

db.class.aggregate([
  {$match:{div:"B"}},
  {$sort:{age:1}},
  {$limit:1}
])

db.class.aggregate([
  {$group:{_id:null, avgAge:{$avg:"$age"}}}
])

db.class.aggregate([
  {$group:{_id:"$gender", count:{$sum:1}}}
])

db.class.aggregate([
  {$unwind:"$sub"}
])

db.class.aggregate([
  {$sort:{credit:-1}},
  {$limit:1},
  {$project:{sub:1, credit:1, _id:0}}
])

db.class.find({name:{$regex:"^T"}})

db.class.find({sub:"Math"})

db.class.aggregate([
  {$sort:{rollno:1}},
  {$group:{_id:"$div", firstStudent:{$first:"$$ROOT"}}}
])

db.class.aggregate([
  {$sort:{age:1}},
  {$group:{_id:"$div", lastStudent:{$last:"$$ROOT"}}}
])

db.class.createIndex({rollno:1},{name:"rollno_index"})

db.class.getIndexes()

db.class.dropIndex("rollno_index")
