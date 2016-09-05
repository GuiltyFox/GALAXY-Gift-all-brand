.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "AsyncTimeout.java"


# static fields
.field private static a:Lokio/AsyncTimeout;


# instance fields
.field private c:Z

.field private d:Lokio/AsyncTimeout;

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Lokio/AsyncTimeout;JZ)V
    .registers 13

    .prologue
    const-wide/16 v4, 0x0

    .line 85
    const-class v1, Lokio/AsyncTimeout;

    monitor-enter v1

    :try_start_5
    sget-object v0, Lokio/AsyncTimeout;->a:Lokio/AsyncTimeout;

    if-nez v0, :cond_18

    .line 86
    new-instance v0, Lokio/AsyncTimeout;

    invoke-direct {v0}, Lokio/AsyncTimeout;-><init>()V

    sput-object v0, Lokio/AsyncTimeout;->a:Lokio/AsyncTimeout;

    .line 87
    new-instance v0, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v0}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v0}, Lokio/AsyncTimeout$Watchdog;->start()V

    .line 90
    :cond_18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 91
    cmp-long v0, p1, v4

    if-eqz v0, :cond_53

    if-eqz p3, :cond_53

    .line 94
    invoke-virtual {p0}, Lokio/AsyncTimeout;->d()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lokio/AsyncTimeout;->e:J

    .line 104
    :goto_2e
    invoke-direct {p0, v2, v3}, Lokio/AsyncTimeout;->b(J)J

    move-result-wide v4

    .line 105
    sget-object v0, Lokio/AsyncTimeout;->a:Lokio/AsyncTimeout;

    .line 106
    :goto_34
    iget-object v6, v0, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;

    if-eqz v6, :cond_42

    iget-object v6, v0, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;

    invoke-direct {v6, v2, v3}, Lokio/AsyncTimeout;->b(J)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_6e

    .line 107
    :cond_42
    iget-object v2, v0, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;

    iput-object v2, p0, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;

    .line 108
    iput-object p0, v0, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;

    .line 109
    sget-object v2, Lokio/AsyncTimeout;->a:Lokio/AsyncTimeout;

    if-ne v0, v2, :cond_51

    .line 110
    const-class v0, Lokio/AsyncTimeout;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_5c

    .line 115
    :cond_51
    monitor-exit v1

    return-void

    .line 95
    :cond_53
    cmp-long v0, p1, v4

    if-eqz v0, :cond_5f

    .line 96
    add-long v4, v2, p1

    :try_start_59
    iput-wide v4, p0, Lokio/AsyncTimeout;->e:J
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5c

    goto :goto_2e

    .line 85
    :catchall_5c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 97
    :cond_5f
    if-eqz p3, :cond_68

    .line 98
    :try_start_61
    invoke-virtual {p0}, Lokio/AsyncTimeout;->d()J

    move-result-wide v4

    iput-wide v4, p0, Lokio/AsyncTimeout;->e:J

    goto :goto_2e

    .line 100
    :cond_68
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_6e
    iget-object v0, v0, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_5c

    goto :goto_34
.end method

