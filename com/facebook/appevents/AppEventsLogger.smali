.class public Lcom/facebook/appevents/AppEventsLogger;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# static fields
.field public static final ACTION_APP_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSHED"

.field public static final APP_EVENTS_EXTRA_FLUSH_RESULT:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

.field public static final APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

.field public static final APP_EVENT_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.appEventPreferences"

.field private static final APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS:I = 0x15180

.field private static final FLUSH_APP_SESSION_INFO_IN_SECONDS:I = 0x1e

.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0xf

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I = 0x64

.field private static final SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT:Ljava/lang/String; = "_fbSourceApplicationHasBeenSet"

.field private static final TAG:Ljava/lang/String;

.field private static anonymousAppDeviceGUID:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

.field private static isOpenedByApplink:Z

.field private static requestInFlight:Z

.field private static sourceApplication:Ljava/lang/String;

.field private static stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            "Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;",
            ">;"
        }
    .end annotation
.end field

.field private static staticLock:Ljava/lang/Object;


# instance fields
.field private final accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

.field private final contextName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 167
    const-class v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    .line 186
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .registers 6

    .prologue
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    const-string/jumbo v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->contextName:Ljava/lang/String;

    .line 655
    if-nez p3, :cond_15

    .line 656
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p3

    .line 660
    :cond_15
    if-eqz p3, :cond_3c

    if-eqz p2, :cond_23

    .line 661
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 663
    :cond_23
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-direct {v0, p3}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;-><init>(Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    .line 672
    :goto_2a
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 674
    :try_start_2d
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_37

    .line 675
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    .line 677
    :cond_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_4b

    .line 679
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->initializeTimersIfNeeded()V

    .line 680
    return-void

    .line 666
    :cond_3c
    if-nez p2, :cond_42

    .line 667
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 669
    :cond_42
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    goto :goto_2a

    .line 677
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method static synthetic access$100(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V
    .registers 5

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLogger;->logAppSessionResumeEvent(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/appevents/AppEventsLogger;J)V
    .registers 4

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;->logAppSessionSuspendEvent(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V
    .registers 1

    .prologue
    .line 147
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->flushAndWait(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Map;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    .registers 3

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/facebook/appevents/AppEventsLogger;->getSessionEventsState(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()V
    .registers 0

    .prologue
    .line 147
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->flushIfNecessary()V

    return-void
.end method

.method static synthetic access$900(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;)V
    .registers 5

    .prologue
    .line 147
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEventsLogger;->handleResponse(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;)V

    return-void
.end method

.method private static accumulatePersistedEvents()I
    .registers 5

    .prologue
    .line 1015
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->readAndClearStore(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;

    move-result-object v2

    .line 1017
    const/4 v0, 0x0

    .line 1018
    invoke-virtual {v2}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    .line 1019
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    .line 1020
    invoke-static {v4, v0}, Lcom/facebook/appevents/AppEventsLogger;->getSessionEventsState(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    move-result-object v4

    .line 1022
    invoke-virtual {v2, v0}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->getEvents(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Ljava/util/List;

    move-result-object v0

    .line 1023
    invoke-virtual {v4, v0}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->accumulatePersistedEvents(Ljava/util/List;)V

    .line 1024
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 1025
    goto :goto_10

    .line 1027
    :cond_30
    return v1
.end method

.method public static activateApp(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 266
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 267
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public static activateApp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 279
    if-eqz p0, :cond_4

    if-nez p1, :cond_d

    .line 280
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Both context and applicationId must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_d
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_33

    move-object v0, p0

    .line 284
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->setSourceApplication(Landroid/app/Activity;)V

    .line 296
    :goto_17
    invoke-static {p0, p1}, Lcom/facebook/FacebookSdk;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 300
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getSourceApplication()Ljava/lang/String;

    move-result-object v1

    .line 301
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lcom/facebook/appevents/AppEventsLogger$1;

    invoke-direct {v5, v0, v2, v3, v1}, Lcom/facebook/appevents/AppEventsLogger$1;-><init>(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 307
    return-void

    .line 287
    :cond_33
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    .line 288
    const-class v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "To set source application the context of activateApp must be an instance of Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private static buildAndExecuteRequests(Lcom/facebook/appevents/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/AppEventsLogger$FlushReason;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            ">;)",
            "Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 863
    new-instance v1, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;

    invoke-direct {v1, v2}, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;-><init>(Lcom/facebook/appevents/AppEventsLogger$1;)V

    .line 865
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v3

    .line 867
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 868
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    .line 869
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->getSessionEventsState(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    move-result-object v6

    .line 870
    if-eqz v6, :cond_15

    .line 874
    invoke-static {v0, v6, v3, v1}, Lcom/facebook/appevents/AppEventsLogger;->buildRequestForSession(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;ZLcom/facebook/appevents/AppEventsLogger$FlushStatistics;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 879
    if-eqz v0, :cond_15

    .line 880
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 884
    :cond_31
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6a

    .line 885
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Flushing %d events due to %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->numEvents:I

    .line 886
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 887
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventsLogger$FlushReason;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 885
    invoke-static {v0, v2, v3, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 892
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    goto :goto_58

    :cond_68
    move-object v0, v1

    .line 897
    :goto_69
    return-object v0

    :cond_6a
    move-object v0, v2

    goto :goto_69
.end method

.method private static buildRequestForSession(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;ZLcom/facebook/appevents/AppEventsLogger$FlushStatistics;)Lcom/facebook/GraphRequest;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 910
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-static {v0, v5}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v3

    .line 915
    const-string/jumbo v2, "%s/activities"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 917
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 915
    invoke-static {v1, v0, v1, v1}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 921
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    .line 922
    if-nez v0, :cond_25

    .line 923
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 925
    :cond_25
    const-string/jumbo v4, "access_token"

    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->getAccessTokenString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {v2, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 928
    if-nez v3, :cond_36

    move-object v0, v1

    .line 950
    :goto_35
    return-object v0

    .line 934
    :cond_36
    invoke-virtual {v3}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging()Z

    move-result v0

    .line 932
    invoke-virtual {p1, v2, v0, p2}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;ZZ)I

    move-result v0

    .line 937
    if-nez v0, :cond_42

    move-object v0, v1

    .line 938
    goto :goto_35

    .line 941
    :cond_42
    iget v1, p3, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->numEvents:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->numEvents:I

    .line 943
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$7;

    invoke-direct {v0, p0, v2, p1, p3}, Lcom/facebook/appevents/AppEventsLogger$7;-><init>(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;)V

    invoke-virtual {v2, v0}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    move-object v0, v2

    .line 950
    goto :goto_35
.end method

.method public static deactivateApp(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 321
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger;->deactivateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public static deactivateApp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 333
    if-eqz p0, :cond_4

    if-nez p1, :cond_d

    .line 334
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Both context and applicationId must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_d
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    .line 339
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 341
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v4, Lcom/facebook/appevents/AppEventsLogger$2;

    invoke-direct {v4, v0, v2, v3}, Lcom/facebook/appevents/AppEventsLogger$2;-><init>(Lcom/facebook/appevents/AppEventsLogger;J)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method static eagerFlush()V
    .registers 2

    .prologue
    .line 757
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v0, v1, :cond_d

    .line 758
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushReason;->EAGER_FLUSHING_EVENT:Lcom/facebook/appevents/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->flush(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V

    .line 760
    :cond_d
    return-void
.end method

.method private static flush(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V
    .registers 3

    .prologue
    .line 820
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/AppEventsLogger$6;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AppEventsLogger$6;-><init>(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 826
    return-void
.end method

.method private static flushAndWait(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V
    .registers 5

    .prologue
    .line 831
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 832
    :try_start_3
    sget-boolean v0, Lcom/facebook/appevents/AppEventsLogger;->requestInFlight:Z

    if-eqz v0, :cond_9

    .line 833
    monitor-exit v1

    .line 858
    :cond_8
    :goto_8
    return-void

    .line 835
    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger;->requestInFlight:Z

    .line 836
    new-instance v2, Ljava/util/HashSet;

    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 837
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_4b

    .line 839
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->accumulatePersistedEvents()I

    .line 841
    const/4 v0, 0x0

    .line 843
    :try_start_1c
    invoke-static {p0, v2}, Lcom/facebook/appevents/AppEventsLogger;->buildAndExecuteRequests(Lcom/facebook/appevents/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_4e

    move-result-object v0

    .line 848
    :goto_20
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 849
    const/4 v2, 0x0

    :try_start_24
    sput-boolean v2, Lcom/facebook/appevents/AppEventsLogger;->requestInFlight:Z

    .line 850
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_58

    .line 852
    if-eqz v0, :cond_8

    .line 853
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    const-string/jumbo v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v3, v0, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->numEvents:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 855
    const-string/jumbo v2, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v0, v0, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 856
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Intent;)Z

    goto :goto_8

    .line 837
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0

    .line 844
    :catch_4e
    move-exception v1

    .line 845
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Caught unexpected exception while flushing: "

    invoke-static {v2, v3, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    .line 850
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method private static flushIfNecessary()V
    .registers 3

    .prologue
    .line 763
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 764
    :try_start_3
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v2, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v0, v2, :cond_18

    .line 765
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getAccumulatedEventCount()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_18

    .line 766
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushReason;->EVENT_THRESHOLD:Lcom/facebook/appevents/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->flush(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V

    .line 769
    :cond_18
    monitor-exit v1

    .line 770
    return-void

    .line 769
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private static getAccumulatedEventCount()I
    .registers 4

    .prologue
    .line 773
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 775
    const/4 v0, 0x0

    .line 776
    :try_start_4
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    .line 777
    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->getAccumulatedEventCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 778
    goto :goto_f

    .line 779
    :cond_22
    monitor-exit v2

    return v1

    .line 780
    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public static getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1119
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v0, :cond_58

    .line 1120
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1121
    :try_start_7
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v0, :cond_57

    .line 1123
    const-string/jumbo v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1126
    const-string/jumbo v2, "anonymousAppDeviceGUID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 1127
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v0, :cond_57

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "XZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 1131
    const-string/jumbo v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1132
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "anonymousAppDeviceGUID"

    sget-object v3, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 1133
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1137
    :cond_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_5b

    .line 1140
    :cond_58
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    return-object v0

    .line 1137
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method public static getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    .registers 2

    .prologue
    .line 439
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_3
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    monitor-exit v1

    return-object v0

    .line 441
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static getSessionEventsState(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    .registers 7

    .prologue
    .line 790
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    .line 791
    const/4 v1, 0x0

    .line 792
    if-nez v0, :cond_10

    .line 795
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    move-object v1, v0

    .line 798
    :cond_10
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 800
    :try_start_13
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    .line 801
    if-nez v0, :cond_2f

    .line 802
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    .line 804
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 805
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;-><init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    :cond_2f
    monitor-exit v2

    return-object v0

    .line 809
    :catchall_31
    move-exception v0

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_31

    throw v0
.end method

.method private static getSessionEventsState(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    .registers 3

    .prologue
    .line 813
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 814
    :try_start_3
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    monitor-exit v1

    return-object v0

    .line 815
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method static getSourceApplication()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1096
    const-string/jumbo v0, "Unclassified"

    .line 1097
    sget-boolean v1, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByApplink:Z

    if-eqz v1, :cond_a

    .line 1098
    const-string/jumbo v0, "Applink"

    .line 1100
    :cond_a
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1103
    :cond_2f
    return-object v0
.end method

.method private static handleResponse(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;)V
    .registers 15

    .prologue
    .line 959
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    .line 960
    const-string/jumbo v1, "Success"

    .line 962
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    .line 964
    if-eqz v3, :cond_8f

    .line 966
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6b

    .line 967
    const-string/jumbo v1, "Failed: No Connectivity"

    .line 968
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    move-object v2, v1

    move-object v1, v0

    .line 977
    :goto_19
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 978
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 982
    :try_start_27
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 983
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_30} :catch_88

    move-result-object v0

    .line 988
    :goto_31
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v5, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 990
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getGraphObject()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x2

    aput-object v0, v7, v2

    .line 988
    invoke-static {v4, v5, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 995
    :cond_4f
    if-eqz v3, :cond_8d

    const/4 v0, 0x1

    :goto_52
    invoke-virtual {p3, v0}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->clearInFlightAndStats(Z)V

    .line 997
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    if-ne v1, v0, :cond_5e

    .line 1003
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p0, p3}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistEvents(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;)V

    .line 1006
    :cond_5e
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    if-eq v1, v0, :cond_6a

    .line 1008
    iget-object v0, p4, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    sget-object v2, Lcom/facebook/appevents/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    if-eq v0, v2, :cond_6a

    .line 1009
    iput-object v1, p4, Lcom/facebook/appevents/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    .line 1012
    :cond_6a
    return-void

    .line 970
    :cond_6b
    const-string/jumbo v0, "Failed:\n  Response: %s\n  Error %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 971
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 972
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 970
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 973
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushResult;->SERVER_ERROR:Lcom/facebook/appevents/AppEventsLogger$FlushResult;

    move-object v2, v1

    move-object v1, v0

    goto :goto_19

    .line 984
    :catch_88
    move-exception v0

    .line 985
    const-string/jumbo v0, "<Can\'t encode events for debug logging>"

    goto :goto_31

    .line 995
    :cond_8d
    const/4 v0, 0x0

    goto :goto_52

    :cond_8f
    move-object v2, v1

    move-object v1, v0

    goto :goto_19
.end method

.method private static initializeTimersIfNeeded()V
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 683
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 684
    :try_start_5
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_b

    .line 685
    monitor-exit v1

    .line 727
    :goto_a
    return-void

    .line 687
    :cond_b
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 688
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_32

    .line 690
    new-instance v1, Lcom/facebook/appevents/AppEventsLogger$3;

    invoke-direct {v1}, Lcom/facebook/appevents/AppEventsLogger$3;-><init>()V

    .line 699
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 706
    new-instance v1, Lcom/facebook/appevents/AppEventsLogger$4;

    invoke-direct {v1}, Lcom/facebook/appevents/AppEventsLogger$4;-><init>()V

    .line 721
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/32 v4, 0x15180

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_a

    .line 688
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method private logAppSessionResumeEvent(JLjava/lang/String;)V
    .registers 11

    .prologue
    .line 350
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onResume(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    .line 356
    return-void
.end method

.method private logAppSessionSuspendEvent(J)V
    .registers 6

    .prologue
    .line 359
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onSuspend(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;J)V

    .line 360
    return-void
.end method

.method private static logEvent(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AppEvent;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)V
    .registers 5

    .prologue
    .line 746
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/AppEventsLogger$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/appevents/AppEventsLogger$5;-><init>(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$AppEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 754
    return-void
.end method

.method private logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .registers 11

    .prologue
    .line 734
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger;->contextName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger$AppEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 740
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-static {v1, v0, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AppEvent;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)V

    .line 741
    return-void
.end method

.method public static newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 372
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Lcom/facebook/AccessToken;)Lcom/facebook/appevents/AppEventsLogger;
    .registers 4

    .prologue
    .line 384
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/AppEventsLogger;
    .registers 4

    .prologue
    .line 417
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)Lcom/facebook/appevents/AppEventsLogger;
    .registers 4

    .prologue
    .line 403
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method private static notifyDeveloperError(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1036
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const-string/jumbo v1, "AppEvents"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    return-void
.end method

.method public static onContextStop()V
    .registers 2

    .prologue
    .line 596
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistEvents(Landroid/content/Context;Ljava/util/Map;)V

    .line 597
    return-void
.end method

.method static resetSourceApplication()V
    .registers 1

    .prologue
    .line 1107
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 1108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByApplink:Z

    .line 1109
    return-void
.end method

.method public static setFlushBehavior(Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;)V
    .registers 3

    .prologue
    .line 451
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 452
    :try_start_3
    sput-object p0, Lcom/facebook/appevents/AppEventsLogger;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 453
    monitor-exit v1

    .line 454
    return-void

    .line 453
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static setSourceApplication(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1044
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1045
    if-eqz v0, :cond_1b

    .line 1046
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1047
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1049
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    .line 1087
    :goto_18
    return-void

    .line 1052
    :cond_19
    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 1058
    :cond_1b
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1059
    if-eqz v0, :cond_2b

    const-string/jumbo v1, "_fbSourceApplicationHasBeenSet"

    const/4 v2, 0x0

    .line 1060
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1061
    :cond_2b
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    goto :goto_18

    .line 1065
    :cond_2f
    invoke-static {v0}, Lbolts/AppLinks;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 1067
    if-nez v1, :cond_39

    .line 1068
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    goto :goto_18

    .line 1072
    :cond_39
    sput-boolean v3, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByApplink:Z

    .line 1074
    const-string/jumbo v2, "referer_app_link"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1076
    if-nez v1, :cond_48

    .line 1077
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    goto :goto_18

    .line 1081
    :cond_48
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1082
    sput-object v1, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 1085
    const-string/jumbo v1, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_18
.end method

.method static setSourceApplication(Ljava/lang/String;Z)V
    .registers 2

    .prologue
    .line 1091
    sput-object p0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 1092
    sput-boolean p1, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByApplink:Z

    .line 1093
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    .prologue
    .line 584
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushReason;->EXPLICIT:Lcom/facebook/appevents/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->flush(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V

    .line 585
    return-void
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidForAccessToken(Lcom/facebook/AccessToken;)Z
    .registers 4

    .prologue
    .line 605
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-direct {v0, p1}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;-><init>(Lcom/facebook/AccessToken;)V

    .line 606
    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-virtual {v1, v0}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public logEvent(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 468
    return-void
.end method

.method public logEvent(Ljava/lang/String;D)V
    .registers 6

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 486
    return-void
.end method

.method public logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 532
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 533
    return-void
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 507
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 508
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .registers 4

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 546
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 562
    if-nez p1, :cond_9

    .line 563
    const-string/jumbo v0, "purchaseAmount cannot be null"

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    .line 577
    :goto_8
    return-void

    .line 565
    :cond_9
    if-nez p2, :cond_12

    .line 566
    const-string/jumbo v0, "currency cannot be null"

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    goto :goto_8

    .line 570
    :cond_12
    if-nez p3, :cond_19

    .line 571
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 573
    :cond_19
    const-string/jumbo v0, "fb_currency"

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string/jumbo v0, "fb_mobile_purchase"

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3, p3}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 576
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->eagerFlush()V

    goto :goto_8
.end method

.method public logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 614
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 615
    return-void
.end method
