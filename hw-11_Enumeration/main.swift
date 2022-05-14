//Домашнее задание №4.
//Создать класс User c 2 параметрами сountryCode типа Enum и phoneNumber. В main cоздать пустой массив из User. Cделать так, чтобы программа запрашивала ввод данных страны и номера. После ввода добавлять данные в объект User, объект в массив. Действие должно повторяться несколько раз. В конце сделать поисковик по стране и выводить все номера только с определенной страны.

import Darwin

var users: [User] = []

var code = 0
for i in 1...5 {
    print("Choose your country: ")
    var country = readLine()
    
    print("Enter your phone number: ")
    var number = readLine()
        
    switch country {
    case "Kyrgyzstan":
        code = CountryCode.Kyrgyzstan.rawValue
        var user1 = User(countryCode: CountryCode(rawValue: code) ?? .none, phoneNumber: "+\(code) \(number!)")
        print("Страна: \(country!), номер телефона: +\(code) \(Int(number!)!)")
        users.append(user1)
    case "Canada":
        code = CountryCode.Canada.rawValue
        var user2 = User(countryCode: CountryCode(rawValue: code) ?? .none, phoneNumber: "+\(code) \(number!)")
        print("Страна: \(country!), номер телефона: +\(code) \(Int(number!)!)")
//        print(dump(user2))
        users.append(user2)
    case "Ireland":
        code = CountryCode.Ireland.rawValue
        var user3 = User(countryCode: CountryCode(rawValue: code) ?? .none, phoneNumber: "+\(code) \(number!)")
        print("Страна: \(country!), номер телефона: +\(code) \(Int(number!)!)")
        users.append(user3)
    case "Czech Republic":
        code = CountryCode.CzechRepublic.rawValue
        var user4 = User(countryCode: CountryCode(rawValue: code) ?? .none, phoneNumber: "+\(code) \(number!)")
        print("Страна: \(country!), номер телефона: +\(code) \(Int(number!)!)")
        users.append(user4)
    default:
//        code = CountryCode.none.rawValue
        print("Your country is not on the list, try again!!!")
    }
}

//print(dump(users))

print("Choose a country: ")
var country = readLine()

for user in users {
    if country == "Canada" {
        user.getPhoneNumbersForCanada()
    } else if country == "Ireland" {
        user.getPhoneNumbersForIreland()
    } else if country == "Kyrgyzstan" {
        user.getPhoneNumbersForKyrgyzstan()
    } else if country == "Czech Republic" {
        user.getPhoneNumbersForCzechRepublic()
    } else {
        print("No country found on the list")
    }
}
