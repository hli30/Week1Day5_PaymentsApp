//
//  PaymentGateway.h
//  PaymentsApp
//
//  Created by Harry Li on 2017-06-03.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate;

@interface PaymentGateway : NSObject

@property (nonatomic) id <PaymentDelegate> paymentDelegate;

-(void)processPaymentAmount:(NSInteger) payment;

@end

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger) payment;
-(BOOL)canProcessPayment;

@end
