.class public final Lcom/facebook/FacebookSdk;
.super Ljava/lang/Object;
.source "FacebookSdk.java"


# static fields
.field public static final APPLICATION_ID_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"

.field public static final APPLICATION_NAME_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationName"

.field private static final ATTRIBUTION_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"

.field static final CALLBACK_OFFSET_CHANGED_AFTER_INIT:Ljava/lang/String; = "The callback request code offset can\'t be updated once the SDK is initialized."

.field static final CALLBACK_OFFSET_NEGATIVE:Ljava/lang/String; = "The callback request code offset can\'t be negative."

.field public static final CLIENT_TOKEN_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ClientToken"

.field private static final DEFAULT_CORE_POOL_SIZE:I = 0x5

.field private static final DEFAULT_KEEP_ALIVE:I = 0x1

.field private static final DEFAULT_MAXIMUM_POOL_SIZE:I = 0x80

.field private static final DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FACEBOOK_COM:Ljava/lang/String; = "facebook.com"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_REQUEST_CODE_RANGE:I = 0x64

.field private static final PUBLISH_ACTIVITY_PATH:Ljava/lang/String; = "%s/activities"

.field private static final TAG:Ljava/lang/String;

.field public static final WEB_DIALOG_THEME:Ljava/lang/String; = "com.facebook.sdk.WebDialogTheme"

.field private static volatile appClientToken:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static volatile applicationId:Ljava/lang/String;

.field private static volatile applicationName:Ljava/lang/String;

.field private static cacheDir:Lcom/facebook/internal/LockOnGetVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/LockOnGetVariable",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static callbackRequestCodeOffset:I

.field private static volatile executor:Ljava/util/concurrent/Executor;

.field private static volatile facebookDomain:Ljava/lang/String;

.field private static volatile isDebugEnabled:Z

.field private static isLegacyTokenUpgradeSupported:Z

.field private static final loggingBehaviors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private static onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

.field private static sdkInitialized:Ljava/lang/Boolean;

.field private static volatile webDialogTheme:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 61
    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    aput-object v2, v1, v4

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    .line 70
    const-string/jumbo v0, "facebook.com"

    sput-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v2, 0x10000

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    sput-boolean v4, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    .line 73
    sput-boolean v4, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    .line 79
    const v0, 0xface

    sput v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/FacebookSdk;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    .line 90
    new-instance v0, Lcom/facebook/FacebookSdk$1;

    invoke-direct {v0}, Lcom/facebook/FacebookSdk$1;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 125
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .registers 3

    .prologue
    .line 275
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 276
    :try_start_3
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-static {}, Lcom/facebook/FacebookSdk;->updateGraphDebugBehavior()V

    .line 278
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public static clearLoggingBehaviors()V
    .registers 2

    .prologue
    .line 303
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 304
    :try_start_3
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 305
    monitor-exit v1

    .line 306
    return-void

    .line 305
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 423
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 424
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplicationId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 668
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 669
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 687
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 688
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationSignature(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 628
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 629
    if-nez p0, :cond_7

    .line 658
    :cond_6
    :goto_6
    return-object v0

    .line 632
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 633
    if-eqz v1, :cond_6

    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 640
    const/16 v3, 0x40

    :try_start_13
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_16} :catch_3c

    move-result-object v1

    .line 645
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 646
    if-eqz v2, :cond_6

    array-length v2, v2

    if-eqz v2, :cond_6

    .line 652
    :try_start_1e
    const-string/jumbo v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e .. :try_end_24} :catch_3e

    move-result-object v0

    .line 657
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 658
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 641
    :catch_3c
    move-exception v1

    goto :goto_6

    .line 653
    :catch_3e
    move-exception v1

    goto :goto_6
.end method

.method public static getCacheDir()Ljava/io/File;
    .registers 1

    .prologue
    .line 741
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 742
    sget-object v0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    invoke-virtual {v0}, Lcom/facebook/internal/LockOnGetVariable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static getCallbackRequestCodeOffset()I
    .registers 1

    .prologue
    .line 760
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 761
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    return v0
.end method

