.class public Lcom/bitmapfun/util/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bitmapfun/util/ImageCache$RetainFragment;,
        Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLEAR_DISK_CACHE_ON_START:Z = false

.field private static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x64

.field private static final DEFAULT_DISK_CACHE_ENABLED:Z = true

.field private static final DEFAULT_DISK_CACHE_SIZE:I = 0x3200000

.field private static final DEFAULT_INIT_DISK_CACHE_ON_CREATE:Z = false

.field private static final DEFAULT_MEM_CACHE_ENABLED:Z = true

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x1900000

.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageCache"


# instance fields
.field private mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskCacheStarting:Z

.field private mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/bitmapfun/util/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheStarting:Z

    .line 87
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-direct {v0, p1, p2}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bitmapfun/util/ImageCache;->init(Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V
    .registers 3
    .param p1, "cacheParams"    # Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheStarting:Z

    .line 77
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/ImageCache;->init(Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 78
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Bitmap$CompressFormat;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/bitmapfun/util/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B

    .prologue
    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v3, p0

    if-ge v1, v3, :cond_23

    .line 448
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    .line 450
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    :cond_1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 454
    .end local v0    # "hex":Ljava/lang/String;
    :cond_23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static findOrCreateCache(Landroid/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)Lcom/bitmapfun/util/ImageCache;
    .registers 4
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "cacheParams"    # Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    .prologue
    .line 102
    invoke-static {p0}, Lcom/bitmapfun/util/ImageCache;->findOrCreateRetainFragment(Landroid/app/FragmentManager;)Lcom/bitmapfun/util/ImageCache$RetainFragment;

    move-result-object v1

    .line 105
    .local v1, "mRetainFragment":Lcom/bitmapfun/util/ImageCache$RetainFragment;
    invoke-virtual {v1}, Lcom/bitmapfun/util/ImageCache$RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitmapfun/util/ImageCache;

    .line 108
    .local v0, "imageCache":Lcom/bitmapfun/util/ImageCache;
    if-nez v0, :cond_14

    .line 109
    new-instance v0, Lcom/bitmapfun/util/ImageCache;

    .end local v0    # "imageCache":Lcom/bitmapfun/util/ImageCache;
    invoke-direct {v0, p1}, Lcom/bitmapfun/util/ImageCache;-><init>(Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 110
    .restart local v0    # "imageCache":Lcom/bitmapfun/util/ImageCache;
    invoke-virtual {v1, v0}, Lcom/bitmapfun/util/ImageCache$RetainFragment;->setObject(Ljava/lang/Object;)V

    .line 113
    :cond_14
    return-object v0
.end method

.method public static findOrCreateRetainFragment(Landroid/app/FragmentManager;)Lcom/bitmapfun/util/ImageCache$RetainFragment;
    .registers 4
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 527
    const-string/jumbo v1, "ImageCache"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bitmapfun/util/ImageCache$RetainFragment;

    .line 530
    .local v0, "mRetainFragment":Lcom/bitmapfun/util/ImageCache$RetainFragment;
    if-nez v0, :cond_1e

    .line 531
    new-instance v0, Lcom/bitmapfun/util/ImageCache$RetainFragment;

    .end local v0    # "mRetainFragment":Lcom/bitmapfun/util/ImageCache$RetainFragment;
    invoke-direct {v0}, Lcom/bitmapfun/util/ImageCache$RetainFragment;-><init>()V

    .line 532
    .restart local v0    # "mRetainFragment":Lcom/bitmapfun/util/ImageCache$RetainFragment;
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "ImageCache"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 535
    :cond_1e
    return-object v0
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 464
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasHoneycombMR1()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 465
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 468
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_a
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string/jumbo v1, "mounted"

    .line 422
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 423
    invoke-static {}, Lcom/bitmapfun/util/ImageCache;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_38

    :cond_13
    invoke-static {p0}, Lcom/bitmapfun/util/ImageCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "cachePath":Ljava/lang/String;
    :goto_1b
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 424
    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_38
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 493
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasFroyo()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 494
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 499
    :goto_a
    return-object v1

    .line 498
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static getUsableSpace(Ljava/io/File;)J
    .registers 7
    .param p0, "path"    # Ljava/io/File;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 510
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 511
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    .line 514
    :goto_a
    return-wide v2

    .line 513
    :cond_b
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 514
    .local v0, "stats":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    goto :goto_a
.end method

.method public static hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 435
    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 436
    .local v2, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 437
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/bitmapfun/util/ImageCache;->bytesToHexString([B)Ljava/lang/String;
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    .line 441
    .end local v2    # "mDigest":Ljava/security/MessageDigest;
    .local v0, "cacheKey":Ljava/lang/String;
    :goto_16
    return-object v0

    .line 438
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catch_17
    move-exception v1

    .line 439
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cacheKey":Ljava/lang/String;
    goto :goto_16
.end method

.method private init(Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V
    .registers 4
    .param p1, "cacheParams"    # Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    .line 125
    iget-object v0, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget-boolean v0, v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_13

    .line 129
    new-instance v0, Lcom/bitmapfun/util/ImageCache$1;

    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget v1, v1, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v0, p0, v1}, Lcom/bitmapfun/util/ImageCache$1;-><init>(Lcom/bitmapfun/util/ImageCache;I)V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    .line 143
    :cond_13
    iget-boolean v0, p1, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    if-eqz v0, :cond_1a

    .line 145
    invoke-virtual {p0}, Lcom/bitmapfun/util/ImageCache;->initDiskCache()V

    .line 147
    :cond_1a
    return-void
.end method

.method public static isExternalStorageRemovable()Z
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 479
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 480
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 482
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .registers 13
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isPNG"    # Z

    .prologue
    .line 188
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 232
    :cond_4
    :goto_4
    return-void

    .line 193
    :cond_5
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_16

    .line 194
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v5, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_16
    iget-object v6, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 199
    :try_start_19
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    if-eqz v5, :cond_4e

    .line 200
    invoke-static {p1}, Lcom/bitmapfun/util/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_50

    move-result-object v2

    .line 201
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 203
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_22
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/bitmapfun/util/DiskLruCache;->get(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Snapshot;

    move-result-object v4

    .line 204
    .local v4, "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    if-nez v4, :cond_82

    .line 205
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/bitmapfun/util/DiskLruCache;->edit(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v1

    .line 206
    .local v1, "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    if-eqz v1, :cond_49

    .line 207
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/bitmapfun/util/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 208
    const/4 v5, 0x1

    if-ne p3, v5, :cond_53

    .line 209
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v7, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget v7, v7, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->compressQuality:I

    invoke-virtual {p2, v5, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 213
    :goto_43
    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache$Editor;->commit()V

    .line 214
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_49} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_49} :catch_8b
    .catchall {:try_start_22 .. :try_end_49} :catchall_ae

    .line 225
    .end local v1    # "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    :cond_49
    :goto_49
    if-eqz v3, :cond_4e

    .line 226
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_b5
    .catchall {:try_start_4b .. :try_end_4e} :catchall_50

    .line 231
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :cond_4e
    :goto_4e
    :try_start_4e
    monitor-exit v6

    goto :goto_4

    :catchall_50
    move-exception v5

    monitor-exit v6
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_50

    throw v5

    .line 211
    .restart local v1    # "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :cond_53
    :try_start_53
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget-object v5, v5, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v7, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget v7, v7, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->compressQuality:I

    invoke-virtual {p2, v5, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5e} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5e} :catch_8b
    .catchall {:try_start_53 .. :try_end_5e} :catchall_ae

    goto :goto_43

    .line 219
    .end local v1    # "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    .end local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_5f
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    :try_start_60
    const-string/jumbo v5, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "addBitmapToCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_60 .. :try_end_7a} :catchall_ae

    .line 225
    if-eqz v3, :cond_4e

    .line 226
    :try_start_7c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80
    .catchall {:try_start_7c .. :try_end_7f} :catchall_50

    goto :goto_4e

    .line 228
    :catch_80
    move-exception v5

    goto :goto_4e

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :cond_82
    const/4 v5, 0x0

    :try_start_83
    invoke-virtual {v4, v5}, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8a} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8a} :catch_8b
    .catchall {:try_start_83 .. :try_end_8a} :catchall_ae

    goto :goto_49

    .line 221
    .end local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_8b
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8c
    const-string/jumbo v5, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "addBitmapToCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_8c .. :try_end_a6} :catchall_ae

    .line 225
    if-eqz v3, :cond_4e

    .line 226
    :try_start_a8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_50

    goto :goto_4e

    .line 228
    :catch_ac
    move-exception v5

    goto :goto_4e

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_ae
    move-exception v5

    .line 225
    if-eqz v3, :cond_b4

    .line 226
    :try_start_b1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b7
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_50

    .line 228
    :cond_b4
    :goto_b4
    :try_start_b4
    throw v5
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_50

    .restart local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_b5
    move-exception v5

    goto :goto_4e

    .end local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_b7
    move-exception v7

    goto :goto_b4
.end method

.method public clearCache()V
    .registers 6

    .prologue
    .line 300
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v1, :cond_9

    .line 301
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 307
    :cond_9
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    const/4 v1, 0x1

    :try_start_d
    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheStarting:Z

    .line 309
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->isClosed()Z
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_44

    move-result v1

    if-nez v1, :cond_26

    .line 311
    :try_start_1b
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->delete()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_28
    .catchall {:try_start_1b .. :try_end_20} :catchall_44

    .line 318
    :goto_20
    const/4 v1, 0x0

    :try_start_21
    iput-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    .line 319
    invoke-virtual {p0}, Lcom/bitmapfun/util/ImageCache;->initDiskCache()V

    .line 321
    :cond_26
    monitor-exit v2

    .line 322
    return-void

    .line 315
    :catch_28
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clearCache - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 321
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_44
    move-exception v1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_21 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public close()V
    .registers 6

    .prologue
    .line 348
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 349
    :try_start_3
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_35

    if-eqz v1, :cond_17

    .line 351
    :try_start_7
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_17

    .line 352
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->close()V

    .line 353
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_19
    .catchall {:try_start_7 .. :try_end_17} :catchall_35

    .line 362
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v2

    .line 363
    return-void

    .line 358
    :catch_19
    move-exception v0

    .line 359
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "close - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 362
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public flush()V
    .registers 6

    .prologue
    .line 329
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 330
    :try_start_3
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2a

    if-eqz v1, :cond_c

    .line 332
    :try_start_7
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->flush()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_e
    .catchall {:try_start_7 .. :try_end_c} :catchall_2a

    .line 340
    :cond_c
    :goto_c
    :try_start_c
    monitor-exit v2

    .line 341
    return-void

    .line 336
    :catch_e
    move-exception v0

    .line 337
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "flush - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 340
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {p1}, Lcom/bitmapfun/util/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 262
    :goto_7
    :try_start_7
    iget-boolean v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheStarting:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_3a

    if-eqz v5, :cond_13

    .line 264
    :try_start_b
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_3a

    goto :goto_7

    .line 265
    :catch_11
    move-exception v5

    goto :goto_7

    .line 267
    :cond_13
    :try_start_13
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_3a

    if-eqz v5, :cond_37

    .line 268
    const/4 v2, 0x0

    .line 270
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_18
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v5, v3}, Lcom/bitmapfun/util/DiskLruCache;->get(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Snapshot;

    move-result-object v4

    .line 271
    .local v4, "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    if-eqz v4, :cond_32

    .line 275
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v2

    .line 276
    if-eqz v2, :cond_32

    .line 277
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2a} :catch_3d
    .catchall {:try_start_18 .. :try_end_2a} :catchall_60

    move-result-object v0

    .line 285
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_30

    .line 286
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_67
    .catchall {:try_start_2d .. :try_end_30} :catchall_3a

    .line 288
    :cond_30
    :goto_30
    :try_start_30
    monitor-exit v6
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_3a

    .line 291
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :goto_31
    return-object v0

    .line 285
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :cond_32
    if-eqz v2, :cond_37

    .line 286
    :try_start_34
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_69
    .catchall {:try_start_34 .. :try_end_37} :catchall_3a

    .line 291
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :cond_37
    :goto_37
    const/4 v0, 0x0

    :try_start_38
    monitor-exit v6

    goto :goto_31

    .line 292
    :catchall_3a
    move-exception v5

    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v5

    .line 281
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_3d
    move-exception v1

    .line 282
    .local v1, "e":Ljava/io/IOException;
    :try_start_3e
    const-string/jumbo v5, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBitmapFromDiskCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_60

    .line 285
    if-eqz v2, :cond_37

    .line 286
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e
    .catchall {:try_start_5a .. :try_end_5d} :catchall_3a

    goto :goto_37

    .line 288
    :catch_5e
    move-exception v5

    goto :goto_37

    .line 284
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_60
    move-exception v5

    .line 285
    if-eqz v2, :cond_66

    .line 286
    :try_start_63
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_6b
    .catchall {:try_start_63 .. :try_end_66} :catchall_3a

    .line 288
    :cond_66
    :goto_66
    :try_start_66
    throw v5
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_3a

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_67
    move-exception v5

    goto :goto_30

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_69
    move-exception v5

    goto :goto_37

    .end local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_6b
    move-exception v7

    goto :goto_66
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v1, :cond_f

    .line 242
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 243
    .local v0, "memBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_f

    .line 250
    .end local v0    # "memBitmap":Landroid/graphics/Bitmap;
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public initDiskCache()V
    .registers 9

    .prologue
    .line 157
    iget-object v3, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 158
    :try_start_3
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v2}, Lcom/bitmapfun/util/DiskLruCache;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 159
    :cond_f
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget-object v0, v2, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 160
    .local v0, "diskCacheDir":Ljava/io/File;
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget-boolean v2, v2, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    if-eqz v2, :cond_3e

    if-eqz v0, :cond_3e

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_24

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 164
    :cond_24
    invoke-static {v0}, Lcom/bitmapfun/util/ImageCache;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget v2, v2, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheSize:I
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_69

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_3e

    .line 166
    const/4 v2, 0x1

    const/4 v4, 0x1

    :try_start_33
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget v5, v5, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheSize:I

    int-to-long v6, v5

    invoke-static {v0, v2, v4, v6, v7}, Lcom/bitmapfun/util/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/bitmapfun/util/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3e} :catch_48
    .catchall {:try_start_33 .. :try_end_3e} :catchall_69

    .line 177
    .end local v0    # "diskCacheDir":Ljava/io/File;
    :cond_3e
    :goto_3e
    const/4 v2, 0x0

    :try_start_3f
    iput-boolean v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheStarting:Z

    .line 178
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 179
    monitor-exit v3

    .line 180
    return-void

    .line 170
    .restart local v0    # "diskCacheDir":Ljava/io/File;
    :catch_48
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 172
    const-string/jumbo v2, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initDiskCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 179
    .end local v0    # "diskCacheDir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_69
    move-exception v2

    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_3f .. :try_end_6b} :catchall_69

    throw v2
.end method
