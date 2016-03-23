.class public Lcom/bzbs/marketplace/util/CacheLibs;
.super Ljava/lang/Object;
.source "CacheLibs.java"


# instance fields
.field cacheName:Ljava/lang/String;

.field cacheVersion:I

.field diskCacheSize:I

.field ramCacheSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    const v1, 0xfa000

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/bzbs/marketplace/util/CacheLibs;->cacheVersion:I

    .line 20
    iput-object p1, p0, Lcom/bzbs/marketplace/util/CacheLibs;->cacheName:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/bzbs/marketplace/util/CacheLibs;->ramCacheSize:I

    .line 22
    iput v1, p0, Lcom/bzbs/marketplace/util/CacheLibs;->diskCacheSize:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "ramCacheSize"    # I
    .param p3, "diskCacheSize"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/bzbs/marketplace/util/CacheLibs;->cacheVersion:I

    .line 26
    iput p2, p0, Lcom/bzbs/marketplace/util/CacheLibs;->ramCacheSize:I

    .line 27
    iput-object p1, p0, Lcom/bzbs/marketplace/util/CacheLibs;->cacheName:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/bzbs/marketplace/util/CacheLibs;->diskCacheSize:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "ramCacheSize"    # I
    .param p3, "diskCacheSize"    # I
    .param p4, "cacheVersion"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/bzbs/marketplace/util/CacheLibs;->cacheVersion:I

    .line 32
    iput-object p1, p0, Lcom/bzbs/marketplace/util/CacheLibs;->cacheName:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/bzbs/marketplace/util/CacheLibs;->diskCacheSize:I

    .line 34
    iput p2, p0, Lcom/bzbs/marketplace/util/CacheLibs;->ramCacheSize:I

    .line 35
    iput p4, p0, Lcom/bzbs/marketplace/util/CacheLibs;->cacheVersion:I

    .line 36
    return-void
.end method


# virtual methods
.method public initDualCache(Landroid/app/Application;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .registers 6
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->enableLog()V

    .line 40
    invoke-static {p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheContextUtils;->setContext(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;

    iget-object v1, p0, Lcom/bzbs/marketplace/util/CacheLibs;->cacheName:Ljava/lang/String;

    iget v2, p0, Lcom/bzbs/marketplace/util/CacheLibs;->cacheVersion:I

    const-class v3, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    iget v1, p0, Lcom/bzbs/marketplace/util/CacheLibs;->ramCacheSize:I

    .line 43
    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->useDefaultSerializerInRam(I)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bzbs/marketplace/util/CacheLibs;->diskCacheSize:I

    const/4 v2, 0x1

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->useDefaultSerializerInDisk(IZ)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    return-object v0
.end method
