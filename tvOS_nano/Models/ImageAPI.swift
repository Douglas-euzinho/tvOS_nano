//
//  ImageAPI.swift
//  tvOS_nano
//
//  Created by Douglas Figueirôa on 18/05/22.
//

import UIKit

class ImageSearchAPI{
    public static func request(param: String, completionHandler: @escaping (Data) -> Void ){
        let session = URLSession.shared
        let baseURL = "https://sis-api.herokuapp.com/sis/api/v1/search/image/"
        
        let url = URL(string: "\(baseURL)/\(param)")
        let task = session.dataTask(with: url!) { data, response, error in
            if error == nil {
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else{
                    print("Erro Api Imagem codigo = \(String(describing: (response as? HTTPURLResponse)?.statusCode))")
                    return
                }
                guard let mime = response?.mimeType, mime == "application/json" else{
                    print("Erro MIME Type")
                    return
                }
                
                if let data = data {
                    completionHandler(data)
                }
            }else{
                print("Erro Na Busca dos dados \(error?.localizedDescription ?? "Erro não definido")")
            }
        }
        task.resume()
    }
}
