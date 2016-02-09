.class public Lcom/bitmapfun/util/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bitmapfun/util/ImageCache$ImageCacheParams;,
        Lcom/bitmapfun/util/ImageCache$RetainFragment;
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

.field private mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
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
    .line 56
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/bitmapfun/util/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheStarting:Z

    .line 88
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-direct {v0, p1, p2}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bitmapfun/util/ImageCache;->init(Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V
    .registers 3
    .param p1, "cacheParams"    # Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheStarting:Z

    .line 78
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/ImageCache;->init(Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 79
    return-void
.end method

.method static synthetic access$0()Landroid/graphics/Bitmap$CompressFormat;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/bitmapfun/util/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B

    .prologue
    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v3, p0

    if-lt v1, v3, :cond_e

    .line 455
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 449
    :cond_e
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    .line 451
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    :cond_22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static findOrCreateCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)Lcom/bitmapfun/util/ImageCache;
    .registers 4
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "cacheParams"    # Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/bitmapfun/util/ImageCache;->findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/bitmapfun/util/ImageCache$RetainFragment;

    move-result-object v1

    .line 106
    .local v1, "mRetainFragment":Lcom/bitmapfun/util/ImageCache$RetainFragment;
    invoke-virtual {v1}, Lcom/bitmapfun/util/ImageCache$RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitmapfun/util/ImageCache;

    .line 109
    .local v0, "imageCache":Lcom/bitmapfun/util/ImageCache;
    if-nez v0, :cond_14

    .line 110
    new-instance v0, Lcom/bitmapfun/util/ImageCache;

    .end local v0    # "imageCache":Lcom/bitmapfun/util/ImageCache;
    invoke-direct {v0, p1}, Lcom/bitmapfun/util/ImageCache;-><init>(Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 111
    .restart local v0    # "imageCache":Lcom/bitmapfun/util/ImageCache;
    invoke-virtual {v1, v0}, Lcom/bitmapfun/util/ImageCache$RetainFragment;->setObject(Ljava/lang/Object;)V

    .line 114
    :cond_14
    return-object v0
.end method

.method public static findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/bitmapfun/util/ImageCache$RetainFragment;
    .registers 4
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 528
    const-string v1, "ImageCache"

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bitmapfun/util/ImageCache$RetainFragment;

    .line 531
    .local v0, "mRetainFragment":Lcom/bitmapfun/util/ImageCache$RetainFragment;
    if-nez v0, :cond_1c

    .line 532
    new-instance v0, Lcom/bitmapfun/util/ImageCache$RetainFragment;

    .end local v0    # "mRetainFragment":Lcom/bitmapfun/util/ImageCache$RetainFragment;
    invoke-direct {v0}, Lcom/bitmapfun/util/ImageCache$RetainFragment;-><init>()V

    .line 533
    .restart local v0    # "mRetainFragment":Lcom/bitmapfun/util/ImageCache$RetainFragment;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "ImageCache"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 536
    :cond_1c
    return-object v0
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 465
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasHoneycombMR1()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 466
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 469
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
    .line 423
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 424
    invoke-static {}, Lcom/bitmapfun/util/ImageCache;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_37

    :cond_12
    invoke-static {p0}, Lcom/bitmapfun/util/ImageCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "cachePath":Ljava/lang/String;
    :goto_1a
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 425
    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_37
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 494
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasFroyo()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 495
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 500
    :goto_a
    return-object v1

    .line 499
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static getUsableSpace(Ljava/io/File;)J
    .registers 6
    .param p0, "path"    # Ljava/io/File;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 511
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 512
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    .line 515
    :goto_a
    return-wide v1

    .line 514
    :cond_b
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 515
    .local v0, "stats":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    goto :goto_a
.end method

.method public static hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 436
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 437
    .local v2, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 438
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/bitmapfun/util/ImageCache;->bytesToHexString([B)Ljava/lang/String;
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    .line 442
    .end local v2    # "mDigest":Ljava/security/MessageDigest;
    .local v0, "cacheKey":Ljava/lang/String;
    :goto_15
    return-object v0

    .line 439
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catch_16
    move-exception v1

    .line 440
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cacheKey":Ljava/lang/String;
    goto :goto_15
.end method

.method private init(Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V
    .registers 4
    .param p1, "cacheParams"    # Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    .line 126
    iget-object v0, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget-boolean v0, v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_13

    .line 130
    new-instance v0, Lcom/bitmapfun/util/ImageCache$1;

    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget v1, v1, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v0, p0, v1}, Lcom/bitmapfun/util/ImageCache$1;-><init>(Lcom/bitmapfun/util/ImageCache;I)V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    .line 144
    :cond_13
    iget-boolean v0, p1, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    if-eqz v0, :cond_1a

    .line 146
    invoke-virtual {p0}, Lcom/bitmapfun/util/ImageCache;->initDiskCache()V

    .line 148
    :cond_1a
    return-void
.end method

.method public static isExternalStorageRemovable()Z
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 480
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 481
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 483
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
    .line 189
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 233
    :cond_4
    :goto_4
    return-void

    .line 194
    :cond_5
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_16

    .line 195
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_16
    iget-object v6, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 200
    :try_start_19
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    if-eqz v5, :cond_4d

    .line 201
    invoke-static {p1}, Lcom/bitmapfun/util/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_4f

    move-result-object v2

    .line 202
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 204
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_22
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/bitmapfun/util/DiskLruCache;->get(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Snapshot;

    move-result-object v4

    .line 205
    .local v4, "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    if-nez v4, :cond_7b

    .line 206
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/bitmapfun/util/DiskLruCache;->edit(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v1

    .line 207
    .local v1, "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    if-eqz v1, :cond_48

    .line 208
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/bitmapfun/util/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 209
    if-eqz p3, :cond_52

    .line 210
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v7, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget v7, v7, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->compressQuality:I

    invoke-virtual {p2, v5, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 214
    :goto_42
    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache$Editor;->commit()V

    .line 215
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_48} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_48} :catch_84
    .catchall {:try_start_22 .. :try_end_48} :catchall_a1

    .line 226
    .end local v1    # "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    :cond_48
    :goto_48
    if-eqz v3, :cond_4d

    .line 227
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_aa
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4f

    .line 198
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :cond_4d
    :goto_4d
    :try_start_4d
    monitor-exit v6

    goto :goto_4

    :catchall_4f
    move-exception v5

    monitor-exit v6
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_4f

    throw v5

    .line 212
    .restart local v1    # "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :cond_52
    :try_start_52
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget-object v5, v5, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v7, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget v7, v7, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->compressQuality:I

    invoke-virtual {p2, v5, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5d} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5d} :catch_84
    .catchall {:try_start_52 .. :try_end_5d} :catchall_a1

    goto :goto_42

    .line 220
    .end local v1    # "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    .end local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_5e
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    :try_start_5f
    const-string v5, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "addBitmapToCache - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_5f .. :try_end_73} :catchall_a1

    .line 226
    if-eqz v3, :cond_4d

    .line 227
    :try_start_75
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79
    .catchall {:try_start_75 .. :try_end_78} :catchall_4f

    goto :goto_4d

    .line 229
    :catch_79
    move-exception v5

    goto :goto_4d

    .line 218
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :cond_7b
    const/4 v5, 0x0

    :try_start_7c
    invoke-virtual {v4, v5}, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_83} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_83} :catch_84
    .catchall {:try_start_7c .. :try_end_83} :catchall_a1

    goto :goto_48

    .line 222
    .end local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_84
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    :try_start_85
    const-string v5, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "addBitmapToCache - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_85 .. :try_end_99} :catchall_a1

    .line 226
    if-eqz v3, :cond_4d

    .line 227
    :try_start_9b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f
    .catchall {:try_start_9b .. :try_end_9e} :catchall_4f

    goto :goto_4d

    .line 229
    :catch_9f
    move-exception v5

    goto :goto_4d

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_a1
    move-exception v5

    .line 226
    if-eqz v3, :cond_a7

    .line 227
    :try_start_a4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_4f

    .line 230
    :cond_a7
    :goto_a7
    :try_start_a7
    throw v5
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_4f

    .line 229
    :catch_a8
    move-exception v7

    goto :goto_a7

    .restart local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_aa
    move-exception v5

    goto :goto_4d
.end method

.method public clearCache()V
    .registers 6

    .prologue
    .line 301
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_9

    .line 302
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 308
    :cond_9
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 309
    const/4 v1, 0x1

    :try_start_d
    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheStarting:Z

    .line 310
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->isClosed()Z
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_3e

    move-result v1

    if-nez v1, :cond_26

    .line 312
    :try_start_1b
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->delete()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_28
    .catchall {:try_start_1b .. :try_end_20} :catchall_3e

    .line 319
    :goto_20
    const/4 v1, 0x0

    :try_start_21
    iput-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    .line 320
    invoke-virtual {p0}, Lcom/bitmapfun/util/ImageCache;->initDiskCache()V

    .line 308
    :cond_26
    monitor-exit v2

    .line 323
    return-void

    .line 316
    :catch_28
    move-exception v0

    .line 317
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearCache - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 308
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3e
    move-exception v1

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public close()V
    .registers 6

    .prologue
    .line 349
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 350
    :try_start_3
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2f

    if-eqz v1, :cond_17

    .line 352
    :try_start_7
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_17

    .line 353
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->close()V

    .line 354
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_19
    .catchall {:try_start_7 .. :try_end_17} :catchall_2f

    .line 349
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v2

    .line 364
    return-void

    .line 359
    :catch_19
    move-exception v0

    .line 360
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "close - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 349
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public flush()V
    .registers 6

    .prologue
    .line 330
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 331
    :try_start_3
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-eqz v1, :cond_c

    .line 333
    :try_start_7
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->flush()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_e
    .catchall {:try_start_7 .. :try_end_c} :catchall_24

    .line 330
    :cond_c
    :goto_c
    :try_start_c
    monitor-exit v2

    .line 342
    return-void

    .line 337
    :catch_e
    move-exception v0

    .line 338
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "flush - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 330
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_24

    throw v1
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {p1}, Lcom/bitmapfun/util/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 263
    :goto_7
    :try_start_7
    iget-boolean v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheStarting:Z

    if-nez v5, :cond_2a

    .line 268
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_56

    if-eqz v5, :cond_4c

    .line 269
    const/4 v2, 0x0

    .line 271
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_10
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v5, v3}, Lcom/bitmapfun/util/DiskLruCache;->get(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Snapshot;

    move-result-object v4

    .line 272
    .local v4, "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    if-eqz v4, :cond_59

    .line 276
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v2

    .line 277
    if-eqz v2, :cond_59

    .line 278
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_22} :catch_32
    .catchall {:try_start_10 .. :try_end_22} :catchall_4f

    move-result-object v0

    .line 286
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_28

    .line 287
    :try_start_25
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_61
    .catchall {:try_start_25 .. :try_end_28} :catchall_56

    .line 279
    :cond_28
    :goto_28
    :try_start_28
    monitor-exit v6
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_56

    .line 292
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :goto_29
    return-object v0

    .line 265
    :cond_2a
    :try_start_2a
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2f} :catch_30
    .catchall {:try_start_2a .. :try_end_2f} :catchall_56

    goto :goto_7

    .line 266
    :catch_30
    move-exception v5

    goto :goto_7

    .line 282
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_32
    move-exception v1

    .line 283
    .local v1, "e":Ljava/io/IOException;
    :try_start_33
    const-string v5, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getBitmapFromDiskCache - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_4f

    .line 286
    if-eqz v2, :cond_4c

    .line 287
    :try_start_49
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_63
    .catchall {:try_start_49 .. :try_end_4c} :catchall_56

    .line 290
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :cond_4c
    :goto_4c
    :try_start_4c
    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_56

    .line 292
    const/4 v0, 0x0

    goto :goto_29

    .line 284
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_4f
    move-exception v5

    .line 286
    if-eqz v2, :cond_55

    .line 287
    :try_start_52
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_65
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    .line 290
    :cond_55
    :goto_55
    :try_start_55
    throw v5

    .line 262
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_56
    move-exception v5

    monitor-exit v6
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_56

    throw v5

    .line 286
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :cond_59
    if-eqz v2, :cond_4c

    .line 287
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catchall {:try_start_5b .. :try_end_5e} :catchall_56

    goto :goto_4c

    .line 289
    :catch_5f
    move-exception v5

    goto :goto_4c

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_61
    move-exception v5

    goto :goto_28

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_63
    move-exception v5

    goto :goto_4c

    .end local v1    # "e":Ljava/io/IOException;
    :catch_65
    move-exception v7

    goto :goto_55
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_f

    .line 243
    iget-object v1, p0, Lcom/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 244
    .local v0, "memBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_f

    .line 251
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
    .line 158
    iget-object v3, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 159
    :try_start_3
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v2}, Lcom/bitmapfun/util/DiskLruCache;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 160
    :cond_f
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget-object v0, v2, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 161
    .local v0, "diskCacheDir":Ljava/io/File;
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget-boolean v2, v2, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    if-eqz v2, :cond_3e

    if-eqz v0, :cond_3e

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_24

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 165
    :cond_24
    invoke-static {v0}, Lcom/bitmapfun/util/ImageCache;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget v2, v2, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheSize:I
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_63

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_3e

    .line 167
    const/4 v2, 0x1

    const/4 v4, 0x1

    :try_start_33
    iget-object v5, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    iget v5, v5, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheSize:I

    int-to-long v5, v5

    invoke-static {v0, v2, v4, v5, v6}, Lcom/bitmapfun/util/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/bitmapfun/util/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskLruCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3e} :catch_48
    .catchall {:try_start_33 .. :try_end_3e} :catchall_63

    .line 178
    .end local v0    # "diskCacheDir":Ljava/io/File;
    :cond_3e
    :goto_3e
    const/4 v2, 0x0

    :try_start_3f
    iput-boolean v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheStarting:Z

    .line 179
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 158
    monitor-exit v3

    .line 181
    return-void

    .line 171
    .restart local v0    # "diskCacheDir":Ljava/io/File;
    :catch_48
    move-exception v1

    .line 172
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/bitmapfun/util/ImageCache;->mCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 173
    const-string v2, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initDiskCache - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 158
    .end local v0    # "diskCacheDir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_63
    move-exception v2

    monitor-exit v3
    :try_end_65
    .catchall {:try_start_3f .. :try_end_65} :catchall_63

    throw v2
.end method
