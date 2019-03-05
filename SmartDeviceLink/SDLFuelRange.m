//
//  SDLFuelRange.m
//  SmartDeviceLink
//
//  Created by Nicole on 6/20/18.
//  Copyright © 2018 smartdevicelink. All rights reserved.
//

#import "SDLFuelRange.h"

#import "NSMutableDictionary+Store.h"
#import "SDLRPCParameterNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLFuelRange

- (void)setType:(nullable SDLFuelType)type {
    [store sdl_setObject:type forName:SDLRPCParameterNameType];
}

- (nullable SDLFuelType)type {
    return [store sdl_objectForName:SDLRPCParameterNameType];
}

- (void)setRange:(nullable NSNumber<SDLFloat> *)range {
    [store sdl_setObject:range forName:SDLRPCParameterNameRange];
}

- (nullable NSNumber<SDLFloat> *)range {
    return [store sdl_objectForName:SDLRPCParameterNameRange];
}


@end

NS_ASSUME_NONNULL_END
