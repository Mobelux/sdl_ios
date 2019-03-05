//  SDLOnPermissionsChange.m
//

#import "SDLOnPermissionsChange.h"

#import "NSMutableDictionary+Store.h"
#import "SDLRPCParameterNames.h"
#import "SDLRPCFunctionNames.h"
#import "SDLPermissionItem.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLOnPermissionsChange

- (instancetype)init {
    if (self = [super initWithName:SDLRPCFunctionNameOnPermissionsChange]) {
    }
    return self;
}

- (void)setPermissionItem:(NSArray<SDLPermissionItem *> *)permissionItem {
    [parameters sdl_setObject:permissionItem forName:SDLRPCParameterNamePermissionItem];
}

- (NSArray<SDLPermissionItem *> *)permissionItem {
    return [parameters sdl_objectsForName:SDLRPCParameterNamePermissionItem ofClass:SDLPermissionItem.class];
}

@end

NS_ASSUME_NONNULL_END
