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

@end

@implementation BankAccount

- (void) setBalance:(int)b {
    
    int setBalance = b;
}

@end


@interface Patron : NSObject

- (void) setAccountBalance:(int)a;
- (void) setPocket:(int)p;
- (void) setName:(NSString*)n;


@end

@implementation Patron

- (void) setAccountBalance:(int)a {
    
    int setAccountBalance = a;
}

- (void) setPocket:(int)p {
    
    int setPocket = p;
}

- (void) setName:(NSString*)n {
    
    NSString *setName = n;
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
    }
    return 0;
}
