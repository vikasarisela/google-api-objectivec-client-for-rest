// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Poly API (poly/v1)
// Description:
//   The Poly API provides read-only access to assets hosted on <a
//   href="https://poly.google.com">poly.google.com</a>.
// Documentation:
//   https://devsite.googleplex.com/poly/

#import "GTLRPolyServiceObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRPolyService_Asset.license
NSString * const kGTLRPolyService_Asset_License_AllRightsReserved = @"ALL_RIGHTS_RESERVED";
NSString * const kGTLRPolyService_Asset_License_CreativeCommonsBy = @"CREATIVE_COMMONS_BY";
NSString * const kGTLRPolyService_Asset_License_Unknown        = @"UNKNOWN";

// GTLRPolyService_Asset.visibility
NSString * const kGTLRPolyService_Asset_Visibility_Private     = @"PRIVATE";
NSString * const kGTLRPolyService_Asset_Visibility_Public      = @"PUBLIC";
NSString * const kGTLRPolyService_Asset_Visibility_Unlisted    = @"UNLISTED";
NSString * const kGTLRPolyService_Asset_Visibility_VisibilityUnspecified = @"VISIBILITY_UNSPECIFIED";

// GTLRPolyService_PresentationParams.colorSpace
NSString * const kGTLRPolyService_PresentationParams_ColorSpace_Gamma = @"GAMMA";
NSString * const kGTLRPolyService_PresentationParams_ColorSpace_Linear = @"LINEAR";
NSString * const kGTLRPolyService_PresentationParams_ColorSpace_Unknown = @"UNKNOWN";

// ----------------------------------------------------------------------------
//
//   GTLRPolyService_Asset
//

@implementation GTLRPolyService_Asset
@dynamic authorName, createTime, descriptionProperty, displayName, formats,
         isCurated, license, name, presentationParams, thumbnail, updateTime,
         visibility;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"formats" : [GTLRPolyService_Format class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPolyService_File
//

@implementation GTLRPolyService_File
@dynamic contentType, relativePath, url;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPolyService_Format
//

@implementation GTLRPolyService_Format
@dynamic formatComplexity, formatType, resources, root;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"resources" : [GTLRPolyService_File class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPolyService_FormatComplexity
//

@implementation GTLRPolyService_FormatComplexity
@dynamic lodHint, triangleCount;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPolyService_ListAssetsResponse
//

@implementation GTLRPolyService_ListAssetsResponse
@dynamic assets, nextPageToken, totalSize;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"assets" : [GTLRPolyService_Asset class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"assets";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPolyService_ListLikedAssetsResponse
//

@implementation GTLRPolyService_ListLikedAssetsResponse
@dynamic assets, nextPageToken, totalSize;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"assets" : [GTLRPolyService_Asset class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"assets";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPolyService_ListUserAssetsResponse
//

@implementation GTLRPolyService_ListUserAssetsResponse
@dynamic nextPageToken, totalSize, userAssets;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"userAssets" : [GTLRPolyService_UserAsset class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"userAssets";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPolyService_PresentationParams
//

@implementation GTLRPolyService_PresentationParams
@dynamic colorSpace, orientingRotation;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPolyService_Quaternion
//

@implementation GTLRPolyService_Quaternion
@dynamic w, x, y, z;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPolyService_UserAsset
//

@implementation GTLRPolyService_UserAsset
@dynamic asset;
@end
