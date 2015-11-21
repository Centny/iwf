// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Msg.pb.h"
// @@protoc_insertion_point(imports)

@implementation MsgRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [MsgRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface ImMsg ()
@property (strong) NSString* i;
@property (strong) NSString* s;
@property (strong) NSMutableArray * rArray;
@property UInt32 t;
@property (strong) NSString* d;
@property (strong) NSData* c;
@property (strong) NSString* a;
@property SInt64 time;
@property (strong) NSString* mark;
@property (strong) NSString* subm;
@property SInt64 mid;
@end

@implementation ImMsg

- (BOOL) hasI {
  return !!hasI_;
}
- (void) setHasI:(BOOL) _value_ {
  hasI_ = !!_value_;
}
@synthesize i;
- (BOOL) hasS {
  return !!hasS_;
}
- (void) setHasS:(BOOL) _value_ {
  hasS_ = !!_value_;
}
@synthesize s;
@synthesize rArray;
@dynamic r;
- (BOOL) hasT {
  return !!hasT_;
}
- (void) setHasT:(BOOL) _value_ {
  hasT_ = !!_value_;
}
@synthesize t;
- (BOOL) hasD {
  return !!hasD_;
}
- (void) setHasD:(BOOL) _value_ {
  hasD_ = !!_value_;
}
@synthesize d;
- (BOOL) hasC {
  return !!hasC_;
}
- (void) setHasC:(BOOL) _value_ {
  hasC_ = !!_value_;
}
@synthesize c;
- (BOOL) hasA {
  return !!hasA_;
}
- (void) setHasA:(BOOL) _value_ {
  hasA_ = !!_value_;
}
@synthesize a;
- (BOOL) hasTime {
  return !!hasTime_;
}
- (void) setHasTime:(BOOL) _value_ {
  hasTime_ = !!_value_;
}
@synthesize time;
- (BOOL) hasMark {
  return !!hasMark_;
}
- (void) setHasMark:(BOOL) _value_ {
  hasMark_ = !!_value_;
}
@synthesize mark;
- (BOOL) hasSubm {
  return !!hasSubm_;
}
- (void) setHasSubm:(BOOL) _value_ {
  hasSubm_ = !!_value_;
}
@synthesize subm;
- (BOOL) hasMid {
  return !!hasMid_;
}
- (void) setHasMid:(BOOL) _value_ {
  hasMid_ = !!_value_;
}
@synthesize mid;
- (instancetype) init {
  if ((self = [super init])) {
    self.i = @"";
    self.s = @"";
    self.t = 0;
    self.d = @"";
    self.c = [NSData data];
    self.a = @"";
    self.time = 0L;
    self.mark = @"";
    self.subm = @"";
    self.mid = 0L;
  }
  return self;
}
static ImMsg* defaultImMsgInstance = nil;
+ (void) initialize {
  if (self == [ImMsg class]) {
    defaultImMsgInstance = [[ImMsg alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultImMsgInstance;
}
- (instancetype) defaultInstance {
  return defaultImMsgInstance;
}
- (NSArray *)r {
  return rArray;
}
- (NSString*)rAtIndex:(NSUInteger)index {
  return [rArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  if (!self.hasT) {
    return NO;
  }
  if (!self.hasC) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasI) {
    [output writeString:1 value:self.i];
  }
  if (self.hasS) {
    [output writeString:2 value:self.s];
  }
  [self.rArray enumerateObjectsUsingBlock:^(NSString *element, NSUInteger idx, BOOL *stop) {
    [output writeString:3 value:element];
  }];
  if (self.hasT) {
    [output writeUInt32:4 value:self.t];
  }
  if (self.hasD) {
    [output writeString:5 value:self.d];
  }
  if (self.hasC) {
    [output writeData:6 value:self.c];
  }
  if (self.hasA) {
    [output writeString:7 value:self.a];
  }
  if (self.hasTime) {
    [output writeInt64:8 value:self.time];
  }
  if (self.hasMark) {
    [output writeString:9 value:self.mark];
  }
  if (self.hasSubm) {
    [output writeString:10 value:self.subm];
  }
  if (self.hasMid) {
    [output writeInt64:11 value:self.mid];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasI) {
    size_ += computeStringSize(1, self.i);
  }
  if (self.hasS) {
    size_ += computeStringSize(2, self.s);
  }
  {
    __block SInt32 dataSize = 0;
    const NSUInteger count = self.rArray.count;
    [self.rArray enumerateObjectsUsingBlock:^(NSString *element, NSUInteger idx, BOOL *stop) {
      dataSize += computeStringSizeNoTag(element);
    }];
    size_ += dataSize;
    size_ += (SInt32)(1 * count);
  }
  if (self.hasT) {
    size_ += computeUInt32Size(4, self.t);
  }
  if (self.hasD) {
    size_ += computeStringSize(5, self.d);
  }
  if (self.hasC) {
    size_ += computeDataSize(6, self.c);
  }
  if (self.hasA) {
    size_ += computeStringSize(7, self.a);
  }
  if (self.hasTime) {
    size_ += computeInt64Size(8, self.time);
  }
  if (self.hasMark) {
    size_ += computeStringSize(9, self.mark);
  }
  if (self.hasSubm) {
    size_ += computeStringSize(10, self.subm);
  }
  if (self.hasMid) {
    size_ += computeInt64Size(11, self.mid);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (ImMsg*) parseFromData:(NSData*) data {
  return (ImMsg*)[[[ImMsg builder] mergeFromData:data] build];
}
+ (ImMsg*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ImMsg*)[[[ImMsg builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (ImMsg*) parseFromInputStream:(NSInputStream*) input {
  return (ImMsg*)[[[ImMsg builder] mergeFromInputStream:input] build];
}
+ (ImMsg*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ImMsg*)[[[ImMsg builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ImMsg*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (ImMsg*)[[[ImMsg builder] mergeFromCodedInputStream:input] build];
}
+ (ImMsg*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ImMsg*)[[[ImMsg builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ImMsgBuilder*) builder {
  return [[ImMsgBuilder alloc] init];
}
+ (ImMsgBuilder*) builderWithPrototype:(ImMsg*) prototype {
  return [[ImMsg builder] mergeFrom:prototype];
}
- (ImMsgBuilder*) builder {
  return [ImMsg builder];
}
- (ImMsgBuilder*) toBuilder {
  return [ImMsg builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasI) {
    [output appendFormat:@"%@%@: %@\n", indent, @"i", self.i];
  }
  if (self.hasS) {
    [output appendFormat:@"%@%@: %@\n", indent, @"s", self.s];
  }
  [self.rArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@: %@\n", indent, @"r", obj];
  }];
  if (self.hasT) {
    [output appendFormat:@"%@%@: %@\n", indent, @"t", [NSNumber numberWithInteger:self.t]];
  }
  if (self.hasD) {
    [output appendFormat:@"%@%@: %@\n", indent, @"d", self.d];
  }
  if (self.hasC) {
    [output appendFormat:@"%@%@: %@\n", indent, @"c", self.c];
  }
  if (self.hasA) {
    [output appendFormat:@"%@%@: %@\n", indent, @"a", self.a];
  }
  if (self.hasTime) {
    [output appendFormat:@"%@%@: %@\n", indent, @"time", [NSNumber numberWithLongLong:self.time]];
  }
  if (self.hasMark) {
    [output appendFormat:@"%@%@: %@\n", indent, @"mark", self.mark];
  }
  if (self.hasSubm) {
    [output appendFormat:@"%@%@: %@\n", indent, @"subm", self.subm];
  }
  if (self.hasMid) {
    [output appendFormat:@"%@%@: %@\n", indent, @"mid", [NSNumber numberWithLongLong:self.mid]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasI) {
    [dictionary setObject: self.i forKey: @"i"];
  }
  if (self.hasS) {
    [dictionary setObject: self.s forKey: @"s"];
  }
  [dictionary setObject:self.r forKey: @"r"];
  if (self.hasT) {
    [dictionary setObject: [NSNumber numberWithInteger:self.t] forKey: @"t"];
  }
  if (self.hasD) {
    [dictionary setObject: self.d forKey: @"d"];
  }
  if (self.hasC) {
    [dictionary setObject: self.c forKey: @"c"];
  }
  if (self.hasA) {
    [dictionary setObject: self.a forKey: @"a"];
  }
  if (self.hasTime) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.time] forKey: @"time"];
  }
  if (self.hasMark) {
    [dictionary setObject: self.mark forKey: @"mark"];
  }
  if (self.hasSubm) {
    [dictionary setObject: self.subm forKey: @"subm"];
  }
  if (self.hasMid) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.mid] forKey: @"mid"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[ImMsg class]]) {
    return NO;
  }
  ImMsg *otherMessage = other;
  return
      self.hasI == otherMessage.hasI &&
      (!self.hasI || [self.i isEqual:otherMessage.i]) &&
      self.hasS == otherMessage.hasS &&
      (!self.hasS || [self.s isEqual:otherMessage.s]) &&
      [self.rArray isEqualToArray:otherMessage.rArray] &&
      self.hasT == otherMessage.hasT &&
      (!self.hasT || self.t == otherMessage.t) &&
      self.hasD == otherMessage.hasD &&
      (!self.hasD || [self.d isEqual:otherMessage.d]) &&
      self.hasC == otherMessage.hasC &&
      (!self.hasC || [self.c isEqual:otherMessage.c]) &&
      self.hasA == otherMessage.hasA &&
      (!self.hasA || [self.a isEqual:otherMessage.a]) &&
      self.hasTime == otherMessage.hasTime &&
      (!self.hasTime || self.time == otherMessage.time) &&
      self.hasMark == otherMessage.hasMark &&
      (!self.hasMark || [self.mark isEqual:otherMessage.mark]) &&
      self.hasSubm == otherMessage.hasSubm &&
      (!self.hasSubm || [self.subm isEqual:otherMessage.subm]) &&
      self.hasMid == otherMessage.hasMid &&
      (!self.hasMid || self.mid == otherMessage.mid) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasI) {
    hashCode = hashCode * 31 + [self.i hash];
  }
  if (self.hasS) {
    hashCode = hashCode * 31 + [self.s hash];
  }
  [self.rArray enumerateObjectsUsingBlock:^(NSString *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  if (self.hasT) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.t] hash];
  }
  if (self.hasD) {
    hashCode = hashCode * 31 + [self.d hash];
  }
  if (self.hasC) {
    hashCode = hashCode * 31 + [self.c hash];
  }
  if (self.hasA) {
    hashCode = hashCode * 31 + [self.a hash];
  }
  if (self.hasTime) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.time] hash];
  }
  if (self.hasMark) {
    hashCode = hashCode * 31 + [self.mark hash];
  }
  if (self.hasSubm) {
    hashCode = hashCode * 31 + [self.subm hash];
  }
  if (self.hasMid) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.mid] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface ImMsgBuilder()
@property (strong) ImMsg* resultImMsg;
@end

@implementation ImMsgBuilder
@synthesize resultImMsg;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultImMsg = [[ImMsg alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultImMsg;
}
- (ImMsgBuilder*) clear {
  self.resultImMsg = [[ImMsg alloc] init];
  return self;
}
- (ImMsgBuilder*) clone {
  return [ImMsg builderWithPrototype:resultImMsg];
}
- (ImMsg*) defaultInstance {
  return [ImMsg defaultInstance];
}
- (ImMsg*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (ImMsg*) buildPartial {
  ImMsg* returnMe = resultImMsg;
  self.resultImMsg = nil;
  return returnMe;
}
- (ImMsgBuilder*) mergeFrom:(ImMsg*) other {
  if (other == [ImMsg defaultInstance]) {
    return self;
  }
  if (other.hasI) {
    [self setI:other.i];
  }
  if (other.hasS) {
    [self setS:other.s];
  }
  if (other.rArray.count > 0) {
    if (resultImMsg.rArray == nil) {
      resultImMsg.rArray = [[NSMutableArray alloc] initWithArray:other.rArray];
    } else {
      [resultImMsg.rArray addObjectsFromArray:other.rArray];
    }
  }
  if (other.hasT) {
    [self setT:other.t];
  }
  if (other.hasD) {
    [self setD:other.d];
  }
  if (other.hasC) {
    [self setC:other.c];
  }
  if (other.hasA) {
    [self setA:other.a];
  }
  if (other.hasTime) {
    [self setTime:other.time];
  }
  if (other.hasMark) {
    [self setMark:other.mark];
  }
  if (other.hasSubm) {
    [self setSubm:other.subm];
  }
  if (other.hasMid) {
    [self setMid:other.mid];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (ImMsgBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (ImMsgBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setI:[input readString]];
        break;
      }
      case 18: {
        [self setS:[input readString]];
        break;
      }
      case 26: {
        [self addR:[input readString]];
        break;
      }
      case 32: {
        [self setT:[input readUInt32]];
        break;
      }
      case 42: {
        [self setD:[input readString]];
        break;
      }
      case 50: {
        [self setC:[input readData]];
        break;
      }
      case 58: {
        [self setA:[input readString]];
        break;
      }
      case 64: {
        [self setTime:[input readInt64]];
        break;
      }
      case 74: {
        [self setMark:[input readString]];
        break;
      }
      case 82: {
        [self setSubm:[input readString]];
        break;
      }
      case 88: {
        [self setMid:[input readInt64]];
        break;
      }
    }
  }
}
- (BOOL) hasI {
  return resultImMsg.hasI;
}
- (NSString*) i {
  return resultImMsg.i;
}
- (ImMsgBuilder*) setI:(NSString*) value {
  resultImMsg.hasI = YES;
  resultImMsg.i = value;
  return self;
}
- (ImMsgBuilder*) clearI {
  resultImMsg.hasI = NO;
  resultImMsg.i = @"";
  return self;
}
- (BOOL) hasS {
  return resultImMsg.hasS;
}
- (NSString*) s {
  return resultImMsg.s;
}
- (ImMsgBuilder*) setS:(NSString*) value {
  resultImMsg.hasS = YES;
  resultImMsg.s = value;
  return self;
}
- (ImMsgBuilder*) clearS {
  resultImMsg.hasS = NO;
  resultImMsg.s = @"";
  return self;
}
- (NSMutableArray *)r {
  return resultImMsg.rArray;
}
- (NSString*)rAtIndex:(NSUInteger)index {
  return [resultImMsg rAtIndex:index];
}
- (ImMsgBuilder *)addR:(NSString*)value {
  if (resultImMsg.rArray == nil) {
    resultImMsg.rArray = [[NSMutableArray alloc]init];
  }
  [resultImMsg.rArray addObject:value];
  return self;
}
- (ImMsgBuilder *)setRArray:(NSArray *)array {
  resultImMsg.rArray = [[NSMutableArray alloc] initWithArray:array];
  return self;
}
- (ImMsgBuilder *)clearR {
  resultImMsg.rArray = nil;
  return self;
}
- (BOOL) hasT {
  return resultImMsg.hasT;
}
- (UInt32) t {
  return resultImMsg.t;
}
- (ImMsgBuilder*) setT:(UInt32) value {
  resultImMsg.hasT = YES;
  resultImMsg.t = value;
  return self;
}
- (ImMsgBuilder*) clearT {
  resultImMsg.hasT = NO;
  resultImMsg.t = 0;
  return self;
}
- (BOOL) hasD {
  return resultImMsg.hasD;
}
- (NSString*) d {
  return resultImMsg.d;
}
- (ImMsgBuilder*) setD:(NSString*) value {
  resultImMsg.hasD = YES;
  resultImMsg.d = value;
  return self;
}
- (ImMsgBuilder*) clearD {
  resultImMsg.hasD = NO;
  resultImMsg.d = @"";
  return self;
}
- (BOOL) hasC {
  return resultImMsg.hasC;
}
- (NSData*) c {
  return resultImMsg.c;
}
- (ImMsgBuilder*) setC:(NSData*) value {
  resultImMsg.hasC = YES;
  resultImMsg.c = value;
  return self;
}
- (ImMsgBuilder*) clearC {
  resultImMsg.hasC = NO;
  resultImMsg.c = [NSData data];
  return self;
}
- (BOOL) hasA {
  return resultImMsg.hasA;
}
- (NSString*) a {
  return resultImMsg.a;
}
- (ImMsgBuilder*) setA:(NSString*) value {
  resultImMsg.hasA = YES;
  resultImMsg.a = value;
  return self;
}
- (ImMsgBuilder*) clearA {
  resultImMsg.hasA = NO;
  resultImMsg.a = @"";
  return self;
}
- (BOOL) hasTime {
  return resultImMsg.hasTime;
}
- (SInt64) time {
  return resultImMsg.time;
}
- (ImMsgBuilder*) setTime:(SInt64) value {
  resultImMsg.hasTime = YES;
  resultImMsg.time = value;
  return self;
}
- (ImMsgBuilder*) clearTime {
  resultImMsg.hasTime = NO;
  resultImMsg.time = 0L;
  return self;
}
- (BOOL) hasMark {
  return resultImMsg.hasMark;
}
- (NSString*) mark {
  return resultImMsg.mark;
}
- (ImMsgBuilder*) setMark:(NSString*) value {
  resultImMsg.hasMark = YES;
  resultImMsg.mark = value;
  return self;
}
- (ImMsgBuilder*) clearMark {
  resultImMsg.hasMark = NO;
  resultImMsg.mark = @"";
  return self;
}
- (BOOL) hasSubm {
  return resultImMsg.hasSubm;
}
- (NSString*) subm {
  return resultImMsg.subm;
}
- (ImMsgBuilder*) setSubm:(NSString*) value {
  resultImMsg.hasSubm = YES;
  resultImMsg.subm = value;
  return self;
}
- (ImMsgBuilder*) clearSubm {
  resultImMsg.hasSubm = NO;
  resultImMsg.subm = @"";
  return self;
}
- (BOOL) hasMid {
  return resultImMsg.hasMid;
}
- (SInt64) mid {
  return resultImMsg.mid;
}
- (ImMsgBuilder*) setMid:(SInt64) value {
  resultImMsg.hasMid = YES;
  resultImMsg.mid = value;
  return self;
}
- (ImMsgBuilder*) clearMid {
  resultImMsg.hasMid = NO;
  resultImMsg.mid = 0L;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)