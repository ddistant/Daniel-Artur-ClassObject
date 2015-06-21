//
//  main.m
//  BankAccount and Patron
//
//  Created by Daniel Distant on 6/21/15.
//  Copyright (c) 2015 ddistant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankAccount : NSObject

- (void) setBalance:(int)b;
- (void) increaseMoneyB:(int)i;
- (void) decreaseMoneyB:(int)d;

@end

@implementation BankAccount

- (void) setBalance:(int)b {
    
    int setBalance = b;
    
    printf("The current balance of this account is %d", b);
}
- (void) increaseMoneyB:(int)i {

}
- (void) decreaseMoneyB:(int)d {
    
}

@end


@interface Patron : NSObject

- (void) setAccountBalance:(int)a;
- (void) setPocket:(int)p;
- (void) setName:(NSString*)n;
- (void) increaseMoneyP:(int)x;
- (void) decreaseMoneyP:(int)y;
- (void)setBankAccount: (BankAccount*)b;

@end

@implementation Patron {
    
    BankAccount *bankAccount;
}

- (void)setBankAccount: (BankAccount*)b {
    
}

- (void) setAccountBalance:(int)a {
    
    int setAccountBalance = a;
}

- (void) setPocket:(int)p {
    
    int setPocket = p;
}

- (void) setName:(NSString*)n {
    
    NSString *setName = n;
}

- (void) increaseMoneyP:(int)x {
    
}

- (void) decreaseMoneyP:(int)y {
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        BankAccount *bank = [[BankAccount alloc] init];
        [bank setBalance:100];
        
        Patron *pat = [[Patron alloc] init];
        [pat setAccountBalance:20];
        [pat setPocket:5];
        [pat setName:@"Chris"];
        [pat setBankAccount:bank];
    }
    return 0;
}
