import XCTest
@testable import MyMeals

class MyMealsTests: XCTestCase {
    
    func testMealInitializationSucceds() {
        
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        let positiveRatingMeal = Meal(name: "Max", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationFails() {
        
        let largeRatingMeal = Meal(name: "Exeed", photo: nil, rating: 9)
        XCTAssertNil(largeRatingMeal)
        
        let noNameMeal = Meal(name: "", photo: nil, rating: 1)
        XCTAssertNil(noNameMeal)
        
        let negativeRatingMeal = Meal(name: "Negative", photo: nil, rating: -3)
        XCTAssertNil(negativeRatingMeal)
        
    }
}
