//
//  NSString+Hashing.m
//  Hashing_test
//
//  Created by Admin on 2017/8/15.
//  Copyright © 2017年 HWW. All rights reserved.
//
//  这里我自己写的MD532为的加密方式

#import "NSString+Hashing.h"

@implementation NSString (Hashing)

-(NSString *)md5
{
    return [self hashWithType:NJHashTypeMD5];
}

-(NSString *)sha1
{
    return [self hashWithType:NJHashTypeSHA1];
}

-(NSString *)sha256
{
    return [self hashWithType:NJHashTypeSHA256];
}

-(NSString *)hashWithType:(NJHashType)type
{
    //转为utf-8格式
    const char *ptr = [self UTF8String];
    
    //设置buffer的大小，以便于后面我们申请内存空间
    NSInteger bufferSize;
    switch (type) {
        case NJHashTypeMD5:
            bufferSize = CC_MD5_DIGEST_LENGTH;
            break;
        case NJHashTypeSHA1:
            bufferSize = CC_SHA1_DIGEST_LENGTH;
            break;
        case NJHashTypeSHA256:
            bufferSize = CC_SHA256_DIGEST_LENGTH;
            break;
            
        default:
            return nil;
            break;
    }
    
    //设置字符串对其进行加密
    unsigned char buffer[bufferSize];
    switch (type) {
        case NJHashTypeMD5:
            CC_MD5(ptr, (CC_LONG)strlen(ptr), buffer);
            break;
        case NJHashTypeSHA1:
            CC_SHA1(ptr, (CC_LONG)strlen(ptr), buffer);
            break;
        case NJHashTypeSHA256:
            CC_SHA256(ptr, (CC_LONG)strlen(ptr), buffer);
            break;
            
        default:
            return nil;
            break;
    }
    
    NSMutableString *hashStr = [NSMutableString stringWithCapacity:bufferSize * 2];
    for (int i=0; i<bufferSize; i++) {
        //这里以16进制输出内存
        [hashStr appendFormat:@"%02x",buffer[i]];
    }
    return hashStr;
    
}

@end