.method private static declared-synchronized a(Lokio/AsyncTimeout;)Z
    .registers 4

    .prologue
    .line 127
    const-class v1, Lokio/AsyncTimeout;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lokio/AsyncTimeout;->a:Lokio/AsyncTimeout;

    :goto_5
    if-eqz v0, :cond_18

    .line 128
    iget-object v2, v0, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;

    if-ne v2, p0, :cond_15

    .line 129
    iget-object v2, p0, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;

    iput-object v2, v0, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    .line 131
    const/4 v0, 0x0

    .line 136
    :goto_13
    monitor-exit v1

    return v0

    .line 127
    :cond_15
    :try_start_15
    iget-object v0, v0, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1a

    goto :goto_5

    .line 136
    :cond_18
    const/4 v0, 0x1

    goto :goto_13

    .line 127
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(J)J
    .registers 6

    .prologue
    .line 144
    iget-wide v0, p0, Lokio/AsyncTimeout;->e:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method static declared-synchronized e()Lokio/AsyncTimeout;
    .registers 10

    .prologue
    const-wide/32 v8, 0xf4240

    const/4 v0, 0x0

    .line 334
    const-class v2, Lokio/AsyncTimeout;

    monitor-enter v2

    :try_start_7
    sget-object v1, Lokio/AsyncTimeout;->a:Lokio/AsyncTimeout;

    iget-object v1, v1, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;

    .line 337
    if-nez v1, :cond_14

    .line 338
    const-class v1, Lokio/AsyncTimeout;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_30

    .line 357
    :goto_12
    monitor-exit v2

    return-object v0

    .line 342
    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lokio/AsyncTimeout;->b(J)J

    move-result-wide v4

    .line 345
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_33

    .line 348
    const-wide/32 v6, 0xf4240

    div-long v6, v4, v6

    .line 349
    mul-long/2addr v8, v6

    sub-long/2addr v4, v8

    .line 350
    const-class v1, Lokio/AsyncTimeout;

    long-to-int v3, v4

    invoke-virtual {v1, v6, v7, v3}, Ljava/lang/Object;->wait(JI)V
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_30

    goto :goto_12

    .line 334
    :catchall_30
    move-exception v0

    monitor-exit v2

    throw v0

    .line 355
    :cond_33
    :try_start_33
    sget-object v0, Lokio/AsyncTimeout;->a:Lokio/AsyncTimeout;

    iget-object v3, v1, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;

    iput-object v3, v0, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;

    .line 356
    const/4 v0, 0x0

    iput-object v0, v1, Lokio/AsyncTimeout;->d:Lokio/AsyncTimeout;
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_30

    move-object v0, v1

    .line 357
    goto :goto_12
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    .prologue
    .line 297
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 298
    if-eqz p1, :cond_d

    .line 299
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 301
    :cond_d
    return-object v0
.end method

.method public final a(Lokio/Sink;)Lokio/Sink;
    .registers 3

    .prologue
    .line 160
    new-instance v0, Lokio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final a(Lokio/Source;)Lokio/Source;
    .registers 3

    .prologue
    .line 233
    new-instance v0, Lokio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method protected a()V
    .registers 1

    .prologue
    .line 152
    return-void
.end method

.method final a(Z)V
    .registers 3

    .prologue
    .line 276
    invoke-virtual {p0}, Lokio/AsyncTimeout;->e_()Z

    move-result v0

    .line 277
    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokio/AsyncTimeout;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 278
    :cond_e
    return-void
.end method

.method final b(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3

    .prologue
    .line 287
    invoke-virtual {p0}, Lokio/AsyncTimeout;->e_()Z

    move-result v0

    if-nez v0, :cond_7

    .line 288
    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_6
.end method

.method public final c()V
    .registers 7

    .prologue
    .line 72
    iget-boolean v0, p0, Lokio/AsyncTimeout;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_d
    invoke-virtual {p0}, Lokio/AsyncTimeout;->f_()J

    move-result-wide v0

    .line 74
    invoke-virtual {p0}, Lokio/AsyncTimeout;->g_()Z

    move-result v2

    .line 75
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1e

    if-nez v2, :cond_1e

    .line 80
    :goto_1d
    return-void

    .line 78
    :cond_1e
    const/4 v3, 0x1

    iput-boolean v3, p0, Lokio/AsyncTimeout;->c:Z

    .line 79
    invoke-static {p0, v0, v1, v2}, Lokio/AsyncTimeout;->a(Lokio/AsyncTimeout;JZ)V

    goto :goto_1d
.end method

.method public final e_()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 119
    iget-boolean v1, p0, Lokio/AsyncTimeout;->c:Z

    if-nez v1, :cond_6

    .line 121
    :goto_5
    return v0

    .line 120
    :cond_6
    iput-boolean v0, p0, Lokio/AsyncTimeout;->c:Z

    .line 121
    invoke-static {p0}, Lokio/AsyncTimeout;->a(Lokio/AsyncTimeout;)Z

    move-result v0

    goto :goto_5
.end method
