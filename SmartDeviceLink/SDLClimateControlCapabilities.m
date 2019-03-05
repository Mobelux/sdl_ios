//
//  SDLClimateControlCapabilities.m
//

#import "SDLClimateControlCapabilities.h"
#import "SDLRPCParameterNames.h"
#import "NSMutableDictionary+Store.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLClimateControlCapabilities

- (instancetype)initWithModuleName:(NSString *)moduleName fanSpeedAvailable:(BOOL)fanSpeedAvailable desiredTemperatureAvailable:(BOOL)desiredTemperatureAvailable acEnableAvailable:(BOOL)acEnableAvailable acMaxEnableAvailable:(BOOL)acMaxEnableAvailable circulateAirAvailable:(BOOL)circulateAirEnableAvailable autoModeEnableAvailable:(BOOL)autoModeEnableAvailable dualModeEnableAvailable:(BOOL)dualModeEnableAvailable defrostZoneAvailable:(BOOL)defrostZoneAvailable ventilationModeAvailable:(BOOL)ventilationModeAvailable {

    return [self initWithModuleName:moduleName fanSpeedAvailable:fanSpeedAvailable desiredTemperatureAvailable:desiredTemperatureAvailable acEnableAvailable:acEnableAvailable acMaxEnableAvailable:acMaxEnableAvailable circulateAirAvailable:circulateAirEnableAvailable autoModeEnableAvailable:autoModeEnableAvailable dualModeEnableAvailable:dualModeEnableAvailable defrostZoneAvailable:defrostZoneAvailable ventilationModeAvailable:ventilationModeAvailable heatedSteeringWheelAvailable:NO heatedWindshieldAvailable:NO heatedRearWindowAvailable:NO heatedMirrorsAvailable:NO];
}

- (instancetype)initWithModuleName:(NSString *)moduleName fanSpeedAvailable:(BOOL)fanSpeedAvailable desiredTemperatureAvailable:(BOOL)desiredTemperatureAvailable acEnableAvailable:(BOOL)acEnableAvailable acMaxEnableAvailable:(BOOL)acMaxEnableAvailable circulateAirAvailable:(BOOL)circulateAirEnableAvailable autoModeEnableAvailable:(BOOL)autoModeEnableAvailable dualModeEnableAvailable:(BOOL)dualModeEnableAvailable defrostZoneAvailable:(BOOL)defrostZoneAvailable ventilationModeAvailable:(BOOL)ventilationModeAvailable heatedSteeringWheelAvailable:(BOOL)steeringWheelAvailable heatedWindshieldAvailable:(BOOL)windshieldAvailable heatedRearWindowAvailable:(BOOL)rearWindowAvailable heatedMirrorsAvailable:(BOOL)mirrorsAvailable {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.moduleName = moduleName;
    self.fanSpeedAvailable = @(fanSpeedAvailable);
    self.desiredTemperatureAvailable = @(desiredTemperatureAvailable);
    self.acEnableAvailable = @(acEnableAvailable);
    self.acMaxEnableAvailable = @(acMaxEnableAvailable);
    self.circulateAirEnableAvailable = @(circulateAirEnableAvailable);
    self.autoModeEnableAvailable = @(autoModeEnableAvailable);
    self.dualModeEnableAvailable = @(dualModeEnableAvailable);
    self.defrostZoneAvailable = @(defrostZoneAvailable);
    self.ventilationModeAvailable = @(ventilationModeAvailable);
    self.heatedSteeringWheelAvailable = @(steeringWheelAvailable);
    self.heatedWindshieldAvailable = @(windshieldAvailable);
    self.heatedRearWindowAvailable = @(rearWindowAvailable);
    self.heatedMirrorsAvailable = @(mirrorsAvailable);
    return self;
}

- (void)setModuleName:(NSString *)moduleName {
    [store sdl_setObject:moduleName forName:SDLRPCParameterNameModuleName];
}

- (NSString *)moduleName {
    return [store sdl_objectForName:SDLRPCParameterNameModuleName];
}

- (void)setFanSpeedAvailable:(nullable NSNumber<SDLBool> *)fanSpeedAvailable {
    [store sdl_setObject:fanSpeedAvailable forName:SDLRPCParameterNameFanSpeedAvailable];
}

- (nullable NSNumber<SDLBool> *)fanSpeedAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameFanSpeedAvailable];
}

- (void)setDesiredTemperatureAvailable:(nullable NSNumber<SDLBool> *)desiredTemperatureAvailable {
    [store sdl_setObject:desiredTemperatureAvailable forName:SDLRPCParameterNameDesiredTemperatureAvailable];
}

- (nullable NSNumber<SDLBool> *)desiredTemperatureAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameDesiredTemperatureAvailable];
}

