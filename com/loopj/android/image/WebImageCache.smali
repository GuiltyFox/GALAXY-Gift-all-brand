.class public Lcom/loopj/android/image/WebImageCache;
.super Ljava/lang/Object;
.source "WebImageCache.java"


# static fields
.field private static final DISK_CACHE_PATH:Ljava/lang/String; = "/web_image_cache/"


# instance fields
.field private diskCacheEnabled:Z

.field private diskCachePath:Ljava/lang/String;

.field private memoryCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private writeThread:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is_cache"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loopj/android/image/WebImageCache;->diskCacheEnabled:Z

    .line 30
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/loopj/android/image/WebImageCache;->memoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    .local v0, "appContext":Landroid/content/Context;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/web_image_cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loopj/android/image/WebImageCache;->diskCachePath:Ljava/lang/String;

    .line 37
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/loopj/android/image/WebImageCache;->diskCachePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "outFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 41
    iput-boolean p2, p0, Lcom/loopj/android/image/WebImageCache;->diskCacheEnabled:Z

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/loopj/android/image/WebImageCache;->writeThread:Ljava/util/concurrent/ExecutorService;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/loopj/android/image/WebImageCache;)Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/loopj/android/image/WebImageCache;->diskCacheEnabled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/loopj/android/image/WebImageCache;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/loopj/android/image/WebImageCache;->diskCachePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/loopj/android/image/WebImageCache;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/loopj/android/image/WebImageCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheBitmapToDisk(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/loopj/android/image/WebImageCache;->writeThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/loopj/android/image/WebImageCache$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/loopj/android/image/WebImageCache$1;-><init>(Lcom/loopj/android/image/WebImageCache;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method private cacheBitmapToMemory(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/loopj/android/image/WebImageCache;->memoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/loopj/android/image/WebImageCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_e} :catch_1a
    .catchall {:try_start_0 .. :try_end_e} :catchall_3f

    .line 124
    if-eqz p2, :cond_19

    .line 125
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 126
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    :cond_19
    :goto_19
    return-void

    .line 121
    :catch_1a
    move-exception v0

    .line 122
    .local v0, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_1b
    const-string v1, "MyLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WebImageCache|Error in out of memory image|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_3f

    .line 124
    if-eqz p2, :cond_19

    .line 125
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 126
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_19

    .line 123
    .end local v0    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_3f
    move-exception v1

    .line 124
    if-eqz p2, :cond_4b

    .line 125
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 126
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    :cond_4b
    throw v1
.end method

.method private getBitmapFromDisk(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 201
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    iget-boolean v5, p0, Lcom/loopj/android/image/WebImageCache;->diskCacheEnabled:Z

    if-eqz v5, :cond_18

    .line 202
    invoke-direct {p0, p1}, Lcom/loopj/android/image/WebImageCache;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 205
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_17} :catch_27
    .catchall {:try_start_1 .. :try_end_17} :catchall_4f

    move-result-object v0

    .line 214
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_18
    if-eqz v0, :cond_5f

    .line 215
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 216
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    :cond_23
    const/4 v1, 0x0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_24
    move-object v5, v0

    move-object v0, v1

    .line 212
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_26
    return-object v5

    .line 210
    :catch_27
    move-exception v4

    .line 211
    .local v4, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_28
    const-string v5, "MyLog"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WebImageCache|Error in out of memory image|"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_4f

    .line 214
    if-eqz v0, :cond_5d

    .line 215
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 216
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    :cond_4b
    const/4 v1, 0x0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_4c
    move-object v5, v0

    move-object v0, v1

    .line 212
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_26

    .line 213
    .end local v4    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_4f
    move-exception v5

    .line 214
    if-eqz v0, :cond_5c

    .line 215
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 216
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    :cond_5b
    const/4 v0, 0x0

    .line 220
    :cond_5c
    throw v5

    .restart local v4    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_5d
    move-object v1, v0

    .local v1, "bitmap":Ljava/lang/Object;
    goto :goto_4c

    .end local v1    # "bitmap":Ljava/lang/Object;
    .end local v4    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_5f
    move-object v1, v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_24
.end method

.method private getBitmapFromMemory(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 177
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v5, p0, Lcom/loopj/android/image/WebImageCache;->memoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/loopj/android/image/WebImageCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 178
    .local v4, "softRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v4, :cond_17

    .line 179
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_17} :catch_26
    .catchall {:try_start_1 .. :try_end_17} :catchall_4e

    .line 187
    :cond_17
    if-eqz v1, :cond_5e

    .line 188
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 189
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    :cond_22
    const/4 v2, 0x0

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_23
    move-object v5, v1

    move-object v1, v2

    .line 185
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "softRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_25
    return-object v5

    .line 183
    :catch_26
    move-exception v3

    .line 184
    .local v3, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_27
    const-string v5, "MyLog"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WebImageCache|Error in out of memory image|"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_4e

    .line 187
    if-eqz v1, :cond_5c

    .line 188
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 189
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    :cond_4a
    const/4 v2, 0x0

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_4b
    move-object v5, v1

    move-object v1, v2

    .line 185
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_25

    .line 186
    .end local v3    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_4e
    move-exception v5

    .line 187
    if-eqz v1, :cond_5b

    .line 188
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 189
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    :cond_5a
    const/4 v1, 0x0

    .line 193
    :cond_5b
    throw v5

    .restart local v3    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_5c
    move-object v2, v1

    .local v2, "bitmap":Ljava/lang/Object;
    goto :goto_4b

    .end local v2    # "bitmap":Ljava/lang/Object;
    .end local v3    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v4    # "softRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_5e
    move-object v2, v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_23
.end method

.method private getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 229
    if-nez p1, :cond_a

    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null url passed in"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_a
    const-string v0, "[.:/,%?&=]"

    const-string v1, "+"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[+]+"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loopj/android/image/WebImageCache;->diskCachePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/loopj/android/image/WebImageCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 7

    .prologue
    .line 102
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCache;->memoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 105
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/loopj/android/image/WebImageCache;->diskCachePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "cachedFileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 108
    .local v1, "cachedFiles":[Ljava/io/File;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1e
    if-lt v3, v4, :cond_21

    .line 114
    .end local v1    # "cachedFiles":[Ljava/io/File;
    :cond_20
    return-void

    .line 108
    .restart local v1    # "cachedFiles":[Ljava/io/File;
    :cond_21
    aget-object v2, v1, v3

    .line 109
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 108
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 241
    const-string v0, "MyLog"

    const-string v1, "WebImageCache|finalize"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 51
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-direct {p0, p1}, Lcom/loopj/android/image/WebImageCache;->getBitmapFromMemory(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    iget-boolean v3, p0, Lcom/loopj/android/image/WebImageCache;->diskCacheEnabled:Z

    if-eqz v3, :cond_14

    .line 55
    if-nez v0, :cond_14

    .line 56
    invoke-direct {p0, p1}, Lcom/loopj/android/image/WebImageCache;->getBitmapFromDisk(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_14

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/loopj/android/image/WebImageCache;->cacheBitmapToMemory(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_14} :catch_24
    .catchall {:try_start_1 .. :try_end_14} :catchall_4b

    .line 69
    :cond_14
    if-eqz v0, :cond_5e

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    :cond_1f
    const/4 v1, 0x0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_20
    move-object v6, v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, v0

    move-object v0, v6

    .line 67
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_23
    return-object v1

    .line 65
    :catch_24
    move-exception v2

    move-object v1, v0

    .line 66
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v2, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_26
    const-string v3, "MyLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WebImageCache|Error in out of memory image|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_26 .. :try_end_3e} :catchall_59

    .line 69
    if-eqz v1, :cond_5c

    .line 70
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 71
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    :cond_49
    const/4 v0, 0x0

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_23

    .line 68
    .end local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_4b
    move-exception v3

    .line 69
    :goto_4c
    if-eqz v0, :cond_58

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    :cond_57
    const/4 v0, 0x0

    .line 75
    :cond_58
    throw v3

    .line 68
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_59
    move-exception v3

    move-object v0, v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_4c

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5c
    move-object v0, v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_23

    .end local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_5e
    move-object v1, v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_20
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/loopj/android/image/WebImageCache;->cacheBitmapToMemory(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 80
    iget-boolean v0, p0, Lcom/loopj/android/image/WebImageCache;->diskCacheEnabled:Z

    if-eqz v0, :cond_a

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/loopj/android/image/WebImageCache;->cacheBitmapToDisk(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 83
    :cond_a
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p1, :cond_3

    .line 98
    :cond_2
    :goto_2
    return-void

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/loopj/android/image/WebImageCache;->memoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/loopj/android/image/WebImageCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loopj/android/image/WebImageCache;->diskCachePath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method
