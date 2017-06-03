//
//  PaypalPaymentService.m
//  PaymentsApp
//
//  Created by Harry Li on 2017-06-03.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger) payment{
    NSLog(@"Payment of $%ld with Paypal", payment);
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
