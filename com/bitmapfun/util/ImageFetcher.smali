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
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/bitmapfun/util/ImageResizer;-><init>(Landroid/content/Context;I)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    .line 75
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/ImageFetcher;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/bitmapfun/util/ImageResizer;-><init>(Landroid/content/Context;II)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    .line 64
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/ImageFetcher;->init(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private checkConnection(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const-string/jumbo v2, "connectivity"

    .line 173
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 174
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 175
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_29

    .line 176
    :cond_15
    const-string/jumbo v2, "no connection found!"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 177
    const-string/jumbo v2, "ImageFetcher"

    const-string/jumbo v3, "checkConnection - no connection found"

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_29
    return-void
.end method

.method public static disableConnectionReuseIfNecessary()V
    .registers 2

    .prologue
    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_f

    .line 326
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    :cond_f
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/ImageFetcher;->checkConnection(Landroid/content/Context;)V

    .line 80
    const-string/jumbo v0, "http"

    invoke-static {p1, v0}, Lcom/bitmapfun/util/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    .line 81
    return-void
.end method

.method private initHttpDiskCache()V
    .registers 9

    .prologue
    const-wide/32 v6, 0x3200000

    .line 90
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 91
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 93
    :cond_10
    iget-object v2, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :try_start_13
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/bitmapfun/util/ImageCache;->getUsableSpace(Ljava/io/File;)J
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_39

    move-result-wide v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_2a

    .line 96
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

    .line 104
    :cond_2a
    :goto_2a
    const/4 v1, 0x0

    :try_start_2b
    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 105
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 106
    monitor-exit v2

    .line 107
    return-void

    .line 100
    :catch_34
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    goto :goto_2a

    .line 106
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

    .line 193
    invoke-static/range {p1 .. p1}, Lcom/bitmapfun/util/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "key":Ljava/lang/String;
    const/4 v5, 0x0

    .line 195
    .local v5, "fileDescriptor":Ljava/io/FileDescriptor;
    const/4 v6, 0x0

    .line 197
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    iget-object v12, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v12

    .line 199
    :goto_a
    :try_start_a
    iget-boolean v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheStarting:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_c0

    if-eqz v10, :cond_16

    .line 201
    :try_start_e
    iget-object v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_13} :catch_14
    .catchall {:try_start_e .. :try_end_13} :catchall_c0

    goto :goto_a

    .line 202
    :catch_14
    move-exception v10

    goto :goto_a

    .line 205
    :cond_16
    :try_start_16
    iget-object v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_c0

    if-eqz v10, :cond_56

    .line 207
    :try_start_1a
    iget-object v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v10, v7}, Lcom/bitmapfun/util/DiskLruCache;->get(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Snapshot;

    move-result-object v9

    .line 208
    .local v9, "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    if-nez v9, :cond_40

    .line 212
    iget-object v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v10, v7}, Lcom/bitmapfun/util/DiskLruCache;->edit(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v3

    .line 213
    .local v3, "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    if-eqz v3, :cond_3a

    .line 214
    const/4 v10, 0x0

    .line 215
    invoke-virtual {v3, v10}, Lcom/bitmapfun/util/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v10

    .line 214
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v10}, Lcom/bitmapfun/util/ImageFetcher;->downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v10

    if-eqz v10, :cond_69

    .line 216
    invoke-virtual {v3}, Lcom/bitmapfun/util/DiskLruCache$Editor;->commit()V

    .line 221
    :cond_3a
    :goto_3a
    iget-object v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v10, v7}, Lcom/bitmapfun/util/DiskLruCache;->get(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Snapshot;

    move-result-object v9

    .line 223
    .end local v3    # "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    :cond_40
    if-eqz v9, :cond_4f

    .line 224
    const/4 v10, 0x0

    .line 225
    invoke-virtual {v9, v10}, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/io/FileInputStream;

    move-object v6, v0

    .line 226
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_4e} :catch_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_4e} :catch_92
    .catchall {:try_start_1a .. :try_end_4e} :catchall_b7

    move-result-object v5

    .line 233
    :cond_4f
    if-nez v5, :cond_56

    if-eqz v6, :cond_56

    .line 235
    :try_start_53
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_108
    .catchall {:try_start_53 .. :try_end_56} :catchall_c0

    .line 240
    .end local v9    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :cond_56
    :goto_56
    :try_start_56
    monitor-exit v12
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_c0

    .line 242
    const/4 v1, 0x0

    .line 244
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_62

    .line 245
    :try_start_5a
    iget v10, p0, Lcom/bitmapfun/util/ImageFetcher;->mImageWidth:I

    iget v12, p0, Lcom/bitmapfun/util/ImageFetcher;->mImageHeight:I

    invoke-static {v5, v10, v12}, Lcom/bitmapfun/util/ImageFetcher;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    :try_end_61
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5a .. :try_end_61} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_61} :catch_e4
    .catchall {:try_start_5a .. :try_end_61} :catchall_106

    move-result-object v1

    .line 247
    :cond_62
    if-eqz v6, :cond_67

    .line 249
    :try_start_64
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_10d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_64 .. :try_end_67} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_e4
    .catchall {:try_start_64 .. :try_end_67} :catchall_106

    :cond_67
    :goto_67
    move-object v10, v1

    .line 258
    :goto_68
    return-object v10

    .line 218
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    .restart local v9    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :cond_69
    :try_start_69
    invoke-virtual {v3}, Lcom/bitmapfun/util/DiskLruCache$Editor;->abort()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_69 .. :try_end_6c} :catch_92
    .catchall {:try_start_69 .. :try_end_6c} :catchall_b7

    goto :goto_3a

    .line 228
    .end local v3    # "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    .end local v9    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_6d
    move-exception v2

    .line 229
    .local v2, "e":Ljava/io/IOException;
    :try_start_6e
    const-string/jumbo v10, "ImageFetcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "processBitmap - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_6e .. :try_end_88} :catchall_b7

    .line 233
    if-nez v5, :cond_56

    if-eqz v6, :cond_56

    .line 235
    :try_start_8c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90
    .catchall {:try_start_8c .. :try_end_8f} :catchall_c0

    goto :goto_56

    .line 236
    :catch_90
    move-exception v10

    goto :goto_56

    .line 230
    .end local v2    # "e":Ljava/io/IOException;
    :catch_92
    move-exception v2

    .line 231
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_93
    const-string/jumbo v10, "ImageFetcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "processBitmap - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_93 .. :try_end_ad} :catchall_b7

    .line 233
    if-nez v5, :cond_56

    if-eqz v6, :cond_56

    .line 235
    :try_start_b1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_c0

    goto :goto_56

    .line 236
    :catch_b5
    move-exception v10

    goto :goto_56

    .line 233
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catchall_b7
    move-exception v10

    if-nez v5, :cond_bf

    if-eqz v6, :cond_bf

    .line 235
    :try_start_bc
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_10b
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0

    .line 236
    :cond_bf
    :goto_bf
    :try_start_bf
    throw v10

    .line 240
    :catchall_c0
    move-exception v10

    monitor-exit v12
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c0

    throw v10

    .line 253
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_c3
    move-exception v8

    .line 254
    .local v8, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_c4
    const-string/jumbo v10, "ImageFetcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "(OutOfMemoryError|processBitmap):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v11

    .line 255
    goto :goto_68

    .line 256
    .end local v8    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_e4
    move-exception v4

    .line 257
    .local v4, "ex":Ljava/lang/Exception;
    const-string/jumbo v10, "ImageFetcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "(Exception|processBitmap):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catchall {:try_start_c4 .. :try_end_103} :catchall_106

    move-object v10, v11

    .line 258
    goto/16 :goto_68

    .line 259
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_106
    move-exception v10

    throw v10

    .line 236
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_108
    move-exception v10

    goto/16 :goto_56

    .end local v9    # "snapshot":Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    :catch_10b
    move-exception v11

    goto :goto_bf

    .line 250
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_10d
    move-exception v10

    goto/16 :goto_67
