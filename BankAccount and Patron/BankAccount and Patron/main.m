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
- (int) balance;
- (void) increaseMoneyB:(int)i;
- (void) decreaseMoneyB:(int)d;
- (void) showBalance;

@end

@implementation BankAccount {
    
    int balance;
}

- (void) setBalance:(int)a {
    
    balance = a;
}

- (int) balance {
    
    return balance;
}

- (void) showBalance {
    
    NSLog(@"The current balance of this account is %d.", balance);
}

- (void) increaseMoneyB:(int)i {
    
    balance = balance = i;

}

- (void) decreaseMoneyB:(int)d {
    
    balance = balance - d;
    
}


@end


@interface Patron : NSObject

- (void) setPocket:(int)p;
- (void) setName:(NSString*)n;
- (void) increaseMoneyP:(int)x;
- (void) decreaseMoneyP:(int)y;
- (void) setBankAccount: (BankAccount*)b;
- (void) showBalance;

@end

@implementation Patron {
    
    BankAccount *bankAccount;
    int pocket;
    NSString *name;
    
}

- (void)setBankAccount: (BankAccount*)b {
    
    bankAccount = b;
    
}

- (void) setPocket:(int)p {
    pocket = p;
}

- (void) setName:(NSString*)n {
    name = n;
}

- (void) increaseMoneyP:(int)x {
    
    pocket = pocket + x;
    
    [bankAccount decreaseMoneyB:x];
    
}

- (void) decreaseMoneyP:(int)y {
    
    pocket = pocket - y;
    
    [bankAccount increaseMoneyB:y];
    
    
}

- (void) showBalance {
    
    NSLog(@"Your current pocket is %d.", pocket);
    NSLog(@"Your current bank balance is %d", [bankAccount balance]);
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        BankAccount *account = [[BankAccount alloc] init];
        [account setBalance:150];
        [account showBalance];
        
        Patron *pat = [[Patron alloc] init];
        [pat setPocket:5];
        [pat setName:@"Chris"];
        [pat setBankAccount:account];
        [pat showBalance];
        
        NSLog(@"Chris takes out $50.");
        
        [pat increaseMoneyP:50];
        [pat showBalance];
        
    }
    return 0;
}
