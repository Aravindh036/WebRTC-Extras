// SampleLibrary.m

#import "DataHelper.h"
#import <Foundation/Foundation.h>

@implementation DataHelper

+ (int32_t)getInt32FromData:(NSData *)data atIndex:(NSUInteger)startIndex {
    int32_t value;
    [data getBytes:&value range:NSMakeRange(startIndex, sizeof(int32_t))];
    return ntohl(value);
}

+ (int16_t)getInt16FromData:(NSData *)data atIndex:(NSUInteger)startIndex {
    int16_t value;
    [data getBytes:&value range:NSMakeRange(startIndex, sizeof(int16_t))];
    return ntohs(value);
}

+ (int8_t)getInt8FromData:(NSData *)data atIndex:(NSUInteger)startIndex {
    int8_t value;
    [data getBytes:&value range:NSMakeRange(startIndex, sizeof(int8_t))];
    return value;
}

+ (NSString *)getStringFromData:(NSData *)data atIndex:(NSUInteger)startIndex length:(NSUInteger)length {
    NSData *subdata = [data subdataWithRange:NSMakeRange(startIndex, length)];
    NSString *string = [[NSString alloc] initWithData:subdata encoding:NSUTF8StringEncoding];
    return string;
}

+ (id)getValueFromData:(NSData *)data atIndex:(NSUInteger)startIndex size:(NSUInteger)size {
    id value = nil;
    [data getBytes:&value range:NSMakeRange(startIndex, size)];
    return value;
}

+ (void)appendValue:(id)value toMutableData:(NSMutableData *)mutableData {
    [mutableData appendBytes:&value length:sizeof(value)];
}

+ (void)appendStringValue:(NSString *)value toMutableData:(NSMutableData *)mutableData {
    NSData *data = [value dataUsingEncoding:NSUTF8StringEncoding];
    [mutableData appendData:data];
}

+ (NSUInteger)uintegerFromInt:(int)value {
    if (value < 0) {
        // Handle negative values differently if needed
        return 0;
    }
    return (NSUInteger)value;
}

+ (id)jsonStringParseWithString:(NSString *)string {
    NSData *jsonData = [string dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    if (jsonData) {
        NSError *error = nil;
        id jsonObject = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
        if (error) {
            NSLog(@"Error parsing JSON: %@", error);
        }
        return jsonObject;
    }
    return nil;
}


@end
