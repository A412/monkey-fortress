//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "MainScene.h"

@implementation MainScene

-(void) start
{
    CCScene *gameScene = [CCBReader loadAsScene:@"Game"];
    [[CCDirector sharedDirector] replaceScene:gameScene];
}

@end
