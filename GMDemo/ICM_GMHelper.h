//
//  ICM_GMHelper.h
//  GMDemo
//
//  Created by Brett Nishikawa on 2014-03-25.
//
//

#import <Foundation/Foundation.h>

@interface ICM_GMHelper : NSObject
- (void)setDirectionsQuery:(NSDictionary *)object withSelector:(SEL)selector
              withDelegate:(id)delegate;
- (void)retrieveDirections:(SEL)sel withDelegate:(id)delegate;
- (void)fetchedData:(NSData *)data withSelector:(SEL)selector
       withDelegate:(id)delegate;
@end