.method public static getClientToken()Ljava/lang/String;
    .registers 1

    .prologue
    .line 705
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 706
    sget-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 372
    sget-object v1, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_3
    sget-object v0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_b

    .line 374
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    .line 376
    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    .line 377
    sget-object v0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    return-object v0

    .line 376
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public static getFacebookDomain()Ljava/lang/String;
    .registers 1

    .prologue
    .line 400
    sget-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static getLimitEventAndDataUsage(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 535
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 536
    const-string/jumbo v0, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 538
    const-string/jumbo v1, "limitEventUsage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLoggingBehaviors()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 261
    :try_start_3
    new-instance v0, Ljava/util/HashSet;

    sget-object v2, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 262
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public static getOnProgressThreshold()J
    .registers 2

    .prologue
    .line 561
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 562
    sget-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 523
    const-string/jumbo v0, "4.6.0"

    return-object v0
.end method

.method public static getWebDialogTheme()I
    .registers 1

    .prologue
    .line 722
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 723
    sget v0, Lcom/facebook/FacebookSdk;->webDialogTheme:I

    return v0
.end method

.method public static isDebugEnabled()Z
    .registers 1

    .prologue
    .line 328
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    return v0
.end method

.method public static isFacebookRequestCode(I)Z
    .registers 2

    .prologue
    .line 774
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-lt p0, v0, :cond_c

    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    add-int/lit8 v0, v0, 0x64

    if-ge p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static declared-synchronized isInitialized()Z
    .registers 2

    .prologue
    .line 248
    const-class v1, Lcom/facebook/FacebookSdk;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isLegacyTokenUpgradeSupported()Z
    .registers 1

    .prologue
    .line 345
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    return v0
.end method

.method public static isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
    .registers 3

    .prologue
    .line 319
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 320
    :try_start_3
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit v1

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 321
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static loadDefaultsFromMetadata(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 577
    if-nez p0, :cond_3

    .line 620
    :cond_2
    :goto_2
    return-void

    .line 583
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 584
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 583
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_10} :catch_7f

    move-result-object v1

    .line 589
    if-eqz v1, :cond_2

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 593
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_40

    .line 594
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 595
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_72

    .line 596
    check-cast v0, Ljava/lang/String;

    .line 597
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 598
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    .line 609
    :cond_40
    :goto_40
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    if-nez v0, :cond_4f

    .line 610
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    .line 613
    :cond_4f
    sget-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    if-nez v0, :cond_5e

    .line 614
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.facebook.sdk.ClientToken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    .line 617
    :cond_5e
    sget v0, Lcom/facebook/FacebookSdk;->webDialogTheme:I

    if-nez v0, :cond_2

    .line 618
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.facebook.sdk.WebDialogTheme"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setWebDialogTheme(I)V

    goto :goto_2

    .line 600
    :cond_6f
    sput-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    goto :goto_40

    .line 602
    :cond_72
    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_40

    .line 603
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :catch_7f
    move-exception v0

    goto :goto_2
.end method

.method static publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/GraphResponse;
    .registers 16

    .prologue
    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    .line 448
    if-eqz p0, :cond_7

    if-nez p1, :cond_23

    .line 449
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Both context and applicationId must be non-null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_10

    .line 510
    :catch_10
    move-exception v0

    move-object v2, v0

    .line 512
    const-string/jumbo v0, "Facebook-publish"

    invoke-static {v0, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 513
    new-instance v0, Lcom/facebook/GraphResponse;

    new-instance v3, Lcom/facebook/FacebookRequestError;

    invoke-direct {v3, v1, v2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v0, v1, v1, v3}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    :goto_22
    return-object v0

    .line 451
    :cond_23
    :try_start_23
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    .line 452
    const-string/jumbo v2, "com.facebook.sdk.attributionTracking"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 455
    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 456
    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_61} :catch_10

    move-result-object v5

    .line 460
    :try_start_62
    sget-object v8, Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;->MOBILE_INSTALL_EVENT:Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    .line 463
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 464
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v10

    .line 460
    invoke-static {v8, v0, v9, v10, p0}, Lcom/facebook/internal/AppEventsLoggerUtility;->getJSONObjectForGraphAPICall(Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_6f} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6f} :catch_10

    move-result-object v0

    .line 470
    :try_start_70
    const-string/jumbo v8, "%s/activities"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 471
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v8, v0, v10}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_82} :catch_10

    move-result-object v8

    .line 473
    cmp-long v0, v6, v12

    if-eqz v0, :cond_c4

    .line 476
    if-eqz v5, :cond_e9

    .line 477
    :try_start_89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_89 .. :try_end_8e} :catch_b7
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8e} :catch_10

    :goto_8e
    move-object v2, v0

    .line 483
    :goto_8f
    if-nez v2, :cond_ba

    .line 484
    :try_start_91
    const-string/jumbo v0, "true"

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/GraphRequestBatch;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/facebook/GraphRequest;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-direct {v3, v4}, Lcom/facebook/GraphRequestBatch;-><init>([Lcom/facebook/GraphRequest;)V

    invoke-static {v0, v2, v3}, Lcom/facebook/GraphResponse;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 488
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphResponse;

    goto/16 :goto_22

    .line 466
    :catch_ad
    move-exception v0

    .line 467
    new-instance v2, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "An error occurred while publishing install."

    invoke-direct {v2, v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 480
    :catch_b7
    move-exception v0

    move-object v2, v1

    goto :goto_8f

    .line 490
    :cond_ba
    new-instance v0, Lcom/facebook/GraphResponse;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_22

    .line 495
    :cond_c4
    invoke-virtual {v8}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v0

    .line 498
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 500
    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 503
    invoke-virtual {v0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_e4

    .line 504
    invoke-virtual {v0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 506
    :cond_e4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_e7} :catch_10

    goto/16 :goto_22

    :cond_e9
    move-object v0, v1

    goto :goto_8e
.end method

.method public static publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 435
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 436
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/FacebookSdk$4;

    invoke-direct {v2, v0, p1}, Lcom/facebook/FacebookSdk$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 442
    return-void
.end method

.method public static removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .registers 3

    .prologue
    .line 291
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 292
    :try_start_3
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 293
    monitor-exit v1

    .line 294
    return-void

    .line 293
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 173
    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 174
    monitor-exit v0

    return-void

    .line 173
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 139
    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;ILcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 140
    monitor-exit v0

    return-void

    .line 139
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;ILcom/facebook/FacebookSdk$InitializeCallback;)V
    .registers 6

    .prologue
    .line 157
    const-class v1, Lcom/facebook/FacebookSdk;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-eq p1, v0, :cond_1b

    .line 158
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "The callback request code offset can\'t be updated once the SDK is initialized."

    invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_18

    .line 157
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0

    .line 160
    :cond_1b
    if-gez p1, :cond_26

    .line 161
    :try_start_1d
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "The callback request code offset can\'t be negative."

    invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_26
    sput p1, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 164
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_18

    .line 165
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    .registers 5

    .prologue
    .line 186
    const-class v1, Lcom/facebook/FacebookSdk;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 187
    if-eqz p1, :cond_10

    .line 188
    invoke-interface {p1}, Lcom/facebook/FacebookSdk$InitializeCallback;->onInitialized()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_5f

    .line 241
    :cond_10
    :goto_10
    monitor-exit v1

    return-void

    .line 193
    :cond_12
    :try_start_12
    const-string/jumbo v0, "applicationContext"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;Z)V

    .line 198
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;Z)V

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    .line 203
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->loadDefaultsFromMetadata(Landroid/content/Context;)V

    .line 205
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    sget-object v2, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/facebook/internal/Utility;->loadAppSettingsAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V

    .line 209
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/BoltsMeasurementEventListener;->getInstance(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 211
    new-instance v0, Lcom/facebook/internal/LockOnGetVariable;

    new-instance v2, Lcom/facebook/FacebookSdk$2;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$2;-><init>()V

    invoke-direct {v0, v2}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    .line 219
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/FacebookSdk$3;

    invoke-direct {v2, p1}, Lcom/facebook/FacebookSdk$3;-><init>(Lcom/facebook/FacebookSdk$InitializeCallback;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 238
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 240
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;
    :try_end_5e
    .catchall {:try_start_12 .. :try_end_5e} :catchall_5f

    goto :goto_10

    .line 186
    :catchall_5f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setApplicationId(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 677
    sput-object p0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    .line 678
    return-void
.end method

.method public static setApplicationName(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 696
    sput-object p0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    .line 697
    return-void
.end method

.method public static setCacheDir(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 750
    new-instance v0, Lcom/facebook/internal/LockOnGetVariable;

    invoke-direct {v0, p0}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    .line 751
    return-void
.end method

.method public static setClientToken(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 714
    sput-object p0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    .line 715
    return-void
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    .prologue
    .line 387
    const-string/jumbo v0, "executor"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    sget-object v1, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_9
    sput-object p0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    .line 390
    monitor-exit v1

    .line 391
    return-void

    .line 390
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public static setFacebookDomain(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 412
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "WARNING: Calling setFacebookDomain from non-DEBUG code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sput-object p0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public static setIsDebugEnabled(Z)V
    .registers 1

    .prologue
    .line 336
    sput-boolean p0, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    .line 337
    return-void
.end method

.method public static setLegacyTokenUpgradeSupported(Z)V
    .registers 1

    .prologue
    .line 360
    sput-boolean p0, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    .line 361
    return-void
.end method

.method public static setLimitEventAndDataUsage(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 551
    const-string/jumbo v0, "com.facebook.sdk.appEventPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "limitEventUsage"

    .line 553
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 555
    return-void
.end method

.method public static setOnProgressThreshold(J)V
    .registers 4

    .prologue
    .line 572
    sget-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 573
    return-void
.end method

.method public static setWebDialogTheme(I)V
    .registers 1

    .prologue
    .line 731
    sput p0, Lcom/facebook/FacebookSdk;->webDialogTheme:I

    .line 732
    return-void
.end method

.method private static updateGraphDebugBehavior()V
    .registers 2

    .prologue
    .line 349
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 350
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 351
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_1b
    return-void
.end method
