.class public Lcom/facebook/internal/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# static fields
.field private static final CACHE_READ_QUEUE_MAX_CONCURRENT:I = 0x2

.field private static final DOWNLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static cacheReadQueue:Lcom/facebook/internal/WorkQueue;

.field private static downloadQueue:Lcom/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/internal/ImageDownloader$RequestKey;",
            "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    .line 52
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/facebook/internal/ImageDownloader;->readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/facebook/internal/ImageDownloader;->download(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V

    return-void
.end method

.method public static cancelRequest(Lcom/facebook/internal/ImageRequest;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 86
    const/4 v2, 0x0

    .line 87
    new-instance v3, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 88
    sget-object v4, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v4

    .line 89
    :try_start_12
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 90
    if-eqz v0, :cond_34

    .line 97
    iget-object v2, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v2}, Lcom/facebook/internal/WorkQueue$WorkItem;->cancel()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 98
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 105
    :goto_2a
    monitor-exit v4

    .line 107
    return v0

    .line 102
    :cond_2c
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    move v0, v1

    goto :goto_2a

    .line 105
    :catchall_31
    move-exception v0

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_31

    throw v0

    :cond_34
    move v0, v2

    goto :goto_2a
.end method

.method public static clearCache(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 121
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->clearCache(Landroid/content/Context;)V

    .line 122
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->clearCache()V

    .line 123
    return-void
.end method

.method private static download(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 227
    .line 231
    const/4 v1, 0x1

    .line 234
    :try_start_3
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_bf
    .catchall {:try_start_3 .. :try_end_14} :catchall_b7

    .line 236
    const/4 v4, 0x0

    :try_start_15
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 238
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_d6

    .line 268
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_22} :catch_c3
    .catchall {:try_start_15 .. :try_end_22} :catchall_ba

    move-result-object v5

    .line 269
    :try_start_23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    if-eqz v5, :cond_ad

    .line 271
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 272
    const/16 v7, 0x80

    new-array v7, v7, [C

    .line 274
    :goto_33
    const/4 v8, 0x0

    array-length v9, v7

    invoke-virtual {v4, v7, v8, v9}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v8

    if-lez v8, :cond_94

    .line 275
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3f} :catch_40
    .catchall {:try_start_23 .. :try_end_3f} :catchall_a1

    goto :goto_33

    .line 285
    :catch_40
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    .line 288
    :goto_44
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 289
    invoke-static {v4}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    move-object v4, v0

    .line 292
    :goto_4b
    if-eqz v1, :cond_50

    .line 293
    invoke-static {p0, v4, v3, v2}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 295
    :cond_50
    return-void

    .line 244
    :sswitch_51
    :try_start_51
    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d1

    .line 246
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 247
    iget-object v4, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {v4, v1}, Lcom/facebook/internal/UrlRedirectCache;->cacheUriRedirect(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 251
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v4

    .line 252
    if-eqz v4, :cond_7e

    iget-boolean v5, v4, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v5, :cond_7e

    .line 253
    iget-object v4, v4, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    new-instance v5, Lcom/facebook/internal/ImageDownloader$RequestKey;

    iget-object v6, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    invoke-direct {v5, v1, v6}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v4, v5, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_7e} :catch_ca
    .catchall {:try_start_51 .. :try_end_7e} :catchall_ba

    :cond_7e
    move v1, v2

    move-object v4, v3

    move-object v5, v3

    .line 288
    :goto_81
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 289
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    goto :goto_4b

    .line 263
    :sswitch_88
    :try_start_88
    invoke-static {p1, v0}, Lcom/facebook/internal/ImageResponseCache;->interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_c3
    .catchall {:try_start_88 .. :try_end_8b} :catchall_ba

    move-result-object v5

    .line 264
    :try_start_8c
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    .line 265
    goto :goto_81

    .line 277
    :cond_94
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 282
    :goto_97
    new-instance v4, Lcom/facebook/FacebookException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_a0} :catch_40
    .catchall {:try_start_8c .. :try_end_a0} :catchall_a1

    goto :goto_81

    .line 288
    :catchall_a1
    move-exception v1

    move-object v3, v5

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_a6
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 289
    invoke-static {v1}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    throw v0

    .line 279
    :cond_ad
    :try_start_ad
    sget v4, Lcom/facebook/R$string;->com_facebook_image_download_unknown_error:I

    .line 280
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b6} :catch_40
    .catchall {:try_start_ad .. :try_end_b6} :catchall_a1

    goto :goto_97

    .line 288
    :catchall_b7
    move-exception v0

    move-object v1, v3

    goto :goto_a6

    :catchall_ba
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_a6

    .line 285
    :catch_bf
    move-exception v0

    move-object v5, v3

    move-object v4, v3

    goto :goto_44

    :catch_c3
    move-exception v4

    move-object v5, v3

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto/16 :goto_44

    :catch_ca
    move-exception v1

    move-object v5, v3

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_44

    :cond_d1
    move v1, v2

    move-object v4, v3

    move-object v5, v3

    goto :goto_81

    .line 238
    nop

    :sswitch_data_d6
    .sparse-switch
        0xc8 -> :sswitch_88
        0x12d -> :sswitch_51
        0x12e -> :sswitch_51
    .end sparse-switch
