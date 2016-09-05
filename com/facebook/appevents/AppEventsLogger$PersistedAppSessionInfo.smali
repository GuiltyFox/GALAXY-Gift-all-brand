.class Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# static fields
.field private static final PERSISTED_SESSION_INFO_FILENAME:Ljava/lang/String; = "AppEventsLogger.persistedsessioninfo"

.field private static final appSessionInfoFlushRunnable:Ljava/lang/Runnable;

.field private static appSessionInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;",
            "Lcom/facebook/appevents/FacebookTimeSpentData;",
            ">;"
        }
    .end annotation
.end field

.field private static hasChanges:Z

.field private static isLoaded:Z

.field private static final staticLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 1453
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    .line 1454
    sput-boolean v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    .line 1455
    sput-boolean v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    .line 1458
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo$1;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoFlushRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 1449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTimeSpentData(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/FacebookTimeSpentData;
    .registers 4

    .prologue
    .line 1560
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->restoreAppSessionInformation(Landroid/content/Context;)V

    .line 1563
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/FacebookTimeSpentData;

    .line 1564
    if-nez v0, :cond_17

    .line 1565
    new-instance v0, Lcom/facebook/appevents/FacebookTimeSpentData;

    invoke-direct {v0}, Lcom/facebook/appevents/FacebookTimeSpentData;-><init>()V

    .line 1566
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    :cond_17
    return-object v0
.end method

.method static onResume(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V
    .registers 9

    .prologue
    .line 1536
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1537
    :try_start_3
    invoke-static {p0, p1}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->getTimeSpentData(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/FacebookTimeSpentData;

    move-result-object v0

    .line 1538
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/facebook/appevents/FacebookTimeSpentData;->onResume(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    .line 1539
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onTimeSpentDataUpdate()V

    .line 1540
    monitor-exit v1

    .line 1541
    return-void

    .line 1540
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method static onSuspend(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;J)V
    .registers 8

    .prologue
    .line 1549
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1550
    :try_start_3
    invoke-static {p0, p1}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->getTimeSpentData(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/FacebookTimeSpentData;

    move-result-object v0

    .line 1551
    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/appevents/FacebookTimeSpentData;->onSuspend(Lcom/facebook/appevents/AppEventsLogger;J)V

    .line 1552
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onTimeSpentDataUpdate()V

    .line 1553
    monitor-exit v1

    .line 1554
    return-void

    .line 1553
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private static onTimeSpentDataUpdate()V
    .registers 5

    .prologue
    .line 1573
    sget-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    if-nez v0, :cond_14

    .line 1574
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    .line 1575
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$1400()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoFlushRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1580
    :cond_14
    return-void
.end method

.method private static restoreAppSessionInformation(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 1467
    const/4 v0, 0x0

    .line 1469
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1470
    :try_start_4
    sget-boolean v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_5f

    if-nez v1, :cond_41

    .line 1472
    :try_start_8
    new-instance v1, Ljava/io/ObjectInputStream;

    const-string/jumbo v3, "AppEventsLogger.persistedsessioninfo"

    .line 1474
    invoke-virtual {p0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_14} :catch_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_62
    .catchall {:try_start_8 .. :try_end_14} :catchall_a0

    .line 1476
    :try_start_14
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1477
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string/jumbo v3, "AppEvents"

    const-string/jumbo v4, "App session info loaded"

    invoke-static {v0, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_27} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_27} :catch_c1
    .catchall {:try_start_14 .. :try_end_27} :catchall_bf

    .line 1485
    :try_start_27
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1486
    const-string/jumbo v0, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1487
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    if-nez v0, :cond_3b

    .line 1488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1494
    :cond_3b
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    .line 1495
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    .line 1498
    :cond_41
    :goto_41
    monitor-exit v2

    .line 1499
    return-void

    .line 1481
    :catch_43
    move-exception v1

    .line 1485
    :goto_44
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1486
    const-string/jumbo v0, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1487
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    if-nez v0, :cond_58

    .line 1488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1494
    :cond_58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    .line 1495
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    goto :goto_41

    .line 1498
    :catchall_5f
    move-exception v0

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_27 .. :try_end_61} :catchall_5f

    throw v0

    .line 1482
    :catch_62
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1483
    :goto_66
    :try_start_66
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$1300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got unexpected exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_66 .. :try_end_85} :catchall_bf

    .line 1485
    :try_start_85
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1486
    const-string/jumbo v0, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1487
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    if-nez v0, :cond_99

    .line 1488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1494
    :cond_99
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    .line 1495
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    goto :goto_41

    .line 1485
    :catchall_a0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_a4
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1486
    const-string/jumbo v1, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1487
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    if-nez v1, :cond_b8

    .line 1488
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1494
    :cond_b8
    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    .line 1495
    const/4 v1, 0x0

    sput-boolean v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    throw v0
    :try_end_bf
    .catchall {:try_start_85 .. :try_end_bf} :catchall_5f

    .line 1485
    :catchall_bf
    move-exception v0

    goto :goto_a4

    .line 1482
    :catch_c1
    move-exception v0

    goto :goto_66

    .line 1481
    :catch_c3
    move-exception v0

    move-object v0, v1

    goto/16 :goto_44
.end method

.method static saveAppSessionInformation(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 1502
    const/4 v2, 0x0

    .line 1504
    sget-object v3, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1505
    :try_start_4
    sget-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_57

    if-eqz v0, :cond_30

    .line 1507
    :try_start_8
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    const-string/jumbo v4, "AppEventsLogger.persistedsessioninfo"

    const/4 v5, 0x0

    .line 1509
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_32
    .catchall {:try_start_8 .. :try_end_1a} :catchall_5a

    .line 1514
    :try_start_1a
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1515
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    .line 1516
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string/jumbo v2, "AppEvents"

    const-string/jumbo v4, "App session info saved"

    invoke-static {v0, v2, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2d} :catch_62
    .catchall {:try_start_1a .. :try_end_2d} :catchall_60

    .line 1523
    :try_start_2d
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1526
    :cond_30
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_57

    .line 1527
    return-void

    .line 1520
    :catch_32
    move-exception v0

    move-object v1, v2

    .line 1521
    :goto_34
    :try_start_34
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$1300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got unexpected exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_60

    .line 1523
    :try_start_53
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_30

    .line 1526
    :catchall_57
    move-exception v0

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_57

    throw v0

    .line 1523
    :catchall_5a
    move-exception v0

    move-object v1, v2

    :goto_5c
    :try_start_5c
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_57

    :catchall_60
    move-exception v0

    goto :goto_5c

    .line 1520
    :catch_62
    move-exception v0

    goto :goto_34
.end method
