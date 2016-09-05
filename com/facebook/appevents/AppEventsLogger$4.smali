.class final Lcom/facebook/appevents/AppEventsLogger$4;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLogger;->initializeTimersIfNeeded()V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 709
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 710
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 711
    :try_start_a
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$500()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    .line 712
    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 714
    :catchall_2a
    move-exception v0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    .line 715
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 716
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    goto :goto_32

    .line 718
    :cond_43
    return-void
.end method
