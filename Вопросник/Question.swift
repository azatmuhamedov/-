//
//  Question.swift
//  Вопросник
//
//  Created by Азат Мухамедов on 14.01.2023.
//

//создаю модель

struct Question {             //структура
    let title: String
    let type: ResponseType     //   перечисление
    let answers: [Answer]
}

enum ResponseType {          //перечисление
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐸"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вас нравится быть с друзьями"
        case .cat:
            return "Вы себе на уме"
        case .rabbit:
            return "Вам нравится все мягкое"
        case .turtle:
            return "Вы очень быстрый"
        }
    }
}

extension Question {
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу предпочитаете?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", type: .dog),
                    Answer(title: "Рыба", type: .cat),
                    Answer(title: "Морковь", type: .rabbit),
                    Answer(title: "Кукуруза", type: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(title: "Плавать", type: .dog),
                    Answer(title: "Спать", type: .cat),
                    Answer(title: "Обниматься", type: .rabbit),
                    Answer(title: "Есть", type: .turtle)
        ]
                ),
            Question(
                title: "Любите ли вы поездки на машине?",
                type: .ranged,
                answers: [
                    Answer(title: "Ненавижу", type: .dog),
                    Answer(title: "Нервничаю", type: .cat),
                    Answer(title: "Не замечаю", type: .rabbit),
                    Answer(title: "Обожаю", type: .turtle)
                    ]
                ),
            ]
    }
}
