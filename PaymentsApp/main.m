//
//  main.m
//  PaymentsApp
//
//  Created by Harry Li on 2017-06-03.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *input = [InputHandler new];
        while(true){
            NSInteger randDollar = arc4random_uniform(1001) + 100;
            
            NSLog(@"\nThank you for shopping at Acme.com Your total today is $%ld \nPlease select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", randDollar);
            
            NSInteger userInput = [input inputString].integerValue;
            
            PaymentGateway *pay = [PaymentGateway new];
            
            switch (userInput) {
                case 1:
                {
                    PaypalPaymentService *payPal = [PaypalPaymentService new];
                    pay.paymentDelegate = payPal;
                    break;
                }
                case 2:
                {
                    StripePaymentService *stripe = [StripePaymentService new];
                    pay.paymentDelegate = stripe;
                    
                    break;
                }
                case 3:
                {
                    AmazonPaymentService *amazon = [AmazonPaymentService new];
                    pay.paymentDelegate = amazon;
                    break;
                }
                case 4:
                {
                    ApplePaymentService *apple = [ApplePaymentService new];
                    pay.paymentDelegate = apple;
                    break;
                }
                default:
                    break;
            }
            
            [pay processPaymentAmount:randDollar];
        }
    }
    return 0;
}
