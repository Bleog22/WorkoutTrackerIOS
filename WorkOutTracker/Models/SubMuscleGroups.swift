//
//  CardioGroups.swift
//  WorkOutTracker
//
//  Created by Bryan Galaviz on 5/30/25.
//

import Foundation


//Creating a new struct with 4 properties name (type string), image (type string), enum ActivityType to idenfity the group each activity belongs to
// id automatically created with UUID()
struct Activity: Identifiable {
    
    var id = UUID()
    var name: String
    var image: String
    var group: ActivityType
    
    
}

//Defining enum called ActivityType representing the muscle groups
//String protocol takes the case and makes the raw value == stirng for ex: (.cardio ActivityType.cardio.rawValue == "cardio")
//Idenfitiable protocol lets each case have unique id
enum ActivityType: String, CaseIterable, Identifiable {
    case cardio
    case chest
    case back
    case shoulder
    case arms
    case legs
    case core
    case other
    
    var id: String {
        self.rawValue
    }
   
}



let activitiesArray: [Activity] = [
    
    //
    //Cardio Section
    //
    Activity(name: "Running", image: "running", group: .cardio),
    Activity(name: "Jump Rope", image: "jumpRope", group: .cardio),
    Activity(name: "Cycling", image: "cycling",group: .cardio),
    Activity(name: "Swimming", image: "swimming", group: .cardio),
    Activity(name: "Elliptical", image: "elliptical", group: .cardio),
    Activity(name: "Boxing", image: "boxing", group: .cardio),
    Activity(name: "Walking", image: "walking", group: .cardio),
    Activity(name: "Stairs", image: "stairs", group: .cardio),
    
    //
    //Chest Section
    //
    Activity(name: "Bench Press", image: "benchPress", group: .chest),
    Activity(name: "Incline Press", image: "inclinePress",group: .chest),
    Activity(name: "Push-ups", image: "pushup 1",group: .chest),
    Activity(name: "Fly", image: "crossOver",group: .chest),
    Activity(name: "Dips", image: "dips",group: .chest),
    Activity(name: "Pec Deck", image: "pecDeck",group: .chest),
    
    //
    //Back Section
    //
    Activity(name: "Pull-ups", image: "pullup", group: .back),
    Activity(name: "Lat Pulldown", image: "latpulldown1", group: .back),
    Activity(name: "Row", image: "row", group: .back),
//    Activity(name: "Face Pulls", image: "facePulls", group: .back),
    Activity(name: "Deadlift", image: "deadlift", group: .back),
//    Activity(name: "Back Extension", image: "backExtension", group: .back),
    
    //
    //Shoulder Section
    //
    Activity(name: "Overhead Press", image: "overheadPress", group: .shoulder),
    Activity(name: "Lateral Raises", image: "lateralRaise", group: .shoulder),
    Activity(name: "Front Raises", image: "frontRaise", group: .shoulder),
    Activity(name: "Shrugs", image: "shrug", group: .shoulder),
    
    //
    //Arms Section
    //
    Activity(name: "Bicep Curls", image: "bicepCurl", group: .arms),
    Activity(name: "Hammer Curl", image: "hammerCurl", group: .arms),
    Activity(name: "Preacher Curl", image: "preacherCurl", group: .arms),
    Activity(name: "Tricep Pushdown", image: "tricepPushdown", group: .arms),
    Activity(name: "Tricep Extension", image: "tricepExtension", group: .arms),
    Activity(name: "Skull Crusher", image: "skullCrusher", group: .arms),
    
    //
    //Legs Section
    //
    Activity(name: "Barbell Squat", image: "barbellSquat", group: .legs),
    Activity(name: "Leg Press", image: "legPress", group: .legs),
    Activity(name: "Leg Extension", image: "legExtension", group: .legs),
    Activity(name: "Hamstring Curl", image: "hamstringCurl", group: .legs),
    Activity(name: "Calf Raises", image: "calfRaises", group: .legs),
    Activity(name: "Split Squat", image: "splitSquat", group: .legs),
    
    //
    //Core Section
    //
    Activity(name: "Plank", image: "plank", group: .core),
    Activity(name: "Sit-ups", image: "sitUps", group: .core),
    Activity(name: "Russian Twist", image: "russianTwist", group: .core),
    Activity(name: "Leg Raise", image: "legRaise", group: .core),
    Activity(name: "Crunches", image: "crunches", group: .core),
    Activity(name: "Ab Wheel", image: "abWheel", group: .core),
    
    //
    //Other Section
    //
    Activity(name: "Yoga", image: "yoga", group: .other),
    Activity(name: "Stretching", image: "stretching1", group: .other),
    Activity(name: "Pilates", image: "pilates", group: .other),
    Activity(name: "Foam Rolling", image: "foamRolling", group: .other)
    
    
    
    
]







