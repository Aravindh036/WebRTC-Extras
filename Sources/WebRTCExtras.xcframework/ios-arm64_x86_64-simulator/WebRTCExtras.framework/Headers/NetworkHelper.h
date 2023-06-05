//
//  NetworkHelper.h
//  WebRTCExtras
//
//  Created by Aravindh on 05/06/23.
//

#import <Foundation/Foundation.h>

@interface NetworkHelper : NSObject

+ (void)observeNetworkReachability:(void (^)(BOOL))callback;

@end
