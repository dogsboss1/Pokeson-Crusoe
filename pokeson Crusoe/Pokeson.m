//
//  Pokeson.m
//  pokeson Crusoe
//
//  Created by felix king on 9/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "Pokeson.h"

@implementation Pokeson

+ (Pokeson *)randomPokeson {
    Pokeson *p = [[Pokeson alloc] init];
    NSInteger randPokeson = arc4random_uniform(5);
    NSInteger randEmotion = arc4random_uniform(5);
    
    if (randPokeson == 0) {
        p.name = @"Dineson";
        p.hitpoints = 20 + arc4random_uniform(30);
        p.happiness = 30 + arc4random_uniform(30);
        p.image_fileName = @"dinosaur";
    } else if (randPokeson == 1) {
        p.name = @"Evil bat pokeson";
        p.hitpoints = 700 + arc4random_uniform(400);
        p.happiness = 3 + arc4random_uniform(9);
        p.image_fileName = @"bat thing";
    } else if (randPokeson == 2) {
        p.name = @"Sleepy Dineson";
        p.hitpoints = 200 + arc4random_uniform(900);
        p.happiness = 350 + arc4random_uniform(900);
        p.image_fileName = @"dinosaur";
    } else if (randPokeson == 3) {
        p.name = @"Crazed Dienson";
        p.hitpoints = 30 + arc4random_uniform(40);
        p.happiness = 2 + arc4random_uniform(10);
        p.image_fileName = @"dinosaur";
    } else if (randPokeson == 4) {
        p.name = @"Evil bat pokeson";
        p.hitpoints = 500 + arc4random_uniform(600);
        p.happiness = 6 + arc4random_uniform(8);
        p.image_fileName = @"bat thing";
    }
    
    if (randEmotion == 0) {
        p.emotionText = @"Sleepy";
    } else if (randEmotion == 1) {
        p.emotionText = @"Happy";
    } else if (randEmotion == 2) {
        p.emotionText = @"Angry";
    } else if (randEmotion == 3) {
        p.emotionText = @"Tired";
    } else if (randEmotion == 4) {
        p.emotionText = @"Sad";
    }
    
    
    
    return p;
}


@end
