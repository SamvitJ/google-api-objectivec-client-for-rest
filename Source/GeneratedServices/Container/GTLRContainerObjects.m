// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Container Engine API (container/v1)
// Description:
//   Builds and manages clusters that run container-based applications, powered
//   by open source Kubernetes technology.
// Documentation:
//   https://cloud.google.com/container-engine/

#import "GTLRContainerObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRContainer_Cluster.status
NSString * const kGTLRContainer_Cluster_Status_Error           = @"ERROR";
NSString * const kGTLRContainer_Cluster_Status_Provisioning    = @"PROVISIONING";
NSString * const kGTLRContainer_Cluster_Status_Reconciling     = @"RECONCILING";
NSString * const kGTLRContainer_Cluster_Status_Running         = @"RUNNING";
NSString * const kGTLRContainer_Cluster_Status_StatusUnspecified = @"STATUS_UNSPECIFIED";
NSString * const kGTLRContainer_Cluster_Status_Stopping        = @"STOPPING";

// GTLRContainer_NodePool.status
NSString * const kGTLRContainer_NodePool_Status_Error          = @"ERROR";
NSString * const kGTLRContainer_NodePool_Status_Provisioning   = @"PROVISIONING";
NSString * const kGTLRContainer_NodePool_Status_Reconciling    = @"RECONCILING";
NSString * const kGTLRContainer_NodePool_Status_Running        = @"RUNNING";
NSString * const kGTLRContainer_NodePool_Status_RunningWithError = @"RUNNING_WITH_ERROR";
NSString * const kGTLRContainer_NodePool_Status_StatusUnspecified = @"STATUS_UNSPECIFIED";
NSString * const kGTLRContainer_NodePool_Status_Stopping       = @"STOPPING";

// GTLRContainer_Operation.operationType
NSString * const kGTLRContainer_Operation_OperationType_CreateCluster = @"CREATE_CLUSTER";
NSString * const kGTLRContainer_Operation_OperationType_CreateNodePool = @"CREATE_NODE_POOL";
NSString * const kGTLRContainer_Operation_OperationType_DeleteCluster = @"DELETE_CLUSTER";
NSString * const kGTLRContainer_Operation_OperationType_DeleteNodePool = @"DELETE_NODE_POOL";
NSString * const kGTLRContainer_Operation_OperationType_RepairCluster = @"REPAIR_CLUSTER";
NSString * const kGTLRContainer_Operation_OperationType_TypeUnspecified = @"TYPE_UNSPECIFIED";
NSString * const kGTLRContainer_Operation_OperationType_UpdateCluster = @"UPDATE_CLUSTER";
NSString * const kGTLRContainer_Operation_OperationType_UpgradeMaster = @"UPGRADE_MASTER";
NSString * const kGTLRContainer_Operation_OperationType_UpgradeNodes = @"UPGRADE_NODES";

// GTLRContainer_Operation.status
NSString * const kGTLRContainer_Operation_Status_Done          = @"DONE";
NSString * const kGTLRContainer_Operation_Status_Pending       = @"PENDING";
NSString * const kGTLRContainer_Operation_Status_Running       = @"RUNNING";
NSString * const kGTLRContainer_Operation_Status_StatusUnspecified = @"STATUS_UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRContainer_AddonsConfig
//

@implementation GTLRContainer_AddonsConfig
@dynamic horizontalPodAutoscaling, httpLoadBalancing;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_Cluster
//

@implementation GTLRContainer_Cluster
@dynamic addonsConfig, clusterIpv4Cidr, createTime, currentMasterVersion,
         currentNodeCount, currentNodeVersion, descriptionProperty, endpoint,
         initialClusterVersion, initialNodeCount, instanceGroupUrls, locations,
         loggingService, masterAuth, monitoringService, name, network,
         nodeConfig, nodeIpv4CidrSize, nodePools, selfLink, servicesIpv4Cidr,
         status, statusMessage, subnetwork, zoneProperty;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"zoneProperty" : @"zone"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"instanceGroupUrls" : [NSString class],
    @"locations" : [NSString class],
    @"nodePools" : [GTLRContainer_NodePool class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_ClusterUpdate
//

@implementation GTLRContainer_ClusterUpdate
@dynamic desiredAddonsConfig, desiredMasterVersion, desiredMonitoringService,
         desiredNodePoolId, desiredNodeVersion;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_CreateClusterRequest
//

@implementation GTLRContainer_CreateClusterRequest
@dynamic cluster;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_CreateNodePoolRequest
//

@implementation GTLRContainer_CreateNodePoolRequest
@dynamic nodePool;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_HorizontalPodAutoscaling
//

@implementation GTLRContainer_HorizontalPodAutoscaling
@dynamic disabled;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_HttpLoadBalancing
//

@implementation GTLRContainer_HttpLoadBalancing
@dynamic disabled;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_ListClustersResponse
//

@implementation GTLRContainer_ListClustersResponse
@dynamic clusters, missingZones;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"clusters" : [GTLRContainer_Cluster class],
    @"missingZones" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_ListNodePoolsResponse
//

@implementation GTLRContainer_ListNodePoolsResponse
@dynamic nodePools;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"nodePools" : [GTLRContainer_NodePool class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_ListOperationsResponse
//

@implementation GTLRContainer_ListOperationsResponse
@dynamic missingZones, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"missingZones" : [NSString class],
    @"operations" : [GTLRContainer_Operation class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_MasterAuth
//

@implementation GTLRContainer_MasterAuth
@dynamic clientCertificate, clientKey, clusterCaCertificate, password, username;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_NodeConfig
//

@implementation GTLRContainer_NodeConfig
@dynamic diskSizeGb, machineType, metadata, oauthScopes;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"oauthScopes" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_NodeConfigMetadata
//

@implementation GTLRContainer_NodeConfigMetadata

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_NodePool
//

@implementation GTLRContainer_NodePool
@dynamic config, initialNodeCount, instanceGroupUrls, name, selfLink, status,
         statusMessage, version;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"instanceGroupUrls" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_Operation
//

@implementation GTLRContainer_Operation
@dynamic detail, name, operationType, selfLink, status, statusMessage,
         targetLink, zoneProperty;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"zoneProperty" : @"zone" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_ServerConfig
//

@implementation GTLRContainer_ServerConfig
@dynamic defaultClusterVersion, defaultImageFamily, validImageFamilies,
         validNodeVersions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"validImageFamilies" : [NSString class],
    @"validNodeVersions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_UpdateClusterRequest
//

@implementation GTLRContainer_UpdateClusterRequest
@dynamic update;
@end