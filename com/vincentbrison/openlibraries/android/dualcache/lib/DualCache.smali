.class public Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
.super Ljava/lang/Object;
.source "DualCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;,
        Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final CACHE_FILE_PREFIX:Ljava/lang/String; = "dualcache"

.field private static final LOG_PREFIX:Ljava/lang/String; = "Entry for "

.field private static sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private mAppVersion:I

.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mDiskCacheFolder:Ljava/io/File;

.field private mDiskCacheSizeInBytes:I

.field private mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

.field private mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

.field private mDiskSerializer:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mHandlerSizeOf:Lcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

.field private mRamCacheLru:Landroid/support/v4/util/LruCache;

.field private mRamSerializer:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 157
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 158
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->ALL:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 159
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->FIELD:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 160
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->NON_FINAL:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enableDefaultTyping(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 161
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "appVersion"    # I
    .param p3, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 170
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    iput-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    .line 145
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    iput-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    .line 171
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mId:Ljava/lang/String;

    .line 172
    iput p2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mAppVersion:I

    .line 173
    iput-object p3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mClazz:Ljava/lang/Class;

    .line 174
    return-void
.end method

.method public static getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 1

    .prologue
    .line 206
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method private logEntryForKeyIsInRam(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 516
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Entry for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is in RAM."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logInfo(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method private logEntryForKeyIsNotInRam(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 520
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Entry for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is not in RAM."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logInfo(Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method private logEntryForKeyIsNotOnDisk(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 528
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Entry for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is not on disk."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logInfo(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method private logEntryForKeyIsOnDisk(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 524
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Entry for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is on disk."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logInfo(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method private logEntrySavedForKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 512
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Entry for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is saved in cache."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logInfo(Ljava/lang/String;)V

    .line 513
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 457
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->DISABLE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 458
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_f
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->DISABLE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 463
    :try_start_19
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v1, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 468
    :cond_1e
    :goto_1e
    return-void

    .line 464
    :catch_1f
    move-exception v0

    .line 465
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logError(Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    const/4 v4, 0x0

    .line 333
    .local v4, "ramResult":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 334
    .local v0, "diskResult":Ljava/lang/String;
    const/4 v5, 0x0

    .line 337
    .local v5, "snapshotObject":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_REFERENCE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 338
    :cond_21
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    invoke-virtual {v6, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 341
    .end local v4    # "ramResult":Ljava/lang/Object;
    :cond_27
    if-nez v4, :cond_15b

    .line 343
    invoke-direct {p0, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->logEntryForKeyIsNotInRam(Ljava/lang/String;)V

    .line 344
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 346
    :cond_40
    :try_start_40
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v6, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_45} :catch_82

    move-result-object v5

    .line 350
    :goto_46
    if-eqz v5, :cond_8c

    .line 351
    invoke-direct {p0, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->logEntryForKeyIsOnDisk(Ljava/lang/String;)V

    .line 353
    const/4 v6, 0x0

    :try_start_4c
    invoke-virtual {v5, v6}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getString(I)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_87

    move-result-object v0

    .line 362
    :cond_50
    :goto_50
    const/4 v2, 0x0

    .line 363
    .local v2, "objectFromJsonDisk":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 365
    .local v3, "objectFromStringDisk":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_143

    .line 367
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 368
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 370
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    invoke-virtual {v6, p1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v2    # "objectFromJsonDisk":Ljava/lang/Object;, "TT;"
    .end local v3    # "objectFromStringDisk":Ljava/lang/Object;, "TT;"
    :cond_6d
    :goto_6d
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_146

    .line 417
    if-nez v2, :cond_81

    .line 418
    :try_start_79
    sget-object v6, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v7, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mClazz:Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_80} :catch_13f

    move-result-object v2

    .line 447
    :cond_81
    :goto_81
    return-object v2

    .line 347
    :catch_82
    move-exception v1

    .line 348
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logError(Ljava/lang/Throwable;)V

    goto :goto_46

    .line 354
    .end local v1    # "e":Ljava/io/IOException;
    :catch_87
    move-exception v1

    .line 355
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logError(Ljava/lang/Throwable;)V

    goto :goto_50

    .line 358
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8c
    invoke-direct {p0, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->logEntryForKeyIsNotOnDisk(Ljava/lang/String;)V

    goto :goto_50

    .line 371
    .restart local v2    # "objectFromJsonDisk":Ljava/lang/Object;, "TT;"
    .restart local v3    # "objectFromStringDisk":Ljava/lang/Object;, "TT;"
    :cond_90
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 374
    :try_start_9a
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskSerializer:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v6, v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 375
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 376
    invoke-virtual {v7, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 375
    invoke-virtual {v6, p1, v7}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_9a .. :try_end_ab} :catch_ac

    goto :goto_6d

    .line 378
    .end local v3    # "objectFromStringDisk":Ljava/lang/Object;, "TT;"
    :catch_ac
    move-exception v1

    .line 379
    .local v1, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    invoke-static {v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logError(Ljava/lang/Throwable;)V

    goto :goto_6d

    .line 382
    .end local v1    # "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    .restart local v3    # "objectFromStringDisk":Ljava/lang/Object;, "TT;"
    :cond_b1
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_REFERENCE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 383
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 386
    :try_start_c5
    sget-object v6, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v7, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mClazz:Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 387
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    invoke-virtual {v6, p1, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_d2} :catch_d3

    goto :goto_6d

    .line 388
    .end local v2    # "objectFromJsonDisk":Ljava/lang/Object;, "TT;"
    :catch_d3
    move-exception v1

    .line 389
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logError(Ljava/lang/Throwable;)V

    goto :goto_6d

    .line 391
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "objectFromJsonDisk":Ljava/lang/Object;, "TT;"
    :cond_d8
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 393
    if-nez v3, :cond_ea

    .line 394
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskSerializer:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v6, v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 396
    .end local v3    # "objectFromStringDisk":Ljava/lang/Object;, "TT;"
    :cond_ea
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    invoke-virtual {v6, p1, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6d

    .line 398
    .restart local v3    # "objectFromStringDisk":Ljava/lang/Object;, "TT;"
    :cond_f1
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 399
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_120

    .line 402
    :try_start_105
    sget-object v6, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v7, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mClazz:Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 403
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    iget-object v7, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamSerializer:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v7, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_118} :catch_11a

    goto/16 :goto_6d

    .line 404
    .end local v2    # "objectFromJsonDisk":Ljava/lang/Object;, "TT;"
    :catch_11a
    move-exception v1

    .line 405
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_6d

    .line 407
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "objectFromJsonDisk":Ljava/lang/Object;, "TT;"
    :cond_120
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 409
    if-nez v3, :cond_132

    .line 410
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskSerializer:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v6, v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 412
    .end local v3    # "objectFromStringDisk":Ljava/lang/Object;, "TT;"
    :cond_132
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    iget-object v7, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamSerializer:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v7, v3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6d

    .line 421
    .end local v2    # "objectFromJsonDisk":Ljava/lang/Object;, "TT;"
    :catch_13f
    move-exception v1

    .line 422
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logError(Ljava/lang/Throwable;)V

    .line 447
    .end local v1    # "e":Ljava/io/IOException;
    :cond_143
    :goto_143
    const/4 v2, 0x0

    goto/16 :goto_81

    .line 424
    :cond_146
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_143

    .line 425
    if-nez v3, :cond_158

    .line 426
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskSerializer:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v6, v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :cond_158
    move-object v2, v3

    .line 428
    goto/16 :goto_81

    .line 432
    :cond_15b
    invoke-direct {p0, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->logEntryForKeyIsInRam(Ljava/lang/String;)V

    .line 433
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_179

    .line 435
    :try_start_168
    sget-object v6, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    check-cast v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mClazz:Ljava/lang/Class;

    invoke-virtual {v6, v4, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_171} :catch_174

    move-result-object v2

    goto/16 :goto_81

    .line 436
    :catch_174
    move-exception v1

    .line 437
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logError(Ljava/lang/Throwable;)V

    goto :goto_143

    .line 439
    .end local v1    # "e":Ljava/io/IOException;
    :cond_179
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_REFERENCE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_186

    move-object v2, v4

    .line 440
    goto/16 :goto_81

    .line 441
    :cond_186
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v7, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v6, v7}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_143

    .line 442
    iget-object v6, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamSerializer:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v6, v4}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_81
.end method

.method protected getAppVersion()I
    .registers 2

    .prologue
    .line 177
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iget v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mAppVersion:I

    return v0
.end method

.method protected getCacheId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskCacheFolder()Ljava/io/File;
    .registers 2

    .prologue
    .line 259
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskCacheFolder:Ljava/io/File;

    return-object v0
.end method

.method public getDiskMode()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;
    .registers 2

    .prologue
    .line 272
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    return-object v0
.end method

.method public getDiskSize()J
    .registers 3

    .prologue
    .line 228
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-nez v0, :cond_7

    .line 229
    const-wide/16 v0, -0x1

    .line 231
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->size()J

    move-result-wide v0

    goto :goto_6
.end method

.method public getRAMMode()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;
    .registers 2

    .prologue
    .line 242
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    return-object v0
.end method

.method public getRamSize()J
    .registers 3

    .prologue
    .line 215
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    if-nez v0, :cond_7

    .line 216
    const-wide/16 v0, -0x1

    .line 218
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->size()I

    move-result v0

    int-to-long v0, v0

    goto :goto_6
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 474
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    invoke-virtual {p0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->invalidateDisk()V

    .line 475
    invoke-virtual {p0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->invalidateRAM()V

    .line 476
    return-void
.end method

.method public invalidateDisk()V
    .registers 7

    .prologue
    .line 491
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->DISABLE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 493
    :try_start_a
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->delete()V

    .line 494
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskCacheFolder:Ljava/io/File;

    iget v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mAppVersion:I

    const/4 v3, 0x1

    iget v4, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskCacheSizeInBytes:I

    int-to-long v4, v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_1e

    .line 499
    :cond_1d
    :goto_1d
    return-void

    .line 495
    :catch_1e
    move-exception v0

    .line 496
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logError(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method public invalidateRAM()V
    .registers 3

    .prologue
    .line 482
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->DISABLE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 483
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 485
    :cond_f
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 283
    .local v2, "jsonStringObject":Ljava/lang/String;
    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v4, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_REFERENCE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v3, v4}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 284
    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_10
    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v4, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v3, v4}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 288
    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    iget-object v4, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamSerializer:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v4, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_25
    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v4, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v3, v4}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 293
    :try_start_2f
    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v3, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    .line 294
    .local v1, "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskSerializer:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v4, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->set(ILjava/lang/String;)V

    .line 295
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_42} :catch_83

    .line 301
    .end local v1    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :cond_42
    :goto_42
    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v4, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v3, v4}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v4, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v3, v4}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 303
    :cond_56
    :try_start_56
    sget-object v3, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5b
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_56 .. :try_end_5b} :catch_88

    move-result-object v2

    .line 308
    :goto_5c
    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v4, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v3, v4}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 309
    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, p1, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_6b
    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v4, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v3, v4}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 314
    :try_start_75
    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v3, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    .line 315
    .restart local v1    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->set(ILjava/lang/String;)V

    .line 316
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_82} :catch_8d

    .line 322
    .end local v1    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :cond_82
    :goto_82
    return-void

    .line 296
    :catch_83
    move-exception v0

    .line 297
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logError(Ljava/lang/Throwable;)V

    goto :goto_42

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    :catch_88
    move-exception v0

    .line 305
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logError(Ljava/lang/Throwable;)V

    goto :goto_5c

    .line 317
    .end local v0    # "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :catch_8d
    move-exception v0

    .line 318
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logError(Ljava/lang/Throwable;)V

    goto :goto_82
