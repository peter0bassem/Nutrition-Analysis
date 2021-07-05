/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Parsed : Codable {
	let quantity : Int?
	let measure : String?
	let foodMatch : String?
	let food : String?
	let foodId : String?
	let weight : Double?
	let retainedWeight : Double?
	let nutrients : Nutrients?

	enum CodingKeys: String, CodingKey {

		case quantity = "quantity"
		case measure = "measure"
		case foodMatch = "foodMatch"
		case food = "food"
		case foodId = "foodId"
		case weight = "weight"
		case retainedWeight = "retainedWeight"
		case nutrients = "nutrients"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		quantity = try values.decodeIfPresent(Int.self, forKey: .quantity)
		measure = try values.decodeIfPresent(String.self, forKey: .measure)
		foodMatch = try values.decodeIfPresent(String.self, forKey: .foodMatch)
		food = try values.decodeIfPresent(String.self, forKey: .food)
		foodId = try values.decodeIfPresent(String.self, forKey: .foodId)
		weight = try values.decodeIfPresent(Double.self, forKey: .weight)
		retainedWeight = try values.decodeIfPresent(Double.self, forKey: .retainedWeight)
		nutrients = try values.decodeIfPresent(Nutrients.self, forKey: .nutrients)
	}
    
    init(quantity : Int, measure : String, food : String, weight : Double,nutrients : Nutrients) {
        self.quantity = quantity
        self.measure = measure
        self.foodMatch = ""
        self.food = food
        self.foodId = ""
        self.weight = weight
        self.retainedWeight = 0
        self.nutrients = nutrients
    }

}
