.class Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# static fields
.field static final PERSISTED_EVENTS_FILENAME:Ljava/lang/String; = "AppEventsLogger.persistedevents"

.field private static staticLock:Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private persistedEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AppEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1588
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->staticLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1591
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    .line 1595
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->context:Landroid/content/Context;

    .line 1596
    return-void
.end method

.method public static persistEvents(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;)V
    .registers 4

    .prologue
    .line 1610
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1611
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistEvents(Landroid/content/Context;Ljava/util/Map;)V

    .line 1613
    return-void
.end method

.method public static persistEvents(Landroid/content/Context;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            "Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1619
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->staticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1625
    :try_start_3
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->readAndClearStore(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;

    move-result-object v3

    .line 1628
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1629
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    invoke-virtual {v1}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v1

    .line 1630
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_f

    .line 1634
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-virtual {v3, v0, v1}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->addEvents(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Ljava/util/List;)V

    goto :goto_f

    .line 1638
    :catchall_35
    move-exception v0

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v0

    .line 1637
    :cond_38
    :try_start_38
    invoke-direct {v3}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->write()V

    .line 1638
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    .line 1639
    return-void
.end method

.method public static readAndClearStore(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;
    .registers 3

    .prologue
    .line 1599
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1600
    :try_start_3
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;

    invoke-direct {v0, p0}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;-><init>(Landroid/content/Context;)V

    .line 1602
    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->readAndClearStore()V

    .line 1604
    monitor-exit v1

    return-object v0

    .line 1605
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private readAndClearStore()V
    .registers 7

    .prologue
    .line 1664
    const/4 v0, 0x0

    .line 1666
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->context:Landroid/content/Context;

    const-string/jumbo v4, "AppEventsLogger.persistedevents"

    .line 1667
    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_14} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_31
    .catchall {:try_start_1 .. :try_end_14} :catchall_58

    .line 1671
    :try_start_14
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1675
    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->context:Landroid/content/Context;

    const-string/jumbo v3, "AppEventsLogger.persistedevents"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1676
    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_28} :catch_64
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_62
    .catchall {:try_start_14 .. :try_end_28} :catchall_60

    .line 1682
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1684
    :goto_2b
    return-void

    .line 1677
    :catch_2c
    move-exception v1

    .line 1682
    :goto_2d
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2b

    .line 1679
    :catch_31
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 1680
    :goto_35
    :try_start_35
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$1300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got unexpected exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_60

    .line 1682
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2b

    :catchall_58
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_5c
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_60
    move-exception v0

    goto :goto_5c

    .line 1679
    :catch_62
    move-exception v0

    goto :goto_35

    .line 1677
    :catch_64
    move-exception v0

    move-object v0, v1

    goto :goto_2d
.end method

.method private write()V
    .registers 7

    .prologue
    .line 1650
    const/4 v2, 0x0

    .line 1652
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->context:Landroid/content/Context;

    const-string/jumbo v4, "AppEventsLogger.persistedevents"

    const/4 v5, 0x0

    .line 1654
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1e
    .catchall {:try_start_1 .. :try_end_15} :catchall_43

    .line 1655
    :try_start_15
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_4b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_49

    .line 1659
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1661
    :goto_1d
    return-void

    .line 1656
    :catch_1e
    move-exception v0

    move-object v1, v2

    .line 1657
    :goto_20
    :try_start_20
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$1300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got unexpected exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_49

    .line 1659
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1d

    :catchall_43
    move-exception v0

    move-object v1, v2

    :goto_45
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_49
    move-exception v0

    goto :goto_45

    .line 1656
    :catch_4b
    move-exception v0

    goto :goto_20
.end method


# virtual methods
.method public addEvents(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AppEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1690
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    :cond_12
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1693
    return-void
.end method

.method public getEvents(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$PersistedEvents;->persistedEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
