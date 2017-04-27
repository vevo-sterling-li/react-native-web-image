#import <Foundation/Foundation.h>

@interface WebImageSource : NSObject

@property (nonatomic) NSURL* uri;
@property (nonatomic) NSString *placeholderImageName;
- (instancetype)initWithURIString:(NSString*)uri;
- (instancetype)initWithURIString:(NSString*)uri placeholderImage:(NSString *)imageName;

@end
