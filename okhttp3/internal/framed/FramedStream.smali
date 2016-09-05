.class public final Lokhttp3/internal/framed/FramedStream;
.super Ljava/lang/Object;
.source "FramedStream.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field a:J

.field b:J

.field final c:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

.field private final e:I

.field private final f:Lokhttp3/internal/framed/FramedConnection;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

.field private final j:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

.field private final k:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

.field private l:Lokhttp3/internal/framed/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lokhttp3/internal/framed/FramedStream;->d:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lokhttp3/internal/framed/FramedConnection;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x10000

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->a:J

    .line 64
    new-instance v0, Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->j:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    .line 65
    new-instance v0, Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->k:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    .line 72
    iput-object v4, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    .line 76
    if-nez p2, :cond_25

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_25
    if-nez p5, :cond_30

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_30
    iput p1, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    .line 79
    iput-object p2, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    .line 80
    iget-object v0, p2, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    .line 81
    invoke-virtual {v0, v2}, Lokhttp3/internal/framed/Settings;->f(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->b:J

    .line 82
    new-instance v0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    iget-object v1, p2, Lokhttp3/internal/framed/FramedConnection;->e:Lokhttp3/internal/framed/Settings;

    .line 83
    invoke-virtual {v1, v2}, Lokhttp3/internal/framed/Settings;->f(I)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3, v4}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;-><init>(Lokhttp3/internal/framed/FramedStream;JLokhttp3/internal/framed/FramedStream$1;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    .line 84
    new-instance v0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    .line 85
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0, p4}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->a(Lokhttp3/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 86
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0, p3}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->a(Lokhttp3/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 87
    iput-object p5, p0, Lokhttp3/internal/framed/FramedStream;->g:Ljava/util/List;

    .line 88
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/internal/framed/FramedStream;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    return v0
.end method

.method static synthetic c(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->j:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic d(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    return-object v0
.end method

.method private d(Lokhttp3/internal/framed/ErrorCode;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 237
    sget-boolean v1, Lokhttp3/internal/framed/FramedStream;->d:Z

    if-nez v1, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :cond_11
    monitor-enter p0

    .line 239
    :try_start_12
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    if-eqz v1, :cond_18

    .line 240
    monitor-exit p0

    .line 249
    :goto_17
    return v0

    .line 242
    :cond_18
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->a(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->a(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 243
    monitor-exit p0

    goto :goto_17

    .line 247
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2a

    throw v0

    .line 245
    :cond_2d
    :try_start_2d
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_2a

    .line 248
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    .line 249
    const/4 v0, 0x1

    goto :goto_17
.end method

.method static synthetic e(Lokhttp3/internal/framed/FramedStream;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->l()V

    return-void
.end method

.method static synthetic f(Lokhttp3/internal/framed/FramedStream;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->j()V

    return-void
.end method

.method static synthetic g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->k:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/internal/framed/FramedStream;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->k()V

    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 447
    sget-boolean v0, Lokhttp3/internal/framed/FramedStream;->d:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 450
    :cond_10
    monitor-enter p0

    .line 451
    :try_start_11
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->a(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->a(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_31
    const/4 v0, 0x1

    .line 452
    :goto_32
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->b()Z

    move-result v1

    .line 453
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_41

    .line 454
    if-eqz v0, :cond_44

    .line 459
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/ErrorCode;)V

    .line 463
    :cond_3e
    :goto_3e
    return-void

    .line 451
    :cond_3f
    const/4 v0, 0x0

    goto :goto_32

    .line 453
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0

    .line 460
    :cond_44
    if-nez v1, :cond_3e

    .line 461
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    goto :goto_3e
.end method

.method private k()V
    .registers 3

    .prologue
    .line 569
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 570
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_11
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->a(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 572
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_22
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    if-eqz v0, :cond_2e

    .line 574
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0

    .line 576
    :cond_2e
    return-void
.end method

.method private l()V
    .registers 2

    .prologue
    .line 584
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 588
    return-void

    .line 585
    :catch_4
    move-exception v0

    .line 586
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    return v0
.end method

.method a(J)V
    .registers 6

    .prologue
    .line 564
    iget-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->b:J

    .line 565
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 566
    :cond_e
    return-void
.end method

.method a(Ljava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;",
            "Lokhttp3/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 253
    sget-boolean v0, Lokhttp3/internal/framed/FramedStream;->d:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 254
    :cond_10
    const/4 v1, 0x0

    .line 255
    const/4 v0, 0x1

    .line 256
    monitor-enter p0

    .line 257
    :try_start_13
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    if-nez v2, :cond_33

    .line 258
    invoke-virtual {p2}, Lokhttp3/internal/framed/HeadersMode;->c()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 259
    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->b:Lokhttp3/internal/framed/ErrorCode;

    .line 275
    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_30

    .line 276
    if-eqz v1, :cond_4c

    .line 277
    invoke-virtual {p0, v1}, Lokhttp3/internal/framed/FramedStream;->b(Lokhttp3/internal/framed/ErrorCode;)V

    .line 281
    :cond_25
    :goto_25
    return-void

    .line 261
    :cond_26
    :try_start_26
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    .line 262
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->b()Z

    move-result v0

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1f

    .line 275
    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    throw v0

    .line 266
    :cond_33
    :try_start_33
    invoke-virtual {p2}, Lokhttp3/internal/framed/HeadersMode;->d()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 267
    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->e:Lokhttp3/internal/framed/ErrorCode;

    goto :goto_1f

    .line 269
    :cond_3c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    iput-object v2, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_30

    goto :goto_1f

    .line 278
    :cond_4c
    if-nez v0, :cond_25

    .line 279
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    goto :goto_25
.end method

.method public a(Lokhttp3/internal/framed/ErrorCode;)V
    .registers 4

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedStream;->d(Lokhttp3/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 222
    :goto_6
    return-void

    .line 221
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/framed/FramedConnection;->b(ILokhttp3/internal/framed/ErrorCode;)V

    goto :goto_6
.end method

.method a(Lokio/BufferedSource;I)V
    .registers 7

    .prologue
    .line 284
    sget-boolean v0, Lokhttp3/internal/framed/FramedStream;->d:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 285
    :cond_10
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->a(Lokio/BufferedSource;J)V

    .line 286
    return-void
.end method

.method public b(Lokhttp3/internal/framed/ErrorCode;)V
    .registers 4

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedStream;->d(Lokhttp3/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 233
    :goto_6
    return-void

    .line 232
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/framed/FramedConnection;->a(ILokhttp3/internal/framed/ErrorCode;)V

    goto :goto_6
.end method

.method public declared-synchronized b()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 106
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_2e

    if-eqz v1, :cond_8

    .line 114
    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    .line 109
    :cond_8
    :try_start_8
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->a(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->b(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_18
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    .line 110
    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->a(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->b(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_28
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2e

    if-nez v1, :cond_6

    .line 114
    :cond_2c
    const/4 v0, 0x1

    goto :goto_6

    .line 106
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Lokhttp3/internal/framed/ErrorCode;)V
    .registers 3

    .prologue
    .line 302
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    if-nez v0, :cond_a

    .line 303
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 306
    :cond_a
    monitor-exit p0

    return-void

    .line 302
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    iget v0, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    move v0, v1

    .line 120
    :goto_9
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget-boolean v3, v3, Lokhttp3/internal/framed/FramedConnection;->b:Z

    if-ne v3, v0, :cond_12

    :goto_f
    return v1

    :cond_10
    move v0, v2

    .line 119
    goto :goto_9

    :cond_12
    move v1, v2

    .line 120
    goto :goto_f
.end method

.method public declared-synchronized d()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->j:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->c()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19

    .line 138
    :goto_6
    :try_start_6
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    if-nez v0, :cond_1c

    .line 139
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->l()V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    goto :goto_6

    .line 142
    :catchall_12
    move-exception v0

    :try_start_13
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->j:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->b()V

    throw v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_19

    .line 136
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->j:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->b()V

    .line 144
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_19

    monitor-exit p0

    return-object v0

    .line 145
    :cond_29
    :try_start_29
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_19
.end method

.method public e()Lokio/Timeout;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->j:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method public f()Lokio/Timeout;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->k:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method public g()Lokio/Source;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    return-object v0
.end method

.method public h()Lokio/Sink;
    .registers 3

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->c()Z

    move-result v0

    if-nez v0, :cond_17

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_14

    .line 210
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    return-object v0
.end method

.method i()V
    .registers 3

    .prologue
    .line 289
    sget-boolean v0, Lokhttp3/internal/framed/FramedStream;->d:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 291
    :cond_10
    monitor-enter p0

    .line 292
    :try_start_11
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->a(Lokhttp3/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 293
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->b()Z

    move-result v0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_29

    .line 296
    if-nez v0, :cond_28

    .line 297
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    .line 299
    :cond_28
    return-void

    .line 295
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method
