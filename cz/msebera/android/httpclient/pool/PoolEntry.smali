.class public abstract Lcz/msebera/android/httpclient/pool/PoolEntry;
.super Ljava/lang/Object;
.source "PoolEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final d:J

.field private final e:J

.field private f:J

.field private g:J

.field private volatile h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TC;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string/jumbo v0, "Route"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v0, "Connection"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v0, "Time unit"

    invoke-static {p6, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->a:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->b:Ljava/lang/Object;

    .line 86
    iput-object p3, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->c:Ljava/lang/Object;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->d:J

    .line 88
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_35

    .line 89
    iget-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->d:J

    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->e:J

    .line 93
    :goto_30
    iget-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->e:J

    iput-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->g:J

    .line 94
    return-void

    .line 91
    :cond_35
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->e:J

    goto :goto_30
.end method


# virtual methods
.method public declared-synchronized a(JLjava/util/concurrent/TimeUnit;)V
    .registers 9

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "Time unit"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->f:J

    .line 147
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_24

    .line 148
    iget-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->f:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 152
    :goto_1a
    iget-wide v2, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->e:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->g:J
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_2a

    .line 153
    monitor-exit p0

    return-void

    .line 150
    :cond_24
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1a

    .line 144
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->h:Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public declared-synchronized a(J)Z
    .registers 6

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->g:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized h()J
    .registers 3

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->g:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    const-string/jumbo v1, "[id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string/jumbo v1, "][route:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v1, "][state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