- (void)setAcEnableAvailable:(nullable NSNumber<SDLBool> *)acEnableAvailable {
    [store sdl_setObject:acEnableAvailable forName:SDLRPCParameterNameACEnableAvailable];
}

- (nullable NSNumber<SDLBool> *)acEnableAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameACEnableAvailable];
}

- (void)setAcMaxEnableAvailable:(nullable NSNumber<SDLBool> *)acMaxEnableAvailable {
    [store sdl_setObject:acMaxEnableAvailable forName:SDLRPCParameterNameACMaxEnableAvailable];
}

- (nullable NSNumber<SDLBool> *)acMaxEnableAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameACMaxEnableAvailable];
}

- (void)setCirculateAirEnableAvailable:(nullable NSNumber<SDLBool> *)circulateAirEnableAvailable {
    [store sdl_setObject:circulateAirEnableAvailable forName:SDLRPCParameterNameCirculateAirEnableAvailable];
}

- (nullable NSNumber<SDLBool> *)circulateAirEnableAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameCirculateAirEnableAvailable];
}

- (void)setAutoModeEnableAvailable:(nullable NSNumber<SDLBool> *)autoModeEnableAvailable {
    [store sdl_setObject:autoModeEnableAvailable forName:SDLRPCParameterNameAutoModeEnableAvailable];
}

- (nullable NSNumber<SDLBool> *)autoModeEnableAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameAutoModeEnableAvailable];
}

- (void)setDualModeEnableAvailable:(nullable NSNumber<SDLBool> *)dualModeEnableAvailable {
    [store sdl_setObject:dualModeEnableAvailable forName:SDLRPCParameterNameDualModeEnableAvailable];
}

- (nullable NSNumber<SDLBool> *)dualModeEnableAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameDualModeEnableAvailable];
}

- (void)setDefrostZoneAvailable:(nullable NSNumber<SDLBool> *)defrostZoneAvailable {
    [store sdl_setObject:defrostZoneAvailable forName:SDLRPCParameterNameDefrostZoneAvailable];
}

- (nullable NSNumber<SDLBool> *)defrostZoneAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameDefrostZoneAvailable];
}

- (void)setDefrostZone:(nullable NSArray <SDLDefrostZone>*)defrostZone {
    [store sdl_setObject:defrostZone forName:SDLRPCParameterNameDefrostZone];
}

- (nullable NSArray<SDLDefrostZone> *)defrostZone {
    return [store sdl_objectForName:SDLRPCParameterNameDefrostZone];
}

- (void)setVentilationModeAvailable:(nullable NSNumber<SDLBool> *)ventilationModeAvailable {
    [store sdl_setObject:ventilationModeAvailable forName:SDLRPCParameterNameVentilationModeAvailable];
}

- (nullable NSNumber<SDLBool> *)ventilationModeAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameVentilationModeAvailable];
}

- (void)setVentilationMode:(nullable NSArray<SDLVentilationMode> *)ventilationMode {
    [store sdl_setObject:ventilationMode forName:SDLRPCParameterNameVentilationMode];
}

- (nullable NSArray<SDLVentilationMode> *)ventilationMode {
    return [store sdl_objectForName:SDLRPCParameterNameVentilationMode];
}

- (void)setHeatedSteeringWheelAvailable:(nullable NSNumber<SDLBool> *)heatedSteeringWheelAvailable {
    [store sdl_setObject:heatedSteeringWheelAvailable forName:SDLRPCParameterNameHeatedSteeringWheelAvailable];
}

- (nullable NSNumber<SDLBool> *)heatedSteeringWheelAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameHeatedSteeringWheelAvailable];
}

- (void)setHeatedWindshieldAvailable:(nullable NSNumber<SDLBool> *)heatedWindshieldAvailable {
    [store sdl_setObject:heatedWindshieldAvailable forName:SDLRPCParameterNameHeatedWindshieldAvailable];
}

- (nullable NSNumber<SDLBool> *)heatedWindshieldAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameHeatedWindshieldAvailable];
}

- (void)setHeatedRearWindowAvailable:(nullable NSNumber<SDLBool> *)heatedRearWindowAvailable {
    [store sdl_setObject:heatedRearWindowAvailable forName:SDLRPCParameterNameHeatedRearWindowAvailable];
}

- (nullable NSNumber<SDLBool> *)heatedRearWindowAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameHeatedRearWindowAvailable];
}

- (void)setHeatedMirrorsAvailable:(nullable NSNumber<SDLBool> *)heatedMirrorsAvailable {
    [store sdl_setObject:heatedMirrorsAvailable forName:SDLRPCParameterNameHeatedMirrorsAvailable];
}

- (nullable NSNumber<SDLBool> *)heatedMirrorsAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameHeatedMirrorsAvailable];
}

@end

NS_ASSUME_NONNULL_END
