class User {
    var countryCode: CountryCode
    var phoneNumber: String
    
    init(countryCode: CountryCode, phoneNumber: String) {
        self.countryCode = countryCode
        self.phoneNumber = phoneNumber
    }
    
    func getPhoneNumbersForCanada() {
        if self.countryCode == CountryCode.Canada {
            print(self.phoneNumber)
        }
    }

    func getPhoneNumbersForIreland() {
        if self.countryCode == CountryCode.Ireland {
            print(self.phoneNumber)
        }
    }

    func getPhoneNumbersForKyrgyzstan() {
        if self.countryCode == CountryCode.Kyrgyzstan {
            print(self.phoneNumber)
        }
    }

    func getPhoneNumbersForCzechRepublic() {
        if self.countryCode == CountryCode.CzechRepublic {
            print(self.phoneNumber)
        }
    }
    
    
}
