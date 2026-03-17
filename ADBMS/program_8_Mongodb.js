use college

db.createCollection("student")

db.student.insertMany([
  {rollno:1,name:"Arun",department:"MCA",semester:1,cgpa:8.1},
  {rollno:2,name:"Rahul",department:"MCA",semester:2,cgpa:7.5},
  {rollno:3,name:"Anu",department:"MBA",semester:1,cgpa:8.0},
  {rollno:4,name:"Meera",department:"MCA",semester:3,cgpa:7.8},
  {rollno:5,name:"John",department:"BCA",semester:2,cgpa:6.9},
  {rollno:6,name:"Sneha",department:"MCA",semester:1,cgpa:8.7},
  {rollno:7,name:"Varun",department:"MBA",semester:4,cgpa:7.0},
  {rollno:8,name:"Nikhil",department:"MCA",semester:2,cgpa:7.9},
  {rollno:9,name:"Akhil",department:"BCA",semester:3,cgpa:6.8},
  {rollno:10,name:"Divya",department:"MCA",semester:1,cgpa:8.2}
])

db.student.find({department:"MCA"})

db.student.updateMany({department:"MCA"},{$set:{semester:1}})

db.student.find().pretty()



use inventory

db.products.insertMany([
  {
    _id:1,
    name:"Phone",
    price:799,
    releaseDate:ISODate("2011-05-24"),
    spec:{ram:4,screen:6.5,cpu:2.66},
    color:["white","black"],
    storage:[64,128,256]
  },
  {
    _id:2,
    name:"Tablet",
    price:799,
    releaseDate:ISODate("2011-09-01"),
    spec:{ram:16,screen:9.5,cpu:3.66},
    color:["white","black","purple"],
    storage:[128,256,512]
  },
  {
    _id:3,
    name:"Smartphone",
    price:899,
    releaseDate:ISODate("2022-01-14"),
    spec:{ram:12,screen:9.7,cpu:1.66},
    color:["blue"],
    storage:[16,64,128]
  }
])

db.products.find()

db.products.findOne()

db.products.find({_id:2},{name:1,price:1})

db.products.find({price:799})

db.products.deleteOne({_id:1})

db.products.find({"spec.ram":12},{name:1,"spec.ram":1})

db.products.find({"spec.screen":{$lt:7}})

db.products.find({price:{$lt:1000}},{name:1,price:1})

db.products.find({price:{$in:[699,799]}},{name:1,price:1})

db.products.find({color:{$in:["black","white"]}})

db.products.find({price:{$nin:[699,799]}},{name:1,price:1})

db.products.find({$and:[{price:799},{color:{$in:["white","black"]}}]},{name:1,price:1,color:1})

db.products.find({$or:[{price:{$lt:699}},{price:{$gt:799}}]})

db.products.find(
  { releaseDate: { $exists: true } },
  { name: 1, releaseDate: 1 }
).sort({ releaseDate: -1 })

db.products.find().sort({name:1,price:1})

db.products.find().sort({price:-1}).limit(1)

db.products.find().skip(2).limit(2)