.end method

.method public setDiskCacheFolder(Ljava/io/File;)V
    .registers 2
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    .line 263
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskCacheFolder:Ljava/io/File;

    .line 264
    return-void
.end method

.method protected setDiskCacheSizeInBytes(I)V
    .registers 2
    .param p1, "diskCacheSizeInBytes"    # I

    .prologue
    .line 255
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iput p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskCacheSizeInBytes:I

    .line 256
    return-void
.end method

.method protected setDiskLruCache(Lcom/jakewharton/disklrucache/DiskLruCache;)V
    .registers 2
    .param p1, "diskLruCache"    # Lcom/jakewharton/disklrucache/DiskLruCache;

    .prologue
    .line 185
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 186
    return-void
.end method

.method public setDiskMode(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;)V
    .registers 2
    .param p1, "diskMode"    # Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    .prologue
    .line 507
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    .line 508
    return-void
.end method

.method protected setDiskSerializer(Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    .local p1, "diskSerializer":Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer<TT;>;"
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mDiskSerializer:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    .line 194
    return-void
.end method

.method protected setRAMMode(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;)V
    .registers 2
    .param p1, "ramMode"    # Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    .prologue
    .line 251
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRAMMode:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    .line 252
    return-void
.end method

.method protected setRAMSerializer(Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    .local p1, "ramSerializer":Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer<TT;>;"
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamSerializer:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    .line 190
    return-void
.end method

.method protected setRamCacheLru(Landroid/support/v4/util/LruCache;)V
    .registers 2
    .param p1, "ramLruCache"    # Landroid/support/v4/util/LruCache;

    .prologue
    .line 197
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->mRamCacheLru:Landroid/support/v4/util/LruCache;

    .line 198
    return-void
.end method
