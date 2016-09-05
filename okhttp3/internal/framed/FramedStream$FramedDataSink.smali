.class final Lokhttp3/internal/framed/FramedStream$FramedDataSink;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lokio/Sink;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lokhttp3/internal/framed/FramedStream;

.field private final c:Lokio/Buffer;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 468
    const-class v0, Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lokhttp3/internal/framed/FramedStream;)V
    .registers 3

    .prologue
    .line 468
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->c:Lokio/Buffer;

    return-void
.end method

.method private a(Z)V
    .registers 8

    .prologue
    .line 498
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v1

    .line 499
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->c()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_37

    .line 501
    :goto_c
    :try_start_c
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    iget-wide v2, v0, Lokhttp3/internal/framed/FramedStream;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3a

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->e:Z

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->d:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->d(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 502
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->e(Lokhttp3/internal/framed/FramedStream;)V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_2c

    goto :goto_c

    .line 505
    :catchall_2c
    move-exception v0

    :try_start_2d
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->b()V

    throw v0

    .line 511
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_37

    throw v0

    .line 505
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->b()V

    .line 508
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->h(Lokhttp3/internal/framed/FramedStream;)V

    .line 509
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    iget-wide v2, v0, Lokhttp3/internal/framed/FramedStream;->b:J

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 510
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    iget-wide v2, v0, Lokhttp3/internal/framed/FramedStream;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lokhttp3/internal/framed/FramedStream;->b:J

    .line 511
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_3a .. :try_end_5e} :catchall_37

    .line 513
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->c()V

    .line 515
    :try_start_67
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->b(Lokhttp3/internal/framed/FramedStream;)I

    move-result v1

    if-eqz p1, :cond_8f

    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->c:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->b()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_8f

    const/4 v2, 0x1

    :goto_80
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->c:Lokio/Buffer;

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/framed/FramedConnection;->a(IZLokio/Buffer;J)V
    :try_end_85
    .catchall {:try_start_67 .. :try_end_85} :catchall_91

    .line 517
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->b()V

    .line 519
    return-void

    .line 515
    :cond_8f
    const/4 v2, 0x0

    goto :goto_80

    .line 517
    :catchall_91
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->b()V

    throw v0
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z
    .registers 2

    .prologue
    .line 468
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->e:Z

    return v0
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedStream$FramedDataSink;Z)Z
    .registers 2

    .prologue
    .line 468
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->e:Z

    return p1
.end method

.method static synthetic b(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z
    .registers 2

    .prologue
    .line 468
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->d:Z

    return v0
.end method


# virtual methods
.method public a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method

.method public a_(Lokio/Buffer;J)V
    .registers 8

    .prologue
    .line 485
    sget-boolean v0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->a:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 486
    :cond_12
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->c:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->a_(Lokio/Buffer;J)V

    .line 487
    :goto_17
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->a(Z)V

    goto :goto_17

    .line 490
    :cond_28
    return-void
.end method

.method public close()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 537
    sget-boolean v0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->a:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 538
    :cond_15
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v1

    .line 539
    :try_start_18
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->d:Z

    if-eqz v0, :cond_1e

    monitor-exit v1

    .line 557
    :goto_1d
    return-void

    .line 540
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_3f

    .line 541
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    iget-boolean v0, v0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->e:Z

    if-nez v0, :cond_52

    .line 543
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_42

    .line 544
    :goto_31
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_52

    .line 545
    invoke-direct {p0, v2}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->a(Z)V

    goto :goto_31

    .line 540
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0

    .line 549
    :cond_42
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->b(Lokhttp3/internal/framed/FramedStream;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/framed/FramedConnection;->a(IZLokio/Buffer;J)V

    .line 552
    :cond_52
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v1

    .line 553
    const/4 v0, 0x1

    :try_start_56
    iput-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->d:Z

    .line 554
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_68

    .line 555
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->c()V

    .line 556
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->f(Lokhttp3/internal/framed/FramedStream;)V

    goto :goto_1d

    .line 554
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0
.end method

.method public flush()V
    .registers 5

    .prologue
    .line 522
    sget-boolean v0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->a:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 523
    :cond_12
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v1

    .line 524
    :try_start_15
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->h(Lokhttp3/internal/framed/FramedStream;)V

    .line 525
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_35

    .line 526
    :goto_1b
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_38

    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->a(Z)V

    .line 528
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->c()V

    goto :goto_1b

    .line 525
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0

    .line 530
    :cond_38
    return-void
.end method
