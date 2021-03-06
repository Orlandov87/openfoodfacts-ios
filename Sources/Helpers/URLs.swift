//
//  URLs.swift
//  OpenFoodFacts
//
//  Created by Andrés Pizá Bückmann on 19/10/2017.
//  Copyright © 2017 Andrés Pizá Bückmann. All rights reserved.
//

import Foundation

struct URLs {
    static let Discover = "https://world.openfoodfacts.org/discover"
    static let HowToContribute = "https://world.openfoodfacts.org/contribute"
    static let CreateAccount = "https://world.openfoodfacts.org/cgi/user.pl"
    static let ForgotPassword = "https://world.openfoodfacts.org/cgi/reset_password.pl"
    static let Edit = "https://world.openfoodfacts.org/cgi/product.pl?type=edit&code="
    static let YourContributions = "https://world.openfoodfacts.org/contributor/"
    static let ProductBaseURLWithLanguagePlaceholder = "https://world-LANGUAGE.openfoodfacts.org/product/"
    static let OpenBeautyFacts = "itms-apps://itunes.apple.com/us/app/open-beauty-facts/id1122926380?mt=8"
    static let SupportOpenFoodFacts = "https://www.helloasso.com/associations/open-food-facts/formulaires/1/widget/en"
    static let TranslateOpenFoodFacts = "https://crowdin.com/project/openfoodfacts"
    static let FrequentlyAskedQuestions = "https://world.openfoodfacts.org/faq"
  
    static let ProductBaseURL: String = {
        return ProductBaseURLWithLanguagePlaceholder.replacingOccurrences(of: "LANGUAGE", with: Locale.current.languageCode!)
    }()

    static func urlForProduct(with code: String?) -> String {
        guard let code = code else {
            return Discover
        }
        return ProductBaseURL + code
    }
}
