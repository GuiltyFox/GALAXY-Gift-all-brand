.class public final Lokhttp3/internal/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final synthetic b:Z

.field private static final p:Lokio/Sink;


# instance fields
.field private final c:Lokhttp3/internal/io/FileSystem;

.field private d:J

.field private final e:I

.field private f:J

.field private g:Lokio/BufferedSink;

.field private final h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const-class v0, Lokhttp3/internal/DiskLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lokhttp3/internal/DiskLruCache;->b:Z

    .line 93
    const-string/jumbo v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/DiskLruCache;->a:Ljava/util/regex/Pattern;

    .line 823
    new-instance v0, Lokhttp3/internal/DiskLruCache$4;

    invoke-direct {v0}, Lokhttp3/internal/DiskLruCache$4;-><init>()V

    sput-object v0, Lokhttp3/internal/DiskLruCache;->p:Lokio/Sink;

    return-void

    .line 86
    :cond_1c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic a(Lokhttp3/internal/DiskLruCache;)I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lokhttp3/internal/DiskLruCache;->e:I

    return v0
.end method

.method private declared-synchronized a(Lokhttp3/internal/DiskLruCache$Editor;Z)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 528
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Lokhttp3/internal/DiskLruCache$Editor;->a(Lokhttp3/internal/DiskLruCache$Editor;)Lokhttp3/internal/DiskLruCache$Entry;

    move-result-object v2

    .line 529
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->a(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_15

    .line 530
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_12

    .line 528
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 534
    :cond_15
    if-eqz p2, :cond_5d

    :try_start_17
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->f(Lokhttp3/internal/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_5d

    move v1, v0

    .line 535
    :goto_1e
    iget v3, p0, Lokhttp3/internal/DiskLruCache;->e:I

    if-ge v1, v3, :cond_5d

    .line 536
    invoke-static {p1}, Lokhttp3/internal/DiskLruCache$Editor;->b(Lokhttp3/internal/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_47

    .line 537
    invoke-virtual {p1}, Lokhttp3/internal/DiskLruCache$Editor;->b()V

    .line 538
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

    .line 540
    :cond_47
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache;->c:Lokhttp3/internal/io/FileSystem;

    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->d(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lokhttp3/internal/io/FileSystem;->b(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 541
    invoke-virtual {p1}, Lokhttp3/internal/DiskLruCache$Editor;->b()V
    :try_end_58
    .catchall {:try_start_17 .. :try_end_58} :catchall_12

    .line 585
    :cond_58
    :goto_58
    monitor-exit p0

    return-void

    .line 535
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 547
    :cond_5d
    :goto_5d
    :try_start_5d
    iget v1, p0, Lokhttp3/internal/DiskLruCache;->e:I

    if-ge v0, v1, :cond_9e

    .line 548
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->d(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, v0

    .line 549
    if-eqz p2, :cond_98

    .line 550
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache;->c:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v3, v1}, Lokhttp3/internal/io/FileSystem;->b(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 551
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->c(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v0

    .line 552
    iget-object v4, p0, Lokhttp3/internal/DiskLruCache;->c:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v4, v1, v3}, Lokhttp3/internal/io/FileSystem;->a(Ljava/io/File;Ljava/io/File;)V

    .line 553
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->b(Lokhttp3/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 554
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache;->c:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v1, v3}, Lokhttp3/internal/io/FileSystem;->c(Ljava/io/File;)J

    move-result-wide v6

    .line 555
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->b(Lokhttp3/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 556
    iget-wide v8, p0, Lokhttp3/internal/DiskLruCache;->f:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/DiskLruCache;->f:J

    .line 547
    :cond_95
    :goto_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 559
    :cond_98
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache;->c:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v3, v1}, Lokhttp3/internal/io/FileSystem;->a(Ljava/io/File;)V

    goto :goto_95

    .line 563
    :cond_9e
    iget v0, p0, Lokhttp3/internal/DiskLruCache;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/DiskLruCache;->i:I

    .line 564
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lokhttp3/internal/DiskLruCache$Entry;->a(Lokhttp3/internal/DiskLruCache$Entry;Lokhttp3/internal/DiskLruCache$Editor;)Lokhttp3/internal/DiskLruCache$Editor;

    .line 565
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->f(Lokhttp3/internal/DiskLruCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_fe

    .line 566
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lokhttp3/internal/DiskLruCache$Entry;->a(Lokhttp3/internal/DiskLruCache$Entry;Z)Z

    .line 567
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->g:Lokio/BufferedSink;

    const-string/jumbo v1, "CLEAN"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 568
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->g:Lokio/BufferedSink;

    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->e(Lokhttp3/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 569
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->g:Lokio/BufferedSink;

    invoke-virtual {v2, v0}, Lokhttp3/internal/DiskLruCache$Entry;->a(Lokio/BufferedSink;)V

    .line 570
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->g:Lokio/BufferedSink;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 571
    if-eqz p2, :cond_e2

    .line 572
    iget-wide v0, p0, Lokhttp3/internal/DiskLruCache;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lokhttp3/internal/DiskLruCache;->m:J

    invoke-static {v2, v0, v1}, Lokhttp3/internal/DiskLruCache$Entry;->a(Lokhttp3/internal/DiskLruCache$Entry;J)J

    .line 580
    :cond_e2
    :goto_e2
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->g:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 582
    iget-wide v0, p0, Lokhttp3/internal/DiskLruCache;->f:J

    iget-wide v2, p0, Lokhttp3/internal/DiskLruCache;->d:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f5

    invoke-direct {p0}, Lokhttp3/internal/DiskLruCache;->b()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 583
    :cond_f5
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->n:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/DiskLruCache;->o:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_58

    .line 575
    :cond_fe
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->h:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->e(Lokhttp3/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->g:Lokio/BufferedSink;

    const-string/jumbo v1, "REMOVE"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 577
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->g:Lokio/BufferedSink;

    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->e(Lokhttp3/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 578
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->g:Lokio/BufferedSink;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;
    :try_end_125
    .catchall {:try_start_5d .. :try_end_125} :catchall_12

    goto :goto_e2
.end method

.method static synthetic a(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Editor;Z)V
    .registers 3

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/DiskLruCache;->a(Lokhttp3/internal/DiskLruCache$Editor;Z)V

    return-void
.end method

.method private a(Lokhttp3/internal/DiskLruCache$Entry;)Z
    .registers 8

    .prologue
    .line 616
    invoke-static {p1}, Lokhttp3/internal/DiskLruCache$Entry;->a(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 617
    invoke-static {p1}, Lokhttp3/internal/DiskLruCache$Entry;->a(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/DiskLruCache$Editor;->a()V

    .line 620
    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget v1, p0, Lokhttp3/internal/DiskLruCache;->e:I

    if-ge v0, v1, :cond_33

    .line 621
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache;->c:Lokhttp3/internal/io/FileSystem;

    invoke-static {p1}, Lokhttp3/internal/DiskLruCache$Entry;->c(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->a(Ljava/io/File;)V

    .line 622
    iget-wide v2, p0, Lokhttp3/internal/DiskLruCache;->f:J

    invoke-static {p1}, Lokhttp3/internal/DiskLruCache$Entry;->b(Lokhttp3/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokhttp3/internal/DiskLruCache;->f:J

    .line 623
    invoke-static {p1}, Lokhttp3/internal/DiskLruCache$Entry;->b(Lokhttp3/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 626
    :cond_33
    iget v0, p0, Lokhttp3/internal/DiskLruCache;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/DiskLruCache;->i:I

    .line 627
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->g:Lokio/BufferedSink;

    const-string/jumbo v1, "REMOVE"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    move-result-object v0

    invoke-static {p1}, Lokhttp3/internal/DiskLruCache$Entry;->e(Lokhttp3/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 628
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->h:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lokhttp3/internal/DiskLruCache$Entry;->e(Lokhttp3/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-direct {p0}, Lokhttp3/internal/DiskLruCache;->b()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 631
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->n:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/DiskLruCache;->o:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 634
    :cond_6b
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lokhttp3/internal/DiskLruCache;)Lokhttp3/internal/io/FileSystem;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->c:Lokhttp3/internal/io/FileSystem;

    return-object v0
.end method

.method private b()Z
    .registers 3

    .prologue
    .line 592
    .line 593
    iget v0, p0, Lokhttp3/internal/DiskLruCache;->i:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lokhttp3/internal/DiskLruCache;->i:I

    iget-object v1, p0, Lokhttp3/internal/DiskLruCache;->h:Ljava/util/LinkedHashMap;

    .line 594
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    .line 593
    :goto_11
    return v0

    .line 594
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private declared-synchronized c()V
    .registers 3

    .prologue
    .line 643
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/DiskLruCache;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    .line 643
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 646
    :cond_13
    monitor-exit p0

    return-void
.end method

.method private d()V
    .registers 5

    .prologue
    .line 676
    :goto_0
    iget-wide v0, p0, Lokhttp3/internal/DiskLruCache;->f:J

    iget-wide v2, p0, Lokhttp3/internal/DiskLruCache;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 677
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/DiskLruCache$Entry;

    .line 678
    invoke-direct {p0, v0}, Lokhttp3/internal/DiskLruCache;->a(Lokhttp3/internal/DiskLruCache$Entry;)Z

    goto :goto_0

    .line 680
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/DiskLruCache;->l:Z

    .line 681
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .registers 2

    .prologue
    .line 639
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache;->k:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 6

    .prologue
    .line 659
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache;->j:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache;->k:Z

    if-eqz v0, :cond_e

    .line 660
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/DiskLruCache;->k:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_47

    .line 673
    :goto_c
    monitor-exit p0

    return-void

    .line 664
    :cond_e
    :try_start_e
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/DiskLruCache;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lokhttp3/internal/DiskLruCache$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/DiskLruCache$Entry;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_38

    aget-object v3, v0, v1

    .line 665
    invoke-static {v3}, Lokhttp3/internal/DiskLruCache$Entry;->a(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 666
    invoke-static {v3}, Lokhttp3/internal/DiskLruCache$Entry;->a(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/DiskLruCache$Editor;->b()V

    .line 664
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 669
    :cond_38
    invoke-direct {p0}, Lokhttp3/internal/DiskLruCache;->d()V

    .line 670
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->g:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/DiskLruCache;->g:Lokio/BufferedSink;

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/DiskLruCache;->k:Z
    :try_end_46
    .catchall {:try_start_e .. :try_end_46} :catchall_47

    goto :goto_c

    .line 659
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2

    .prologue
    .line 650
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_7

    .line 655
    :goto_5
    monitor-exit p0

    return-void

    .line 652
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lokhttp3/internal/DiskLruCache;->c()V

    .line 653
    invoke-direct {p0}, Lokhttp3/internal/DiskLruCache;->d()V

    .line 654
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache;->g:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_5

    .line 650
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
