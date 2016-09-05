.class public final Lrx/internal/producers/ProducerArbiter;
.super Ljava/lang/Object;
.source "ProducerArbiter.java"

# interfaces
.implements Lrx/Producer;


# static fields
.field static final g:Lrx/Producer;


# instance fields
.field a:J

.field b:Lrx/Producer;

.field c:Z

.field d:J

.field e:J

.field f:Lrx/Producer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lrx/internal/producers/ProducerArbiter$1;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter$1;-><init>()V

    sput-object v0, Lrx/internal/producers/ProducerArbiter;->g:Lrx/Producer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v10, 0x0

    .line 145
    :cond_8
    :goto_8
    monitor-enter p0

    .line 146
    :try_start_9
    iget-wide v4, p0, Lrx/internal/producers/ProducerArbiter;->d:J

    .line 147
    iget-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->e:J

    .line 148
    iget-object v8, p0, Lrx/internal/producers/ProducerArbiter;->f:Lrx/Producer;

    .line 149
    cmp-long v0, v4, v10

    if-nez v0, :cond_1e

    cmp-long v0, v6, v10

    if-nez v0, :cond_1e

    if-nez v8, :cond_1e

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->c:Z

    .line 153
    monitor-exit p0

    return-void

    .line 155
    :cond_1e
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->d:J

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->e:J

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/producers/ProducerArbiter;->f:Lrx/Producer;

    .line 158
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_45

    .line 160
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->a:J

    .line 162
    cmp-long v9, v0, v2

    if-eqz v9, :cond_3c

    .line 163
    add-long/2addr v0, v4

    .line 164
    cmp-long v9, v0, v10

    if-ltz v9, :cond_39

    cmp-long v9, v0, v2

    if-nez v9, :cond_48

    .line 166
    :cond_39
    iput-wide v2, p0, Lrx/internal/producers/ProducerArbiter;->a:J

    move-wide v0, v2

    .line 176
    :cond_3c
    :goto_3c
    if-eqz v8, :cond_5f

    .line 177
    sget-object v4, Lrx/internal/producers/ProducerArbiter;->g:Lrx/Producer;

    if-ne v8, v4, :cond_59

    .line 178
    iput-object v12, p0, Lrx/internal/producers/ProducerArbiter;->b:Lrx/Producer;

    goto :goto_8

    .line 158
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0

    .line 168
    :cond_48
    sub-long/2addr v0, v6

    .line 169
    cmp-long v6, v0, v10

    if-gez v6, :cond_56

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "more produced than requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_56
    iput-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->a:J

    goto :goto_3c

    .line 180
    :cond_59
    iput-object v8, p0, Lrx/internal/producers/ProducerArbiter;->b:Lrx/Producer;

    .line 181
    invoke-interface {v8, v0, v1}, Lrx/Producer;->a(J)V

    goto :goto_8

    .line 184
    :cond_5f
    iget-object v0, p0, Lrx/internal/producers/ProducerArbiter;->b:Lrx/Producer;

    .line 185
    if-eqz v0, :cond_8

    cmp-long v1, v4, v10

    if-eqz v1, :cond_8

    .line 186
    invoke-interface {v0, v4, v5}, Lrx/Producer;->a(J)V

    goto :goto_8
.end method

.method public a(J)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    cmp-long v0, p1, v2

    if-gez v0, :cond_f

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_f
    cmp-long v0, p1, v2

    if-nez v0, :cond_14

    .line 78
    :goto_13
    return-void

    .line 48
    :cond_14
    monitor-enter p0

    .line 49
    :try_start_15
    iget-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->c:Z

    if-eqz v0, :cond_23

    .line 50
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->d:J

    .line 51
    monitor-exit p0

    goto :goto_13

    .line 54
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v0

    .line 53
    :cond_23
    const/4 v0, 0x1

    :try_start_24
    iput-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->c:Z

    .line 54
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_20

    .line 57
    :try_start_27
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->a:J

    .line 58
    add-long/2addr v0, p1

    .line 59
    cmp-long v2, v0, v2

    if-gez v2, :cond_33

    .line 60
    const-wide v0, 0x7fffffffffffffffL

    .line 62
    :cond_33
    iput-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->a:J

    .line 64
    iget-object v0, p0, Lrx/internal/producers/ProducerArbiter;->b:Lrx/Producer;

    .line 65
    if-eqz v0, :cond_3c

    .line 66
    invoke-interface {v0, p1, p2}, Lrx/Producer;->a(J)V

    .line 69
    :cond_3c
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->a()V
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_40

    goto :goto_13

    .line 72
    :catchall_40
    move-exception v0

    .line 73
    monitor-enter p0

    .line 74
    const/4 v1, 0x0

    :try_start_43
    iput-boolean v1, p0, Lrx/internal/producers/ProducerArbiter;->c:Z

    .line 75
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    throw v0

    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0
.end method

.method public a(Lrx/Producer;)V
    .registers 4

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->c:Z

    if-eqz v0, :cond_d

    .line 117
    if-nez p1, :cond_9

    sget-object p1, Lrx/internal/producers/ProducerArbiter;->g:Lrx/Producer;

    :cond_9
    iput-object p1, p0, Lrx/internal/producers/ProducerArbiter;->f:Lrx/Producer;

    .line 118
    monitor-exit p0

    .line 138
    :goto_c
    return-void

    .line 120
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->c:Z

    .line 121
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_25

    .line 124
    :try_start_11
    iput-object p1, p0, Lrx/internal/producers/ProducerArbiter;->b:Lrx/Producer;

    .line 125
    if-eqz p1, :cond_1a

    .line 126
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->a:J

    invoke-interface {p1, v0, v1}, Lrx/Producer;->a(J)V

    .line 129
    :cond_1a
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->a()V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1e

    goto :goto_c

    .line 132
    :catchall_1e
    move-exception v0

    .line 133
    monitor-enter p0

    .line 134
    const/4 v1, 0x0

    :try_start_21
    iput-boolean v1, p0, Lrx/internal/producers/ProducerArbiter;->c:Z

    .line 135
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    throw v0

    .line 121
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0

    .line 135
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public b(J)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 81
    cmp-long v0, p1, v4

    if-gtz v0, :cond_f

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "n > 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_f
    monitor-enter p0

    .line 85
    :try_start_10
    iget-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->c:Z

    if-eqz v0, :cond_1b

    .line 86
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->e:J

    .line 87
    monitor-exit p0

    .line 112
    :goto_1a
    return-void

    .line 89
    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->c:Z

    .line 90
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_3f

    .line 94
    :try_start_1f
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->a:J

    .line 95
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_44

    .line 96
    sub-long/2addr v0, p1

    .line 97
    cmp-long v2, v0, v4

    if-gez v2, :cond_42

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "more items arrived than were requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_38

    .line 106
    :catchall_38
    move-exception v0

    .line 107
    monitor-enter p0

    .line 108
    const/4 v1, 0x0

    :try_start_3b
    iput-boolean v1, p0, Lrx/internal/producers/ProducerArbiter;->c:Z

    .line 109
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_48

    throw v0

    .line 90
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0

    .line 100
    :cond_42
    :try_start_42
    iput-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->a:J

    .line 103
    :cond_44
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->a()V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_38

    goto :goto_1a

    .line 109
    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0
.end method
