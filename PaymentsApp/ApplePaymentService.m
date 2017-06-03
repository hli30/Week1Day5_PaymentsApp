//
//  ApplePaymentService.m
//  PaymentsApp
//
//  Created by Harry Li on 2017-06-03.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void)processPaymentAmount:(NSInteger) payment{
    NSLog(@"Payment of $%ld with ApplePay", payment);
}

-(BOOL)canProcessPayment{
    int i = arc4random_uniform(2);
    
    if(i == 0){
        return NO;
    }else{
        return YES;
    }
}

@end
