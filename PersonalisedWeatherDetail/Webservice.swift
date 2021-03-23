//
//  Webservice.swift
//  PersonalisedWeatherDetail
//
//  Created by Sachin Sabat on 23/03/21.
//

import Foundation

struct Resource<Type> {
    let url: URL
    let fetchData: (Data) -> Type?
}


final class Webservice {
    
    func load<Type>(resource: Resource<Type>, completion: @escaping (Type?) -> ()){
        
        URLSession.shared.dataTask(with: resource.url) {
            data , response , error in
            
            if let data = data {
                DispatchQueue.main.async {
                     completion(resource.fetchData(data))
                }
            } else{
                completion(nil)
            }
            
        }.resume()
        
    }
    
    
}
