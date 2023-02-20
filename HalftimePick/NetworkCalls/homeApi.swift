////
////  homeApi.swift
////  HalftimePick
////
////  Created by Maruf Khan on 15/2/23.
////
//
//import Foundation
//import Alamofire
//import SwiftyJSON
//
//class HomeApi {
//    func getExperienceList( user : UserModel, completion : @escaping ([ExperienceModel]) -> Void ) {
//
//        let headers : HTTPHeaders = [
//            "Accept" : "application/json",
//            "Content-Type" : "application/json",
//            "Authorization" : "Bearer \(user.accessToken ?? "")",
//            "fcmToken" : AppConstants.fcmToken
//        ]
//
//
//        AF.request(UrlsEndpoints.EXPERIENCE_LIST, method: .get , headers: headers).response { [self] response in
//            print(response.value as Any)
//            let json = JSON(response.value as Any)
//            print(json)
//            switch response.result {
//            case .success(_):
//                if response.response?.statusCode == 200 || response.response?.statusCode == 201{
//                    var list = [ExperienceModel]()
//                    if let jsonData = response.value {
//                        let json = JSON(jsonData!)
//                        let data = json["data"]
//                        let experienceList = data["experiences"].arrayValue
//                        for every in experienceList {
//                            let exp = ExperienceModel(fromJson: every)
//                            list.append(exp)
//                        }
//                        completion(list)
//                    }
//                    else {
//                        completion([])
//                    }
//
//                }
//                else {
//                    delegate?.view.makeToast("Experience list can not be loaded")
//                    completion([])
//                }
//            case .failure(_):
//                delegate?.view.makeToast("Experience list can not be loaded")
//                completion([])
//            }
//
//        }
//    }
//}
