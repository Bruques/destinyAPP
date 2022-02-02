//
//  StoryBrain.swift
//  destinyAPP
//
//  Created by Bruno Nascimento Marques on 01/02/22.
//

import Foundation

struct StoryBrain {
    
    let stories = [
        Story(
            title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            choice1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
            choice2: "Better ask him if he's a murderer first.", choice2Destination: 1
        ),
        Story(
            title: "He nods slowly, unfazed by the question.",
            choice1: "At least he's honest. I'll climb in.", choice1Destination: 2,
            choice2: "Wait, I know how to change a tire.", choice2Destination: 3
        ),
        Story(
            title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choice1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5,
            choice2: "It's him or me! You take the knife and stab him.", choice2Destination: 4
        ),
        Story(
            title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]
    
    // Criei essa array pra daqui um tempo eu tentar traduzir meu app.
    let storiesBr = [
        Story(
            title: "Seu carro estourou um pneu em uma estrada sinuosa no meio do nada, sem sinal de celular. Você decide pegar carona. Uma caminhonete enferrujada pára ao seu lado. Um homem com um chapéu de abas largas e olhos sem alma abre a porta do passageiro para você e pergunta: 'Precisa de uma carona, garoto?'.",
            choice1: "Sim senhor. Muito obrigado pela ajuda", choice1Destination: 2,
            choice2: "Melhor perguntar se ele é um assassino primeiro.", choice2Destination: 1
        ),
        Story(
            title: "Ele balança a cabeça lentamente, inabalável com a pergunta.",
            choice1: "Pelo menos ele é honesto. Eu vou subir.", choice1Destination: 2,
            choice2: "Espere, eu sei como trocar um pneu.", choice2Destination: 3
        ),
        Story(
            title: "Quando você começa a dirigir, o estranho começa a falar sobre seu relacionamento com a mãe. Ele fica cada vez mais irritado a cada minuto. Ele pede para você abrir o porta-luvas. Dentro você encontra uma faca ensanguentada, dois dedos decepados e uma fita cassete de Elton John. Ele pega no porta-luvas.",
            choice1: "Eu adoro Elton John! Entrega-lhe a fita cassete.", choice1Destination: 5,
            choice2: "É ele ou eu! Você pega na faca e o esfaqueia.", choice2Destination: 4
        ),
        Story(
            title: "O quê? Um polícia assim fora! Sabia que os acidentes de trânsito são a segunda principal causa de morte acidental para a maioria dos grupos etários adultos?",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "Enquanto se esmaga o guarda-corpos e se cuida em direcção às rochas recortadas por baixo, reflecte-se na duvidosa sabedoria de esfaquear alguém enquanto este conduz um carro em que se está.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "Ligas-te ao assassino enquanto cantas versos de 'Can you feel the love tonight'. Ele deixa-vos na próxima cidade. Antes de ires, ele pergunta-te se conheces algum bom local para despejar corpos. Responde: 'Experimenta o cais'.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
        
    ]

    var storyNumber = 0
    lazy var translation = stories
    
    mutating func nextStory(userChoice: String) {
        let currentStory = translation[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = translation[storyNumber].choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = translation[storyNumber].choice2Destination
        }
    }
    
    mutating func selectedLanguage(language: Int) {
        if language == 0 {
            translation = stories
        } else if language == 1 {
            translation = storiesBr
        }
    }
}
