.class public final Lrx/internal/producers/ProducerArbiter;
.super Ljava/lang/Object;
.source "ProducerArbiter.java"

# interfaces
.implements Lrx/Producer;


# static fields
.field static final NULL_PRODUCER:Lrx/Producer;


# instance fields
.field currentProducer:Lrx/Producer;

.field emitting:Z

.field missedProduced:J

.field missedProducer:Lrx/Producer;

.field missedRequested:J

.field requested:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lrx/internal/producers/ProducerArbiter$1;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter$1;-><init>()V

    sput-object v0, Lrx/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lrx/Producer;

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
.method public emitLoop()V
    .registers 15

    .prologue
    .line 145
    :cond_0
    :goto_0
    monitor-enter p0

    .line 146
    :try_start_1
    iget-wide v4, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    .line 147
    .local v4, "localRequested":J
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    .line 148
    .local v0, "localProduced":J
    iget-object v2, p0, Lrx/internal/producers/ProducerArbiter;->missedProducer:Lrx/Producer;

    .line 149
    .local v2, "localProducer":Lrx/Producer;
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_1a

    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-nez v12, :cond_1a

    if-nez v2, :cond_1a

    .line 152
    const/4 v12, 0x0

    iput-boolean v12, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 153
    monitor-exit p0

    return-void

    .line 155
    :cond_1a
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    .line 156
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    .line 157
    const/4 v12, 0x0

    iput-object v12, p0, Lrx/internal/producers/ProducerArbiter;->missedProducer:Lrx/Producer;

    .line 158
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_53

    .line 160
    iget-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 162
    .local v6, "r":J
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, v6, v12

    if-eqz v12, :cond_49

    .line 163
    add-long v8, v6, v4

    .line 164
    .local v8, "u":J
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-ltz v12, :cond_42

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, v8, v12

    if-nez v12, :cond_56

    .line 165
    :cond_42
    const-wide v6, 0x7fffffffffffffffL

    .line 166
    iput-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 176
    .end local v8    # "u":J
    :cond_49
    :goto_49
    if-eqz v2, :cond_71

    .line 177
    sget-object v12, Lrx/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lrx/Producer;

    if-ne v2, v12, :cond_6b

    .line 178
    const/4 v12, 0x0

    iput-object v12, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    goto :goto_0

    .line 158
    .end local v0    # "localProduced":J
    .end local v2    # "localProducer":Lrx/Producer;
    .end local v4    # "localRequested":J
    .end local v6    # "r":J
    :catchall_53
    move-exception v12

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v12

    .line 168
    .restart local v0    # "localProduced":J
    .restart local v2    # "localProducer":Lrx/Producer;
    .restart local v4    # "localRequested":J
    .restart local v6    # "r":J
    .restart local v8    # "u":J
    :cond_56
    sub-long v10, v8, v0

    .line 169
    .local v10, "v":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gez v12, :cond_67

    .line 170
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "more produced than requested"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 172
    :cond_67
    move-wide v6, v10

    .line 173
    iput-wide v10, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    goto :goto_49

    .line 180
    .end local v8    # "u":J
    .end local v10    # "v":J
    :cond_6b
    iput-object v2, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 181
    invoke-interface {v2, v6, v7}, Lrx/Producer;->request(J)V

    goto :goto_0

    .line 184
    :cond_71
    iget-object v3, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 185
    .local v3, "p":Lrx/Producer;
    if-eqz v3, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_0

    .line 186
    invoke-interface {v3, v4, v5}, Lrx/Producer;->request(J)V

    goto :goto_0
.end method

.method public produced(J)V
    .registers 14
    .param p1, "n"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 81
    cmp-long v3, p1, v8

    if-gtz v3, :cond_f

    .line 82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "n > 0 required"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_f
    monitor-enter p0

    .line 85
    :try_start_10
    iget-boolean v3, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v3, :cond_1b

    .line 86
    iget-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    add-long/2addr v6, p1

    iput-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    .line 87
    monitor-exit p0

    .line 112
    :cond_1a
    :goto_1a
    return-void

    .line 89
    :cond_1b
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 90
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_43

    .line 92
    const/4 v2, 0x0

    .line 94
    .local v2, "skipFinal":Z
    :try_start_20
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 95
    .local v0, "r":J
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v3, v0, v6

    if-eqz v3, :cond_48

    .line 96
    sub-long v4, v0, p1

    .line 97
    .local v4, "u":J
    cmp-long v3, v4, v8

    if-gez v3, :cond_46

    .line 98
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "more items arrived than were requested"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_3a

    .line 106
    .end local v0    # "r":J
    .end local v4    # "u":J
    :catchall_3a
    move-exception v3

    if-nez v2, :cond_42

    .line 107
    monitor-enter p0

    .line 108
    const/4 v6, 0x0

    :try_start_3f
    iput-boolean v6, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 109
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_57

    :cond_42
    throw v3

    .line 90
    .end local v2    # "skipFinal":Z
    :catchall_43
    move-exception v3

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v3

    .line 100
    .restart local v0    # "r":J
    .restart local v2    # "skipFinal":Z
    .restart local v4    # "u":J
    :cond_46
    :try_start_46
    iput-wide v4, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 103
    .end local v4    # "u":J
    :cond_48
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_3a

    .line 104
    const/4 v2, 0x1

    .line 106
    if-nez v2, :cond_1a

    .line 107
    monitor-enter p0

    .line 108
    const/4 v3, 0x0

    :try_start_50
    iput-boolean v3, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 109
    monitor-exit p0

    goto :goto_1a

    :catchall_54
    move-exception v3

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_54

    throw v3

    .end local v0    # "r":J
    :catchall_57
    move-exception v3

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v3
.end method

