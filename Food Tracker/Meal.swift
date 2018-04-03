//
//  Meal.swift
//  Food Tracker
//
//  Created by Phan Quân on 4/2/18.
//  Copyright © 2018 Phan Quân. All rights reserved.
//

import UIKit

    class Meal {
        
        // MARK: Properties
        
        var name: String
        var photo: UIImage?
        var rating: Int
        
        // MARK: Initialization
        
        init?(name: String, photo: UIImage?, rating: Int) {
            
            // initialize stored properties
            self.name = name
            self.photo = photo
            self.rating = rating
            
            // initialization should fail if there is no name or the rating is negative
            
            
            //if name.isEmpty || rating < 0 {
            //    return nil
            
            // the name must not be empty
            guard !name.isEmpty else {
                return nil
            }
            
            // the rating must not exceed these limits
            guard (rating >= 0) && (rating <= 5) else {
                return nil
            }
        }
    }
