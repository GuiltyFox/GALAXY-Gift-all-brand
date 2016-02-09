.class public Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitmapfun/util/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheParams"
.end annotation


# instance fields
.field public clearDiskCacheOnStart:Z

.field public compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public compressQuality:I

.field public diskCacheDir:Ljava/io/File;

.field public diskCacheEnabled:Z

.field public diskCacheSize:I

.field public initDiskCacheOnCreate:Z

.field public memCacheSize:I

.field public memoryCacheEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    const/high16 v0, 0x1900000

    iput v0, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 371
    const/high16 v0, 0x3200000

    iput v0, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheSize:I

    .line 373
    # getter for: Lcom/bitmapfun/util/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {}, Lcom/bitmapfun/util/ImageCache;->access$0()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 374
    const/16 v0, 0x64

    iput v0, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->compressQuality:I

    .line 375
    iput-boolean v2, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 376
    iput-boolean v2, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 377
    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    .line 378
    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    .line 381
    invoke-static {p1, p2}, Lcom/bitmapfun/util/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 382
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "diskCacheDir"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    const/high16 v0, 0x1900000

    iput v0, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 371
    const/high16 v0, 0x3200000

    iput v0, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheSize:I

    .line 373
    # getter for: Lcom/bitmapfun/util/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {}, Lcom/bitmapfun/util/ImageCache;->access$0()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 374
    const/16 v0, 0x64

    iput v0, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->compressQuality:I

    .line 375
    iput-boolean v2, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 376
    iput-boolean v2, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 377
    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    .line 378
    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    .line 385
    iput-object p1, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 386
    return-void
.end method

.method private static getMemoryClass(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method


# virtual methods
.method public setMemCacheSizePercent(Landroid/content/Context;F)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "percent"    # F

    .prologue
    const/high16 v1, 0x44800000

    .line 401
    const v0, 0x3d4ccccd

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_10

    const v0, 0x3f4ccccd

    cmpl-float v0, p2, v0

    if-lez v0, :cond_18

    .line 402
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_18
    invoke-static {p1}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->getMemoryClass(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 405
    return-void
.end method
