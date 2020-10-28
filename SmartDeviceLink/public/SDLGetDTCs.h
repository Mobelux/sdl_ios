/*
 * Copyright (c) 2020, SmartDeviceLink Consortium, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this
 * list of conditions and the following disclaimer.
 *
 * Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following
 * disclaimer in the documentation and/or other materials provided with the
 * distribution.
 *
 * Neither the name of the SmartDeviceLink Consortium Inc. nor the names of
 * its contributors may be used to endorse or promote products derived
 * from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */


#import "SDLRPCRequest.h"

NS_ASSUME_NONNULL_BEGIN

/**
 * This RPC allows to request diagnostic module trouble codes from a certain
 * vehicle module
 * <p>
 * Function Group: ProprietaryData
 * <p>
 * <b>HMILevel needs to be FULL, LIMITED or BACKGROUND</b>
 * <p>
 */
@interface SDLGetDTCs : SDLRPCRequest

/**
 * @param ecuName - @(ecuName)
 * @return A SDLGetDTCs object
 */
- (instancetype)initWithEcuName:(UInt16)ecuName;

/**
 * @param ecuName - @(ecuName)
 * @param dtcMask - dtcMask
 * @return A SDLGetDTCs object
 */
- (instancetype)initWithEcuName:(UInt16)ecuName dtcMask:(nullable NSNumber<SDLUInt> *)dtcMask;

/// Convenience init
///
/// @param name Name of the module to receive the DTC form
/// @return An SDLGetDTCs object
- (instancetype)initWithECUName:(UInt16)name __deprecated_msg("Use initWithEcuName: instead");

/// Convenience init with all properties
///
/// @param name Name of the module to receive the DTC form
/// @param mask DTC Mask Byte to be sent in diagnostic request to module
/// @return An SDLGetDTCs object
- (instancetype)initWithECUName:(UInt16)name mask:(UInt8)mask __deprecated_msg("Use initWithEcuName: instead");

/**
 * a name of the module to receive the DTC form
 * @discussion an NSNumber value representing a name of the module to receive
 *            the DTC form
 *            <p>
 *            <b>Notes: </b>Minvalue:0; Maxvalue:65535
 */
@property (strong, nonatomic) NSNumber<SDLInt> *ecuName;
/**
 *  DTC Mask Byte to be sent in diagnostic request to module. NSNumber* dtcMask Minvalue:0; Maxvalue:255
 */
@property (nullable, strong, nonatomic) NSNumber<SDLInt> *dtcMask;
@end

NS_ASSUME_NONNULL_END
