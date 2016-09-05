.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:I

.field private g:J

.field private final h:I

.field private i:J

.field private j:Ljava/io/Writer;

.field private final k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:J

.field private final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 14

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->i:J

    .line 146
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    .line 155
    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->m:J

    .line 158
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 160
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->n:Ljava/util/concurrent/Callable;

    .line 177
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->b:Ljava/io/File;

    .line 178
    iput p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->f:I

    .line 179
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->c:Ljava/io/File;

    .line 180
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->d:Ljava/io/File;

    .line 181
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->e:Ljava/io/File;

    .line 182
    iput p3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->h:I

    .line 183
    iput-wide p4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->g:J

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache;I)I
    .registers 2

    .prologue
    .line 85
    iput p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 445
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->f()V

    .line 446
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 447
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_20

    if-eqz v0, :cond_1d

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->e(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_58

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_20

    :cond_1d
    move-object v0, v1

    .line 467
    :goto_1e
    monitor-exit p0

    return-object v0

    .line 451
    :cond_20
    if-nez v0, :cond_5b

    .line 452
    :try_start_22
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 453
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 458
    :goto_2e
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 459
    invoke-static {v1, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 462
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const-string/jumbo v2, "DIRTY"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 463
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 464
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 465
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 466
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_57
    .catchall {:try_start_22 .. :try_end_57} :catchall_58

    goto :goto_1e

    .line 445
    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    .line 454
    :cond_5b
    :try_start_5b
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_58

    move-result-object v2

    if-eqz v2, :cond_63

    move-object v0, v1

    .line 455
    goto :goto_1e

    :cond_63
    move-object v1, v0

    goto :goto_2e
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .registers 12

    .prologue
    .line 197
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_f

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_f
    if-gtz p2, :cond_1a

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1a
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 207
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 217
    :cond_39
    :goto_39
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 218
    iget-object v1, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 220
    :try_start_4a
    invoke-direct {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->b()V

    .line 221
    invoke-direct {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->c()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_50} :catch_56

    .line 238
    :goto_50
    return-object v0

    .line 212
    :cond_51
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_39

    .line 223
    :catch_56
    move-exception v1

    .line 224
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a()V

    .line 235
    :cond_89
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 236
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 237
    invoke-direct {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->d()V

    goto :goto_50
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/Writer;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 502
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-result-object v2

    .line 503
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_15

    .line 504
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_12

    .line 502
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 508
    :cond_15
    if-eqz p2, :cond_59

    :try_start_17
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->d(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_59

    move v1, v0

    .line 509
    :goto_1e
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->h:I

    if-ge v1, v3, :cond_59

    .line 510
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_47

    .line 511
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b()V

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_47
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_56

    .line 515
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b()V
    :try_end_54
    .catchall {:try_start_17 .. :try_end_54} :catchall_12

    .line 562
    :cond_54
    :goto_54
    monitor-exit p0

    return-void

    .line 509
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 521
    :cond_59
    :goto_59
    :try_start_59
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->h:I

    if-ge v0, v1, :cond_8e

    .line 522
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object v1

    .line 523
    if-eqz p2, :cond_8a

    .line 524
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 525
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v3

    .line 526
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 527
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 528
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 529
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 530
    iget-wide v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->i:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->i:J

    .line 521
    :cond_87
    :goto_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 533
    :cond_8a
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    goto :goto_87

    .line 537
    :cond_8e
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:I

    .line 538
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 539
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->d(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_f3

    .line 540
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z

    .line 541
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const-string/jumbo v1, "CLEAN"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 542
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 543
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->c(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 544
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 545
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 547
    if-eqz p2, :cond_d7

    .line 548
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->m:J

    invoke-static {v2, v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;J)J

    .line 557
    :cond_d7
    :goto_d7
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 559
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->i:J

    iget-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_ea

    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->e()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 560
    :cond_ea
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_54

    .line 551
    :cond_f3
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->c(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const-string/jumbo v1, "REMOVE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 553
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 554
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->c(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 555
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_11b
    .catchall {:try_start_59 .. :try_end_11b} :catchall_12

    goto :goto_d7
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .registers 3

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 387
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_12

    .line 388
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 390
    :cond_12
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .registers 4

    .prologue
    .line 393
    if-eqz p2, :cond_5

    .line 394
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    .line 396
    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 397
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 399
    :cond_11
    return-void
.end method

.method private b()V
    .registers 9

    .prologue
    .line 242
    new-instance v1, Lcom/bumptech/glide/disklrucache/StrictLineReader;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->c:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/bumptech/glide/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 244
    :try_start_e
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v5

    .line 249
    const-string/jumbo v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    iget v6, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    const-string/jumbo v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 254
    :cond_55
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_97
    .catchall {:try_start_e .. :try_end_97} :catchall_97

    .line 277
    :catchall_97
    move-exception v0

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/Util;->a(Ljava/io/Closeable;)V

    throw v0

    .line 258
    :cond_9c
    const/4 v0, 0x0

    .line 261
    :goto_9d
    :try_start_9d
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->d(Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/io/EOFException; {:try_start_9d .. :try_end_a4} :catch_a7
    .catchall {:try_start_9d .. :try_end_a4} :catchall_97

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 263
    :catch_a7
    move-exception v2

    .line 267
    :try_start_a8
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:I

    .line 270
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->b()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 271
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->d()V
    :try_end_ba
    .catchall {:try_start_a8 .. :try_end_ba} :catchall_97

    .line 277
    :goto_ba
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/Util;->a(Ljava/io/Closeable;)V

    .line 279
    return-void

    .line 273
    :cond_be
    :try_start_be
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->c:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/bumptech/glide/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;
    :try_end_d4
    .catchall {:try_start_be .. :try_end_d4} :catchall_97

    goto :goto_ba
.end method

.method static synthetic b(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->g()V

    return-void
.end method

.method private c()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    .line 326
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 327
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 328
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_35

    move v1, v2

    .line 329
    :goto_23
    iget v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->h:I

    if-ge v1, v4, :cond_10

    .line 330
    iget-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->i:J

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->i:J

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 333
    :cond_35
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move v1, v2

    .line 334
    :goto_3a
    iget v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->h:I

    if-ge v1, v4, :cond_4f

    .line 335
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    .line 336
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 338
    :cond_4f
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 341
    :cond_53
    return-void
.end method

.method static synthetic c(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Z
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->e()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized d()V
    .registers 6

    .prologue
    .line 348
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    if-eqz v0, :cond_a

    .line 349
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 352
    :cond_a
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->d:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/bumptech/glide/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_9c

    .line 355
    :try_start_1d
    const-string/jumbo v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 366
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_9f

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->c(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_1d .. :try_end_96} :catchall_97

    goto :goto_63

    .line 373
    :catchall_97
    move-exception v0

    :try_start_98
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_9c

    .line 348
    :catchall_9c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 369
    :cond_9f
    :try_start_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->c(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_9f .. :try_end_c8} :catchall_97

    goto :goto_63

    .line 373
    :cond_c9
    :try_start_c9
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 376
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->e:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 379
    :cond_dc
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->c:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 380
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 382
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->c:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/bumptech/glide/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;
    :try_end_ff
    .catchall {:try_start_c9 .. :try_end_ff} :catchall_9c

    .line 384
    monitor-exit p0

    return-void
.end method

.method static synthetic d(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->d()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/16 v1, 0x20

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 282
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 283
    if-ne v2, v5, :cond_24

    .line 284
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_24
    add-int/lit8 v0, v2, 0x1

    .line 288
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 290
    if-ne v3, v5, :cond_48

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string/jumbo v1, "REMOVE"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_d8

    const-string/jumbo v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 293
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_47
    :goto_47
    return-void

    .line 297
    :cond_48
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 300
    :goto_4d
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 301
    if-nez v0, :cond_61

    .line 302
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-direct {v0, p0, v1, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 303
    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_61
    if-eq v3, v5, :cond_8d

    const-string/jumbo v1, "CLEAN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_8d

    const-string/jumbo v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 307
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 308
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z

    .line 309
    invoke-static {v0, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 310
    invoke-static {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_47

    .line 311
    :cond_8d
    if-ne v3, v5, :cond_aa

    const-string/jumbo v1, "DIRTY"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_aa

    const-string/jumbo v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 312
    new-instance v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    invoke-static {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    goto :goto_47

    .line 313
    :cond_aa
    if-ne v3, v5, :cond_be

    const-string/jumbo v0, "READ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_be

    const-string/jumbo v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 316
    :cond_be
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d8
    move-object v1, v0

    goto/16 :goto_4d
.end method

.method static synthetic e(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->h:I

    return v0
.end method

.method private e()Z
    .registers 3

    .prologue
    .line 569
    .line 570
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:I

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic f(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->b:Ljava/io/File;

    return-object v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    if-nez v0, :cond_d

    .line 618
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_d
    return-void
.end method

.method private g()V
    .registers 5

    .prologue
    .line 645
    :goto_0
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->i:J

    iget-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    .line 646
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 647
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 649
    :cond_22
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 407
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->f()V

    .line 408
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_69

    .line 409
    if-nez v0, :cond_11

    .line 433
    :cond_f
    :goto_f
    monitor-exit p0

    return-object v1

    .line 413
    :cond_11
    :try_start_11
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->d(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 417
    iget-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a:[Ljava/io/File;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v4, :cond_28

    aget-object v5, v3, v2

    .line 419
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 424
    :cond_28
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:I

    .line 425
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const-string/jumbo v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 426
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 427
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 428
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 429
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->e()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 430
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 433
    :cond_56
    new-instance v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->e(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v4

    iget-object v6, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a:[Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    :try_end_68
    .catchall {:try_start_11 .. :try_end_68} :catchall_69

    goto :goto_f

    .line 407
    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->close()V

    .line 658
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/Util;->a(Ljava/io/File;)V

    .line 659
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .registers 4

    .prologue
    .line 441
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 581
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->f()V

    .line 582
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 583
    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_5b

    move-result-object v2

    if-eqz v2, :cond_2d

    :cond_15
    move v0, v1

    .line 608
    :goto_16
    monitor-exit p0

    return v0

    .line 592
    :cond_18
    :try_start_18
    iget-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->i:J

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->i:J

    .line 593
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 587
    add-int/lit8 v1, v1, 0x1

    :cond_2d
    iget v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->h:I

    if-ge v1, v2, :cond_5e

    .line 588
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v2

    .line 589
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_18

    .line 590
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5b
    .catchall {:try_start_18 .. :try_end_5b} :catchall_5b

    .line 581
    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 596
    :cond_5e
    :try_start_5e
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->l:I

    .line 597
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const-string/jumbo v1, "REMOVE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 598
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 599
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 600
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 602
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->e()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 605
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_91
    .catchall {:try_start_5e .. :try_end_91} :catchall_5b

    .line 608
    :cond_91
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public declared-synchronized close()V
    .registers 4

    .prologue
    .line 631
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-nez v0, :cond_7

    .line 642
    :goto_5
    monitor-exit p0

    return-void

    .line 634
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 635
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 636
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b()V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_30

    goto :goto_16

    .line 631
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    .line 639
    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->g()V

    .line 640
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->j:Ljava/io/Writer;
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_30

    goto :goto_5
.end method
