//
//  Food_TrackerTests.swift
//  Food TrackerTests
//
//  Created by Phan Quân on 2/26/18.
//  Copyright © 2018 Phan Quân. All rights reserved.
//

import XCTest
@testable import Food_Tracker

class Food_TrackerTests: XCTestCase {
    
    // MARK: Meal Class Tests
    
    // Confirm that the Meals initializer returns a Meal object when passed valid parameters
    func testMealInitializationSucceeds() {
        
        // Zero rating
        let zeroMealRating = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroMealRating)
        
        // Highest positive rating
        let positiveMealRating = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveMealRating)
        
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
}