.method public request(J)V
    .registers 14
    .param p1, "n"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 42
    cmp-long v6, p1, v8

    if-gez v6, :cond_f

    .line 43
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "n >= 0 required"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 45
    :cond_f
    cmp-long v6, p1, v8

    if-nez v6, :cond_14

    .line 78
    :cond_13
    :goto_13
    return-void

    .line 48
    :cond_14
    monitor-enter p0

    .line 49
    :try_start_15
    iget-boolean v6, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v6, :cond_23

    .line 50
    iget-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    add-long/2addr v6, p1

    iput-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    .line 51
    monitor-exit p0

    goto :goto_13

    .line 54
    :catchall_20
    move-exception v6

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v6

    .line 53
    :cond_23
    const/4 v6, 0x1

    :try_start_24
    iput-boolean v6, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 54
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_20

    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, "skipFinal":Z
    :try_start_28
    iget-wide v2, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 58
    .local v2, "r":J
    add-long v4, v2, p1

    .line 59
    .local v4, "u":J
    cmp-long v6, v4, v8

    if-gez v6, :cond_35

    .line 60
    const-wide v4, 0x7fffffffffffffffL

    .line 62
    :cond_35
    iput-wide v4, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 64
    iget-object v0, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 65
    .local v0, "p":Lrx/Producer;
    if-eqz v0, :cond_3e

    .line 66
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 69
    :cond_3e
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_41
    .catchall {:try_start_28 .. :try_end_41} :catchall_4d

    .line 70
    const/4 v1, 0x1

    .line 72
    if-nez v1, :cond_13

    .line 73
    monitor-enter p0

    .line 74
    const/4 v6, 0x0

    :try_start_46
    iput-boolean v6, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 75
    monitor-exit p0

    goto :goto_13

    :catchall_4a
    move-exception v6

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4a

    throw v6

    .line 72
    .end local v0    # "p":Lrx/Producer;
    .end local v2    # "r":J
    .end local v4    # "u":J
    :catchall_4d
    move-exception v6

    if-nez v1, :cond_55

    .line 73
    monitor-enter p0

    .line 74
    const/4 v7, 0x0

    :try_start_52
    iput-boolean v7, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 75
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    :cond_55
    throw v6

    :catchall_56
    move-exception v6

    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v6
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 6
    .param p1, "newProducer"    # Lrx/Producer;

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_1
    iget-boolean v1, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v1, :cond_d

    .line 117
    if-nez p1, :cond_9

    sget-object p1, Lrx/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lrx/Producer;

    .end local p1    # "newProducer":Lrx/Producer;
    :cond_9
    iput-object p1, p0, Lrx/internal/producers/ProducerArbiter;->missedProducer:Lrx/Producer;

    .line 118
    monitor-exit p0

    .line 138
    :cond_c
    :goto_c
    return-void

    .line 120
    .restart local p1    # "newProducer":Lrx/Producer;
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 121
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2a

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "skipFinal":Z
    :try_start_12
    iput-object p1, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 125
    if-eqz p1, :cond_1b

    .line 126
    iget-wide v2, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    invoke-interface {p1, v2, v3}, Lrx/Producer;->request(J)V

    .line 129
    :cond_1b
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_2d

    .line 130
    const/4 v0, 0x1

    .line 132
    if-nez v0, :cond_c

    .line 133
    monitor-enter p0

    .line 134
    const/4 v1, 0x0

    :try_start_23
    iput-boolean v1, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 135
    monitor-exit p0

    goto :goto_c

    :catchall_27
    move-exception v1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    throw v1

    .line 121
    .end local v0    # "skipFinal":Z
    .end local p1    # "newProducer":Lrx/Producer;
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1

    .line 132
    .restart local v0    # "skipFinal":Z
    .restart local p1    # "newProducer":Lrx/Producer;
    :catchall_2d
    move-exception v1

    if-nez v0, :cond_35

    .line 133
    monitor-enter p0

    .line 134
    const/4 v2, 0x0

    :try_start_32
    iput-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 135
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    :cond_35
    throw v1

    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method