.end method


# virtual methods
.method protected clearCacheInternal()V
    .registers 6

    .prologue
    .line 111
    invoke-super {p0}, Lcom/bitmapfun/util/ImageResizer;->clearCacheInternal()V

    .line 112
    iget-object v2, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_6
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->isClosed()Z
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_3e

    move-result v1

    if-nez v1, :cond_20

    .line 115
    :try_start_12
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->delete()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_22
    .catchall {:try_start_12 .. :try_end_17} :catchall_3e

    .line 122
    :goto_17
    const/4 v1, 0x0

    :try_start_18
    iput-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 124
    invoke-direct {p0}, Lcom/bitmapfun/util/ImageFetcher;->initHttpDiskCache()V

    .line 126
    :cond_20
    monitor-exit v2

    .line 127
    return-void

    .line 119
    :catch_22
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clearCacheInternal - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3e
    move-exception v1

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_18 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method protected closeCacheInternal()V
    .registers 6

    .prologue
    .line 148
    invoke-super {p0}, Lcom/bitmapfun/util/ImageResizer;->closeCacheInternal()V

    .line 149
    iget-object v2, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 150
    :try_start_6
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_38

    if-eqz v1, :cond_1a

    .line 152
    :try_start_a
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 153
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->close()V

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_1c
    .catchall {:try_start_a .. :try_end_1a} :catchall_38

    .line 163
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit v2

    .line 164
    return-void

    .line 159
    :catch_1c
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "closeCacheInternal - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .registers 16
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v10, 0x0

    .line 281
    if-eqz p1, :cond_99

    const-string/jumbo v9, ""

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_99

    .line 282
    invoke-static {}, Lcom/bitmapfun/util/ImageFetcher;->disableConnectionReuseIfNecessary()V

    .line 283
    const/4 v8, 0x0

    .line 284
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 285
    .local v5, "out":Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 288
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_12
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 289
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 290
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/16 v11, 0x2000

    invoke-direct {v4, v9, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2a} :catch_a6
    .catchall {:try_start_12 .. :try_end_2a} :catchall_88

    .line 291
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_2a
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x2000

    invoke-direct {v6, p2, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_a8
    .catchall {:try_start_2a .. :try_end_31} :catchall_9d

    .line 294
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :goto_31
    :try_start_31
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .local v1, "b":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_75

    .line 295
    invoke-virtual {v6, v1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3b} :catch_3c
    .catchall {:try_start_31 .. :try_end_3b} :catchall_a0

    goto :goto_31

    .line 298
    .end local v1    # "b":I
    :catch_3c
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 299
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :goto_3f
    :try_start_3f
    const-string/jumbo v9, "ImageFetcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error in downloadBitmap - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " -> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_3f .. :try_end_64} :catchall_88

    .line 301
    if-eqz v8, :cond_69

    .line 302
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 305
    :cond_69
    if-eqz v5, :cond_6e

    .line 306
    :try_start_6b
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 308
    :cond_6e
    if-eqz v3, :cond_73

    .line 309
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_73} :catch_a4

    :cond_73
    :goto_73
    move v9, v10

    .line 315
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_74
    :goto_74
    return v9

    .line 297
    .restart local v1    # "b":I
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_75
    const/4 v9, 0x1

    .line 301
    if-eqz v8, :cond_7b

    .line 302
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 305
    :cond_7b
    if-eqz v6, :cond_80

    .line 306
    :try_start_7d
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 308
    :cond_80
    if-eqz v4, :cond_74

    .line 309
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_85} :catch_86

    goto :goto_74

    .line 311
    :catch_86
    move-exception v10

    goto :goto_74

    .line 301
    .end local v1    # "b":I
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catchall_88
    move-exception v9

    :goto_89
    if-eqz v8, :cond_8e

    .line 302
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 305
    :cond_8e
    if-eqz v5, :cond_93

    .line 306
    :try_start_90
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 308
    :cond_93
    if-eqz v3, :cond_98

    .line 309
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_98} :catch_9b

    .line 311
    :cond_98
    :goto_98
    throw v9

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_99
    move v9, v10

    .line 315
    goto :goto_74

    .line 311
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_9b
    move-exception v10

    goto :goto_98

    .line 301
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :catchall_9d
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    goto :goto_89

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :catchall_a0
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_89

    .line 311
    .end local v7    # "url":Ljava/net/URL;
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_a4
    move-exception v9

    goto :goto_73

    .line 298
    .end local v2    # "e":Ljava/io/IOException;
    :catch_a6
    move-exception v2

    goto :goto_3f

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_a8
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3f
.end method

.method protected flushCacheInternal()V
    .registers 6

    .prologue
    .line 131
    invoke-super {p0}, Lcom/bitmapfun/util/ImageResizer;->flushCacheInternal()V

    .line 132
    iget-object v2, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 133
    :try_start_6
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_2d

    if-eqz v1, :cond_f

    .line 135
    :try_start_a
    iget-object v1, p0, Lcom/bitmapfun/util/ImageFetcher;->mHttpDiskCache:Lcom/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/bitmapfun/util/DiskLruCache;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_11
    .catchall {:try_start_a .. :try_end_f} :catchall_2d

    .line 143
    :cond_f
    :goto_f
    :try_start_f
    monitor-exit v2

    .line 144
    return-void

    .line 139
    :catch_11
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ImageFetcher"

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

    goto :goto_f

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method protected initDiskCacheInternal()V
    .registers 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/bitmapfun/util/ImageResizer;->initDiskCacheInternal()V

    .line 86
    invoke-direct {p0}, Lcom/bitmapfun/util/ImageFetcher;->initHttpDiskCache()V

    .line 87
    return-void
.end method

.method protected processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 271
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bitmapfun/util/ImageFetcher;->processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
