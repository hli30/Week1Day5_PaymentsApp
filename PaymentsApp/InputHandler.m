//
//  InputHandler.m
//  PaymentsApp
//
//  Created by Harry Li on 2017-06-03.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *)inputString{
    char str[100];
    fgets (str, 100, stdin);
    
    NSString *inputString = [[NSString alloc] initWithUTF8String:str];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return inputString;
}

@end
