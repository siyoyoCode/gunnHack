//
//  JSONManager.swift
//  JSONtest
//
//  Created by Emma Cao on 1/22/23.
//

import Foundation

//func getData(from url: String) {
//    let task = URLSession.shared.dataTask(with: URL(string:url)!, completionHandler: {data, response, error in
//        guard let data = data, error == nil else {
//            print("something went wrong")
//            return
//        }
//
//        // have data
//        var result : ClubList?
//        do {
//            result = try JSONDecoder().decode(ClubList.self, from: data)
//        }
//        catch {
//            print("failed to convert")
//        }
//
//        guard let json = result else { // if we've gotten this far, we've now gotten our object
//            return
//        }
//
//        print(json.clubs)
//
//    })
//
//    task.resume()
//
//}

//struct Sheet : Codable {
//    var sheet : [ClubList]?
//
//    static let allClubs : [ClubList] = Bundle.main.decode(file: "clubs.json")
//}
//
//struct ClubList : Codable {
//    var clubs : [Club]?
//
//    //static let allClubs : ClubList = getData(from: url)
//
//}

struct Club : Codable {
    static let allClubs : [Club] = Bundle.main.decode(file: "test3.json")
    var name:String
    var returningStatus:String
    var tier:Int
    var description:String
    var meetingDay:String
    var meetingTime:String
    var meetingRoom:String
    var clubPres:String
    var teacherAdvisor:String
    var teacherEmail:String
    var teacherCoAdvisor:String?
    var teacherCoAdvisorEmail:String?
    var category:String
}

extension Bundle {
    func decode<T: Decodable>(file:String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("could not find file in the project")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("could not load file in the project")
        }

        let decoder = JSONDecoder()

        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("could not decode the file")
        }

        return loadedData
    }
}
