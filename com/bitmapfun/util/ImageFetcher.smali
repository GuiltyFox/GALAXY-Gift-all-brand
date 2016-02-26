.class public Lcom/bitmapfun/util/ImageFetcher;
.super Lcom/bitmapfun/util/ImageResizer;
.source "ImageFetcher.java"


# static fields
.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final HTTP_CACHE_DIR:Ljava/lang/String; = "http"

.field private static final HTTP_CACHE_SIZE:I = 0x3200000

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "ImageFetcher"


# instance fields
.field private mHttpCacheDir:Ljava/io/File;

.field private mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

.field private final mHttpDiskCacheLock:Ljava/lang/Object;

.field private mHttpDiskCacheStarting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageSize"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/bitmapfun/util/ImageResizer;-><init>(Landroid/content/Context;I)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    .line 76
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/ImageFetcher;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/bitmapfun/util/ImageResizer;-><init>(Landroid/content/Context;II)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    .line 65
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/ImageFetcher;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private checkConnection(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 175
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 176
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_25

    .line 177
    :cond_14
    const-string v2, "no connection found!"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 178
    const-string v2, "ImageFetcher"

    const-string v3, "checkConnection - no connection found"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_25
    return-void
.end method

.method public static disableConnectionReuseIfNecessary()V
    .registers 2

    .prologue
    .line 326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_d

    .line 327
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    :cond_d
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/ImageFetcher;->checkConnection(Landroid/content/Context;)V

    .line 81
    const-string v0, "http"

    invoke-static {p1, v0}, Lcom/bitmapfun/util/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    .line 82
    return-void
.end method

.method private initHttpDiskCache()V
    .registers 9

    .prologue
    const-wide/32 v6, 0x3200000

    .line 91
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 92
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_10
    iget-object v2, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 95
    :try_start_13
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/bitmapfun/util/ImageCache;->getUsableSpace(Ljava/io/File;)J
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_39

    move-result-wide v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_2a

    .line 97
    :try_start_1d
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/32 v6, 0x3200000

    invoke-static {v1, v3, v4, v6, v7}, Lcom/bitmapfun/util/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/bitmapfun/util/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2a} :catch_34
    .catchall {:try_start_1d .. :try_end_2a} :catchall_39

    .line 105
    :cond_2a
    :goto_2a
    const/4 v1, 0x0

    :try_start_2b
    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 106
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit v2

    .line 108
    return-void

    .line 101
    :catch_34
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    goto :goto_2a

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_39
    move-exception v1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 17
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 194
    invoke-static/range {p1 .. p1}, Lcom/bitmapfun/util/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "key":Ljava/lang/String;
    const/4 v5, 0x0

    .line 196
    .local v5, "fileDescriptor":Ljava/io/FileDescriptor;
    const/4 v6, 0x0

    .line 198
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    iget-object v12, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v12

    .line 200
    :goto_a
    :try_start_a
    iget-boolean v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheStarting:Z

    if-nez v10, :cond_61

    .line 206
    iget-object v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_b4

    if-eqz v10, :cond_4e

    .line 208
    :try_start_12
    iget-object v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v10, v7}, Lcom/bitmapfun/util/DiskLruCache;->get(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Snapshot;

    move-result-object v9

    .line 209
    .local v9, "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    if-nez v9, :cond_38

    .line 213
    iget-object v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v10, v7}, Lcom/bitmapfun/util/DiskLruCache;->edit(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v3

    .line 214
    .local v3, "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    if-eqz v3, :cond_32

    .line 216
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/bitmapfun/util/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v10

    .line 215
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v10}, Lcom/bitmapfun/util/ImageFetcher;->downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v10

    .line 216
    if-eqz v10, :cond_69

    .line 217
    invoke-virtual {v3}, Lcom/bitmapfun/util/DiskLruCache$Editor;->commit()V

    .line 222
    :cond_32
    :goto_32
    iget-object v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v10, v7}, Lcom/bitmapfun/util/DiskLruCache;->get(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Snapshot;

    move-result-object v9

    .line 224
    .end local v3    # "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    :cond_38
    if-eqz v9, :cond_47

    .line 226
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/io/FileInputStream;

    move-object v6, v0

    .line 227
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_46} :catch_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_46} :catch_8c
    .catchall {:try_start_12 .. :try_end_46} :catchall_ab

    move-result-object v5

    .line 234
    :cond_47
    if-nez v5, :cond_4e

    if-eqz v6, :cond_4e

    .line 236
    :try_start_4b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_f0
    .catchall {:try_start_4b .. :try_end_4e} :catchall_b4

    .line 198
    .end local v9    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :cond_4e
    :goto_4e
    :try_start_4e
    monitor-exit v12
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_b4

    .line 243
    const/4 v1, 0x0

    .line 245
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_5a

    .line 246
    :try_start_52
    iget v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mImageWidth:I

    iget v12, p0, Lcom/bitmapfun/util/ImageFetcher;->mImageHeight:I

    invoke-static {v5, v10, v12}, Lcom/bitmapfun/util/ImageFetcher;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    :try_end_59
    .catch Ljava/lang/OutOfMemoryError; {:try_start_52 .. :try_end_59} :catch_b7
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_59} :catch_d2

    move-result-object v1

    .line 248
    :cond_5a
    if-eqz v6, :cond_5f

    .line 250
    :try_start_5c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_f3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5c .. :try_end_5f} :catch_b7
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_d2

    :cond_5f
    :goto_5f
    move-object v10, v1

    .line 259
    :goto_60
    return-object v10

    .line 202
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_61
    :try_start_61
    iget-object v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_66} :catch_67
    .catchall {:try_start_61 .. :try_end_66} :catchall_b4

    goto :goto_a

    .line 203
    :catch_67
    move-exception v10

    goto :goto_a

    .line 219
    .restart local v3    # "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    .restart local v9    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :cond_69
    :try_start_69
    invoke-virtual {v3}, Lcom/bitmapfun/util/DiskLruCache$Editor;->abort()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_69 .. :try_end_6c} :catch_8c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_ab

    goto :goto_32

    .line 229
    .end local v3    # "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    .end local v9    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_6d
    move-exception v2

    .line 230
    .local v2, "e":Ljava/io/IOException;
    :try_start_6e
    const-string v10, "ImageFetcher"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "processBitmap - "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_6e .. :try_end_82} :catchall_ab

    .line 234
    if-nez v5, :cond_4e

    if-eqz v6, :cond_4e

    .line 236
    :try_start_86
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a
    .catchall {:try_start_86 .. :try_end_89} :catchall_b4

    goto :goto_4e

    .line 237
    :catch_8a
    move-exception v10

    goto :goto_4e

    .line 231
    .end local v2    # "e":Ljava/io/IOException;
    :catch_8c
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_8d
    const-string v10, "ImageFetcher"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "processBitmap - "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_8d .. :try_end_a1} :catchall_ab

    .line 234
    if-nez v5, :cond_4e

    if-eqz v6, :cond_4e

    .line 236
    :try_start_a5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_b4

    goto :goto_4e

    .line 237
    :catch_a9
    move-exception v10

    goto :goto_4e

    .line 233
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catchall_ab
    move-exception v10

    .line 234
    if-nez v5, :cond_b3

    if-eqz v6, :cond_b3

    .line 236
    :try_start_b0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_ee
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b4

    .line 239
    :cond_b3
    :goto_b3
    :try_start_b3
    throw v10

    .line 198
    :catchall_b4
    move-exception v10

    monitor-exit v12
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b4

    throw v10

    .line 254
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_b7
    move-exception v8

    .line 255
    .local v8, "oom":Ljava/lang/OutOfMemoryError;
    const-string v10, "ImageFetcher"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "(OutOfMemoryError|processBitmap):"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v11

    .line 256
    goto :goto_60

    .line 257
    .end local v8    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_d2
    move-exception v4

    .line 258
    .local v4, "ex":Ljava/lang/Exception;
    const-string v10, "ImageFetcher"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "(Exception|processBitmap):"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v11

    .line 259
    goto/16 :goto_60

    .line 237
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_ee
    move-exception v11

    goto :goto_b3

    .restart local v9    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_f0
    move-exception v10

    goto/16 :goto_4e

    .line 251
    .end local v9    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_f3
    move-exception v10

    goto/16 :goto_5f
