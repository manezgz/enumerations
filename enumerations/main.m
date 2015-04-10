//
//  main.m
//  enumerations
//
//  Created by Jose Manuel Franco on 6/4/15.
//  Copyright (c) 2015 Jose Manuel Franco. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //NSString
        __block int ix=0;
       // NSMutableString *test=@"Prueba";
        
        [@"Hola\nMundo" enumerateLinesUsingBlock:^(NSString *line, BOOL *stop) {
            
            //test=@"hjkhkhj"; Peta ya que el puntero no puede cambiar
            //[test appendString:@"Hi"];
            //static int ix=0;
            NSLog(@"Linea %d : %@",++ix,line);
        }];
        
        
       //NSArray
        NSArray *episodes=@[@"IV",@"V",@"VI",@"I",@"II",@"III"];
        
        [episodes enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"Episode %lu: %@",(unsigned long)idx,obj);
        }];
        
        [episodes enumerateObjectsWithOptions:NSEnumerationConcurrent
                                   usingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                                       NSLog(@"Episode %lu: %@",(unsigned long)idx,obj);
                                   }];
        
        //NSDictioanry
        NSDictionary *bso=@{@"Star Wars": @"John Williams",@"Inception":@"Hans Zimmer"};
        [bso enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            NSLog(@"La BSO de %@ ha sido compuesta por %@",key,obj);
        }];
    }
    return 0;
}
