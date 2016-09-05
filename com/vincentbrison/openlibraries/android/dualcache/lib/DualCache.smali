.class public Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
.super Ljava/lang/Object;
.source "DualCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static a:Lcom/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/support/v4/util/LruCache;

.field private d:Lcom/jakewharton/disklrucache/DiskLruCache;

.field private e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/io/File;

.field private h:I

.field private i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

.field private j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

.field private k:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private l:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;
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

    sput-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 158
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->ALL:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 159
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->FIELD:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 160
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->NON_FINAL:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enableDefaultTyping(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 161
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .registers 5

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    iput-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    .line 145
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    iput-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    .line 171
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->b:Ljava/lang/String;

    .line 172
    iput p2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->h:I

    .line 173
    iput-object p3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->e:Ljava/lang/Class;

    .line 174
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 516
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

    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 520
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

    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 524
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

    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 528
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

    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/String;)V

    .line 529
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->h:I

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 332
    .line 337
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->c:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 338
    :cond_1f
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 341
    :goto_25
    if-nez v0, :cond_16f

    .line 343
    invoke-direct {p0, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->c(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 346
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->d:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_82

    move-result-object v0

    .line 350
    :goto_44
    if-eqz v0, :cond_8e

    .line 351
    invoke-direct {p0, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->d(Ljava/lang/String;)V

    .line 353
    const/4 v2, 0x0

    :try_start_4a
    invoke-virtual {v0, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->b(I)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_88

    move-result-object v0

    move-object v3, v0

    .line 365
    :goto_4f
    if-eqz v3, :cond_158

    .line 367
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 368
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 370
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, v3}, Landroid/support/v4/util/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    move-object v2, v1

    .line 415
    :goto_6c
    iget-object v4, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v5, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v4, v5}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15b

    .line 417
    if-nez v2, :cond_80

    .line 418
    :try_start_78
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->e:Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7f} :catch_154

    move-result-object v2

    :cond_80
    move-object v0, v2

    .line 447
    :cond_81
    :goto_81
    return-object v0

    .line 347
    :catch_82
    move-exception v0

    .line 348
    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_44

    .line 354
    :catch_88
    move-exception v0

    .line 355
    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/Throwable;)V

    move-object v3, v1

    .line 356
    goto :goto_4f

    .line 358
    :cond_8e
    invoke-direct {p0, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->e(Ljava/lang/String;)V

    :cond_91
    move-object v3, v1

    goto :goto_4f

    .line 371
    :cond_93
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 374
    :try_start_9d
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->k:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v0, v3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_a2
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_9d .. :try_end_a2} :catch_b0

    move-result-object v0

    .line 375
    :try_start_a3
    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->c:Landroid/support/v4/util/LruCache;

    sget-object v4, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 376
    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 375
    invoke-virtual {v2, p1, v4}, Landroid/support/v4/util/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ae
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_a3 .. :try_end_ae} :catch_1b0

    move-object v2, v1

    .line 380
    goto :goto_6c

    .line 378
    :catch_b0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 379
    :goto_b3
    invoke-static {v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/Throwable;)V

    move-object v2, v1

    .line 380
    goto :goto_6c

    .line 382
    :cond_b8
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->c:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 383
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 386
    :try_start_cc
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->e:Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d3} :catch_dc

    move-result-object v0

    .line 387
    :try_start_d4
    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d9} :catch_1ad

    move-object v2, v0

    move-object v0, v1

    .line 390
    goto :goto_6c

    .line 388
    :catch_dc
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 389
    :goto_df
    invoke-static {v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/Throwable;)V

    move-object v2, v0

    move-object v0, v1

    .line 390
    goto :goto_6c

    .line 391
    :cond_e5
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 393
    if-nez v1, :cond_1b9

    .line 394
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->k:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v0, v3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 396
    :goto_f7
    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto/16 :goto_6c

    .line 398
    :cond_ff
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 399
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 402
    :try_start_113
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->e:Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_11a} :catch_12a

    move-result-object v0

    .line 403
    :try_start_11b
    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->c:Landroid/support/v4/util/LruCache;

    iget-object v4, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->l:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v4, v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Landroid/support/v4/util/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_126} :catch_1ab

    move-object v2, v0

    move-object v0, v1

    .line 406
    goto/16 :goto_6c

    .line 404
    :catch_12a
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 405
    :goto_12d
    invoke-static {v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/Throwable;)V

    move-object v2, v0

    move-object v0, v1

    .line 406
    goto/16 :goto_6c

    .line 407
    :cond_134
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v0, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 409
    if-nez v1, :cond_1b3

    .line 410
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->k:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v0, v3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 412
    :goto_146
    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->c:Landroid/support/v4/util/LruCache;

    iget-object v4, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->l:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v4, v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Landroid/support/v4/util/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto/16 :goto_6c

    .line 421
    :catch_154
    move-exception v0

    .line 422
    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/Throwable;)V

    :cond_158
    :goto_158
    move-object v0, v1

    .line 447
    goto/16 :goto_81

    .line 424
    :cond_15b
    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v4, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v2, v4}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_158

    .line 425
    if-nez v0, :cond_81

    .line 426
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->k:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v0, v3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_81

    .line 432
    :cond_16f
    invoke-direct {p0, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->b(Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v3, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v2, v3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18d

    .line 435
    :try_start_17c
    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->e:Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_185} :catch_188

    move-result-object v0

    goto/16 :goto_81

    .line 436
    :catch_188
    move-exception v0

    .line 437
    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_158

    .line 439
    :cond_18d
    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v3, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->c:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v2, v3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 441
    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v3, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v2, v3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_158

    .line 442
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->l:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_81

    .line 404
    :catch_1ab
    move-exception v2

    goto :goto_12d

    .line 388
    :catch_1ad
    move-exception v2

    goto/16 :goto_df

    .line 378
    :catch_1b0
    move-exception v2

    goto/16 :goto_b3

    :cond_1b3
    move-object v0, v1

    goto :goto_146

    :cond_1b5
    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_6c

    :cond_1b9
    move-object v0, v1

    goto/16 :goto_f7

    :cond_1bc
    move-object v0, v1

    goto/16 :goto_25
.end method

.method protected a(I)V
    .registers 2

    .prologue
    .line 255
    iput p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->f:I

    .line 256
    return-void
.end method

.method protected a(Landroid/support/v4/util/LruCache;)V
    .registers 2

    .prologue
    .line 197
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->c:Landroid/support/v4/util/LruCache;

    .line 198
    return-void
.end method

.method protected a(Lcom/jakewharton/disklrucache/DiskLruCache;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->d:Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 186
    return-void
.end method

.method public a(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;)V
    .registers 2

    .prologue
    .line 507
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    .line 508
    return-void
.end method

.method protected a(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    .line 252
    return-void
.end method

.method protected a(Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)V
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
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->k:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    .line 194
    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 263
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->g:Ljava/io/File;

    .line 264
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->c:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 284
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/util/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_10
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 288
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->c:Landroid/support/v4/util/LruCache;

    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->l:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v2, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_25
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 293
    :try_start_2f
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->d:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v1, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->b(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    .line 294
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->k:Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;

    invoke-interface {v3, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a(ILjava/lang/String;)V

    .line 295
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_42} :catch_83

    .line 301
    :cond_42
    :goto_42
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 303
    :cond_56
    :try_start_56
    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5b
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_56 .. :try_end_5b} :catch_88

    move-result-object v0

    .line 308
    :goto_5c
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 309
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_6b
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 314
    :try_start_75
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->d:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v1, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->b(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    .line 315
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a(ILjava/lang/String;)V

    .line 316
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_82} :catch_8d

    .line 322
    :cond_82
    :goto_82
    return-void

    .line 296
    :catch_83
    move-exception v1

    .line 297
    invoke-static {v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_42

    .line 304
    :catch_88
    move-exception v1

    .line 305
    invoke-static {v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_5c

    .line 317
    :catch_8d
    move-exception v0

    .line 318
    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_82
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->i:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->d:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 483
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->a()V

    .line 485
    :cond_f
    return-void
.end method

.method public d()V
    .registers 7

    .prologue
    .line 491
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->j:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->c:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 493
    :try_start_a
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->d:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->b()V

    .line 494
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->g:Ljava/io/File;

    iget v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->h:I

    const/4 v2, 0x1

    iget v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->f:I

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->d:Lcom/jakewharton/disklrucache/DiskLruCache;
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
    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method
