//
//  Food_TrackerTests.swift
//  Food TrackerTests
//
//  Created by BurnsK on 11/18/17.
//  Copyright © 2017 BurnsK. All rights reserved.
//

import XCTest
@testable import Food_Tracker

class Food_TrackerTests: XCTestCase {
    
  //MARK: Mood Class Tests
    
    // Confirm that the Mood initializer returns a Mood object when passed valid parameters.
    func testMoodInitializationSucceeds() {
        
        // Zero rating
        let zeroRatingMood = Mood.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMood)
        
        // Highest positive rating
        let positiveRatingMood = Mood.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMood)
        
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
        func testMoodlInitializationFails() {
            
            // Negative rating
            let negativeRatingMood = Mood.init(name: "Negative", photo: nil, rating: -1)
            XCTAssertNil(negativeRatingMood)
            
            // Rating exceeds maximum
            let largeRatingMood = Mood.init(name: "Large", photo: nil, rating: 6)
            XCTAssertNil(largeRatingMood)
            
            // Empty String
            let emptyStringMood = Mood.init(name: "", photo: nil, rating: 0)
            XCTAssertNil(emptyStringMood)
        }
    }
}
