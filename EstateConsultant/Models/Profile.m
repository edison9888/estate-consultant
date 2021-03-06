//
//  Profile.m
//  EstateConsultant
//
//  Created by farthinker on 6/9/11.
//  Copyright (c) 2011 mycolorway. All rights reserved.
//

#import "Profile.h"
#import "ClientProfile.h"
#import "Estate.h"


@implementation Profile
@dynamic profileID;
@dynamic defaultValue;
@dynamic sequence;
@dynamic meta;
@dynamic type;
@dynamic name;
@dynamic estate;
@dynamic clientProfiles;


- (void)addClientProfilesObject:(ClientProfile *)value {    
    NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value count:1];
    [self willChangeValueForKey:@"clientProfiles" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
    [[self primitiveValueForKey:@"clientProfiles"] addObject:value];
    [self didChangeValueForKey:@"clientProfiles" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
    [changedObjects release];
}

- (void)removeClientProfilesObject:(ClientProfile *)value {
    NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value count:1];
    [self willChangeValueForKey:@"clientProfiles" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
    [[self primitiveValueForKey:@"clientProfiles"] removeObject:value];
    [self didChangeValueForKey:@"clientProfiles" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
    [changedObjects release];
}

- (void)addClientProfiles:(NSSet *)value {    
    [self willChangeValueForKey:@"clientProfiles" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value];
    [[self primitiveValueForKey:@"clientProfiles"] unionSet:value];
    [self didChangeValueForKey:@"clientProfiles" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value];
}

- (void)removeClientProfiles:(NSSet *)value {
    [self willChangeValueForKey:@"clientProfiles" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value];
    [[self primitiveValueForKey:@"clientProfiles"] minusSet:value];
    [self didChangeValueForKey:@"clientProfiles" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value];
}


@end
