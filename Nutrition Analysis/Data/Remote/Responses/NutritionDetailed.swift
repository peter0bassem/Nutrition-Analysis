/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct NutritionDetailed : Codable {
	let uri : String?
	let yield : Int?
	let calories : Int?
	let totalWeight : Double?
	let dietLabels : [String]?
	let healthLabels : [String]?
	let cautions : [String]?
	let totalNutrients : TotalNutrients?
	let totalDaily : TotalDaily?
    let totalNutrientsKCal : TotalNutrientsKCal?
	let ingredients : [Ingredients]?

	enum CodingKeys: String, CodingKey {

		case uri = "uri"
		case yield = "yield"
		case calories = "calories"
		case totalWeight = "totalWeight"
		case dietLabels = "dietLabels"
		case healthLabels = "healthLabels"
		case cautions = "cautions"
		case totalNutrients = "totalNutrients"
		case totalDaily = "totalDaily"
        case totalNutrientsKCal = "totalNutrientsKCal"
		case ingredients = "ingredients"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		uri = try values.decodeIfPresent(String.self, forKey: .uri)
		yield = try values.decodeIfPresent(Int.self, forKey: .yield)
		calories = try values.decodeIfPresent(Int.self, forKey: .calories)
		totalWeight = try values.decodeIfPresent(Double.self, forKey: .totalWeight)
		dietLabels = try values.decodeIfPresent([String].self, forKey: .dietLabels)
		healthLabels = try values.decodeIfPresent([String].self, forKey: .healthLabels)
		cautions = try values.decodeIfPresent([String].self, forKey: .cautions)
		totalNutrients = try values.decodeIfPresent(TotalNutrients.self, forKey: .totalNutrients)
		totalDaily = try values.decodeIfPresent(TotalDaily.self, forKey: .totalDaily)
		ingredients = try values.decodeIfPresent([Ingredients].self, forKey: .ingredients)
        totalNutrientsKCal = try values.decodeIfPresent(TotalNutrientsKCal.self, forKey: .totalNutrientsKCal)
	}
    
    init(calories: Int, totalWeight: Double, totalNutrients: TotalNutrients, totalDaily : TotalDaily) {
        self.uri = ""
        self.yield = nil
        self.calories = calories
        self.totalWeight = totalWeight
        self.dietLabels = nil
        self.healthLabels = nil
        self.cautions = nil
        self.totalNutrients = totalNutrients
        self.totalDaily = totalDaily
        self.totalNutrientsKCal = nil
        self.ingredients = nil
    }

}