.end method


# virtual methods
.method protected clearCacheInternal()V
    .registers 6

    .prologue
    .line 112
    invoke-super {p0}, Lcom/bitmapfun/util/ImageResizer;->clearCacheInternal()V

    .line 113
    iget-object v2, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    :try_start_6
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->isClosed()Z
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_38

    move-result v1

    if-nez v1, :cond_20

    .line 116
    :try_start_12
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->delete()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_22
    .catchall {:try_start_12 .. :try_end_17} :catchall_38

    .line 123
    :goto_17
    const/4 v1, 0x0

    :try_start_18
    iput-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 125
    invoke-direct {p0}, Lcom/bitmapfun/util/ImageFetcher;->initHttpDiskCache()V

    .line 113
    :cond_20
    monitor-exit v2

    .line 128
    return-void

    .line 120
    :catch_22
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearCacheInternal - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method protected closeCacheInternal()V
    .registers 6

    .prologue
    .line 149
    invoke-super {p0}, Lcom/bitmapfun/util/ImageResizer;->closeCacheInternal()V

    .line 150
    iget-object v2, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_6
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_32

    if-eqz v1, :cond_1a

    .line 153
    :try_start_a
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 154
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->close()V

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_1c
    .catchall {:try_start_a .. :try_end_1a} :catchall_32

    .line 150
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit v2

    .line 165
    return-void

    .line 160
    :catch_1c
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "closeCacheInternal - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_32

    throw v1
