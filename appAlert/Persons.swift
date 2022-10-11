//
//  Persons.swift
//  appAlert
//
//  Created by Anton Kaznacheev on 09.10.2022.
//

import UIKit

struct Users {
    let login: String
    let password: String
    let person: Persons
    
    static func getUser() -> Users {
        Users(
            login: "User",
            password: "Password",
            person: Persons.getPerson()
        )
    }
}

struct Persons {
    let name: String
    let ferstName: String
    let images: String
    let text: String
    
    var descriptor: String {
        "\(name) \(ferstName)"
    }
    
    static func getPerson() -> Persons {
        Persons(
            name: "Anton",
            ferstName: "Kaznahceev",
            images: "Anton",
            text: "Часто прекрасные спортсмены, они любят помогать другим людям, готовы к бескорыстному служению ради своих идеалов. Любовь к риску приводит Рыб в автомобильный спорт, полевые госпитали спасательных отрядов, разведку, а также к мистическим учениям и духовному поиску смысла жизни. Рыбы — прирожденные психологи и экстрасенсы, отлично манипулируют окружающими. Чтобы сотрудничество с ними было плодотворным, хорошо иметь личные отношения и общие идеалы. Рыбы — очень сильный знак, представители этого знака всегда находят выход из любой критической ситуации не только для себя, но и для других,. Рыбы могут быть и очень обеспеченными людьми, так и нищими из принципа равенства и всеобщего братства."
        )
    }
}