.end method

.method public static downloadAsync(Lcom/facebook/internal/ImageRequest;)V
    .registers 4

    .prologue
    .line 62
    if-nez p0, :cond_3

    .line 83
    :goto_2
    return-void

    .line 72
    :cond_3
    new-instance v1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 73
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v2

    .line 74
    :try_start_13
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 75
    if-eqz v0, :cond_2c

    .line 76
    iput-object p0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    .line 78
    iget-object v0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v0}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    .line 82
    :goto_27
    monitor-exit v2

    goto :goto_2

    :catchall_29
    move-exception v0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_29

    throw v0

    .line 80
    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->isCachedRedirectAllowed()Z

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    goto :goto_27
.end method

.method private static enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .registers 6

    .prologue
    .line 129
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;

    .line 133
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    .line 129
    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method private static enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .registers 5

    .prologue
    .line 137
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;

    .line 141
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    .line 137
    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method private static enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V
    .registers 7

    .prologue
    .line 149
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    .line 150
    :try_start_3
    new-instance v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;-><init>(Lcom/facebook/internal/ImageDownloader$1;)V

    .line 151
    iput-object p0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 152
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p2, p3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 163
    monitor-exit v1

    .line 164
    return-void

    .line 163
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private static declared-synchronized getHandler()Landroid/os/Handler;
    .registers 3

    .prologue
    .line 298
    const-class v1, Lcom/facebook/internal/ImageDownloader;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    if-nez v0, :cond_12

    .line 299
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    .line 301
    :cond_12
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 298
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .registers 11

    .prologue
    .line 173
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_21

    iget-boolean v1, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v1, :cond_21

    .line 175
    iget-object v1, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 176
    invoke-virtual {v1}, Lcom/facebook/internal/ImageRequest;->getCallback()Lcom/facebook/internal/ImageRequest$Callback;

    move-result-object v5

    .line 177
    if-eqz v5, :cond_21

    .line 178
    invoke-static {}, Lcom/facebook/internal/ImageDownloader;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/facebook/internal/ImageDownloader$1;

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/ImageDownloader$1;-><init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_21
    return-void
.end method

.method public static prioritizeRequest(Lcom/facebook/internal/ImageRequest;)V
    .registers 4

    .prologue
    .line 111
    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 112
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    .line 113
    :try_start_10
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 114
    if-eqz v0, :cond_1f

    .line 115
    iget-object v0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v0}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    .line 117
    :cond_1f
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_21

    throw v0
.end method

.method private static readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 197
    .line 199
    if-eqz p2, :cond_3b

    .line 200
    iget-object v1, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/facebook/internal/UrlRedirectCache;->getRedirectedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_3b

    .line 202
    invoke-static {v1, p1}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    move v4, v0

    move-object v0, v1

    move v1, v4

    .line 207
    :goto_16
    if-nez v1, :cond_1e

    .line 208
    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    .line 211
    :cond_1e
    if-eqz v0, :cond_2b

    .line 213
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 214
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 215
    invoke-static {p0, v2, v3, v1}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 224
    :cond_2a
    :goto_2a
    return-void

    .line 219
    :cond_2b
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_2a

    iget-boolean v1, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v1, :cond_2a

    .line 221
    iget-object v0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    invoke-static {v0, p0}, Lcom/facebook/internal/ImageDownloader;->enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    goto :goto_2a

    :cond_3b
    move v1, v0

    move-object v0, v2

    goto :goto_16
.end method

.method private static removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    .registers 3

    .prologue
    .line 305
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    .line 306
    :try_start_3
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    monitor-exit v1

    return-object v0

    .line 307
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method