.end method

.method public downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .registers 16
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v10, 0x0

    .line 282
    if-eqz p1, :cond_8f

    const-string v9, ""

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8f

    .line 283
    invoke-static {}, Lcom/bitmapfun/util/ImageFetcher;->disableConnectionReuseIfNecessary()V

    .line 284
    const/4 v8, 0x0

    .line 285
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 286
    .local v5, "out":Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 289
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_11
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 290
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 291
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/16 v11, 0x2000

    invoke-direct {v4, v9, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_29} :catch_9c
    .catchall {:try_start_11 .. :try_end_29} :catchall_7e

    .line 292
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_29
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x2000

    invoke-direct {v6, p2, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_30} :catch_9e
    .catchall {:try_start_29 .. :try_end_30} :catchall_93

    .line 295
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :goto_30
    :try_start_30
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_4c
    .catchall {:try_start_30 .. :try_end_33} :catchall_96

    move-result v1

    .local v1, "b":I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_48

    .line 302
    if-eqz v8, :cond_3c

    .line 303
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 306
    :cond_3c
    if-eqz v6, :cond_41

    .line 307
    :try_start_3e
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 309
    :cond_41
    if-eqz v4, :cond_46

    .line 310
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_46} :catch_a1

    .line 298
    :cond_46
    :goto_46
    const/4 v9, 0x1

    .line 316
    .end local v1    # "b":I
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_47
    return v9

    .line 296
    .restart local v1    # "b":I
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_48
    :try_start_48
    invoke-virtual {v6, v1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_96

    goto :goto_30

    .line 299
    .end local v1    # "b":I
    :catch_4c
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 300
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :goto_4f
    :try_start_4f
    const-string v9, "ImageFetcher"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error in downloadBitmap - "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " -> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_4f .. :try_end_6d} :catchall_7e

    .line 302
    if-eqz v8, :cond_72

    .line 303
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 306
    :cond_72
    if-eqz v5, :cond_77

    .line 307
    :try_start_74
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 309
    :cond_77
    if-eqz v3, :cond_7c

    .line 310
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7c} :catch_9a

    :cond_7c
    :goto_7c
    move v9, v10

    .line 314
    goto :goto_47

    .line 301
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_7e
    move-exception v9

    .line 302
    :goto_7f
    if-eqz v8, :cond_84

    .line 303
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 306
    :cond_84
    if-eqz v5, :cond_89

    .line 307
    :try_start_86
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 309
    :cond_89
    if-eqz v3, :cond_8e

    .line 310
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8e} :catch_91

    .line 313
    :cond_8e
    :goto_8e
    throw v9

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_8f
    move v9, v10

    .line 316
    goto :goto_47

    .line 312
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_91
    move-exception v10

    goto :goto_8e

    .line 301
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :catchall_93
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    goto :goto_7f

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :catchall_96
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_7f

    .line 312
    .end local v7    # "url":Ljava/net/URL;
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_9a
    move-exception v9

    goto :goto_7c

    .line 299
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9c
    move-exception v2

    goto :goto_4f

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_9e
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    goto :goto_4f

    .line 312
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "b":I
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :catch_a1
    move-exception v9

    goto :goto_46
.end method

.method protected flushCacheInternal()V
    .registers 6

    .prologue
    .line 132
    invoke-super {p0}, Lcom/bitmapfun/util/ImageResizer;->flushCacheInternal()V

    .line 133
    iget-object v2, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_6
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_27

    if-eqz v1, :cond_f

    .line 136
    :try_start_a
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_11
    .catchall {:try_start_a .. :try_end_f} :catchall_27

    .line 133
    :cond_f
    :goto_f
    :try_start_f
    monitor-exit v2

    .line 145
    return-void

    .line 140
    :catch_11
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "flush - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    throw v1
.end method

.method protected initDiskCacheInternal()V
    .registers 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/bitmapfun/util/ImageResizer;->initDiskCacheInternal()V

    .line 87
    invoke-direct {p0}, Lcom/bitmapfun/util/ImageFetcher;->initHttpDiskCache()V

    .line 88
    return-void
.end method

.method protected processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 272
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bitmapfun/util/ImageFetcher;->processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
