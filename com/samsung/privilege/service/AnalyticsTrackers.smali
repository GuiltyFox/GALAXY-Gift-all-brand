.class public final Lcom/samsung/privilege/service/AnalyticsTrackers;
.super Ljava/lang/Object;
.source "AnalyticsTrackers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/service/AnalyticsTrackers$Target;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/samsung/privilege/service/AnalyticsTrackers;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/privilege/service/AnalyticsTrackers$Target;",
            "Lcom/google/android/gms/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/service/AnalyticsTrackers;->mTrackers:Ljava/util/Map;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/service/AnalyticsTrackers;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/privilege/service/AnalyticsTrackers;
    .registers 3

    .prologue
    .line 31
    const-class v1, Lcom/samsung/privilege/service/AnalyticsTrackers;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/privilege/service/AnalyticsTrackers;->sInstance:Lcom/samsung/privilege/service/AnalyticsTrackers;

    if-nez v0, :cond_13

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Call initialize() before getInstance()"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 31
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0

    .line 35
    :cond_13
    :try_start_13
    sget-object v0, Lcom/samsung/privilege/service/AnalyticsTrackers;->sInstance:Lcom/samsung/privilege/service/AnalyticsTrackers;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_10

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-class v1, Lcom/samsung/privilege/service/AnalyticsTrackers;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/privilege/service/AnalyticsTrackers;->sInstance:Lcom/samsung/privilege/service/AnalyticsTrackers;

    if-eqz v0, :cond_a

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/privilege/service/AnalyticsTrackers;->sInstance:Lcom/samsung/privilege/service/AnalyticsTrackers;

    .line 27
    :cond_a
    new-instance v0, Lcom/samsung/privilege/service/AnalyticsTrackers;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/service/AnalyticsTrackers;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/privilege/service/AnalyticsTrackers;->sInstance:Lcom/samsung/privilege/service/AnalyticsTrackers;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 28
    monitor-exit v1

    return-void

    .line 21
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized get(Lcom/samsung/privilege/service/AnalyticsTrackers$Target;)Lcom/google/android/gms/analytics/Tracker;
    .registers 6
    .param p1, "target"    # Lcom/samsung/privilege/service/AnalyticsTrackers$Target;

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/privilege/service/AnalyticsTrackers;->mTrackers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 51
    sget-object v1, Lcom/samsung/privilege/service/AnalyticsTrackers$1;->$SwitchMap$com$samsung$privilege$service$AnalyticsTrackers$Target:[I

    invoke-virtual {p1}, Lcom/samsung/privilege/service/AnalyticsTrackers$Target;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4e

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled analytics target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2e

    .line 49
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 53
    :pswitch_31
    :try_start_31
    iget-object v1, p0, Lcom/samsung/privilege/service/AnalyticsTrackers;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 58
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    iget-object v1, p0, Lcom/samsung/privilege/service/AnalyticsTrackers;->mTrackers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v0    # "tracker":Lcom/google/android/gms/analytics/Tracker;
    :cond_43
    iget-object v1, p0, Lcom/samsung/privilege/service/AnalyticsTrackers;->mTrackers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/Tracker;
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_2e

    monitor-exit p0

    return-object v1

    .line 51
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_31
    .end packed-switch
.end method
