//  SDLSetGlobalPropertiesResponse.m
//


#import "SDLSetGlobalPropertiesResponse.h"

#import "NSMutableDictionary+Store.h"
#import "SDLRPCParameterNames.h"
#import "SDLRPCFunctionNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLSetGlobalPropertiesResponse

- (instancetype)init {
    if (self = [super initWithName:SDLRPCFunctionNameSetGlobalProperties]) {
    }
    return self;
}

@end

NS_ASSUME_NONNULL_END
