//
//  File.swift
//  AppTV
//
//  Created by Natalka on 7/6/21.
//

import Foundation

struct LoadData{
    func fetchPostData(completionHendler: @escaping ([Show]) -> Void){
        let url = URL(string: "https://api.tvmaze.com/schedule/full")!

        let task = URLSession.shared.dataTask(with: url){
            (data, response, error) in
            guard let data = data else { return }
            do{
                print(data)
                let postsData = try? JSONDecoder().decode([Show].self, from: data)
                print(postsData)
            }
            catch{
                let error = error
                print(error.localizedDescription)
            }
        }.resume()
    }
}
