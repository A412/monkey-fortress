//
//  Game.m
//  Monkeys
//
//  Created by Chase Smith on 11/9/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Game.h"
#import "Banana.h"

@implementation Game
{
    CCPhysicsNode *_physicsNode;
    CCNode *_midSpawn;
}

-(void)didLoadFromCCB
{
    self.userInteractionEnabled = TRUE;
}

-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    [self makeBanana];
}

-(void)makeBanana
{
    CCLOG(@"makeBanana called");
    CCNode* banana = [CCBReader load:@"Banana"];
    CCLOG(@"banana loaded");
    banana.position = ccp(arc4random_uniform(300),100);
    CCLOG(@"banana placed");
    [_physicsNode addChild: banana];
    CCLOG(@"physics added");
}

@end
