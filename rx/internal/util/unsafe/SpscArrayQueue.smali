.class public final Lrx/internal/util/unsafe/SpscArrayQueue;
.super Lrx/internal/util/unsafe/SpscArrayQueueL3Pad;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscArrayQueueL3Pad",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpscArrayQueueL3Pad;-><init>(I)V

    .line 94
    return-void
.end method

.method private a()J
    .registers 5

    .prologue
    .line 175
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscArrayQueue;->f:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private b()J
    .registers 5

    .prologue
    .line 179
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscArrayQueue;->e:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private d(J)V
    .registers 10

    .prologue
    .line 167
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscArrayQueue;->f:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 168
    return-void
.end method

.method private e(J)V
    .registers 10

    .prologue
    .line 171
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscArrayQueue;->e:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 172
    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 103
    if-nez p1, :cond_b

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null elements not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_b
    iget-object v0, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->c:[Ljava/lang/Object;

    .line 108
    iget-wide v2, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->producerIndex:J

    .line 109
    invoke-virtual {p0, v2, v3}, Lrx/internal/util/unsafe/SpscArrayQueue;->a(J)J

    move-result-wide v4

    .line 110
    invoke-virtual {p0, v0, v4, v5}, Lrx/internal/util/unsafe/SpscArrayQueue;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 111
    const/4 v0, 0x0

    .line 115
    :goto_1a
    return v0

    .line 113
    :cond_1b
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-direct {p0, v2, v3}, Lrx/internal/util/unsafe/SpscArrayQueue;->d(J)V

    .line 114
    invoke-virtual {p0, v0, v4, v5, p1}, Lrx/internal/util/unsafe/SpscArrayQueue;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 115
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 145
    iget-wide v0, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->consumerIndex:J

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;->a(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;->c(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-wide v2, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->consumerIndex:J

    .line 126
    invoke-virtual {p0, v2, v3}, Lrx/internal/util/unsafe/SpscArrayQueue;->a(J)J

    move-result-wide v4

    .line 128
    iget-object v6, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->c:[Ljava/lang/Object;

    .line 129
    invoke-virtual {p0, v6, v4, v5}, Lrx/internal/util/unsafe/SpscArrayQueue;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 130
    if-nez v1, :cond_10

    .line 135
    :goto_f
    return-object v0

    .line 133
    :cond_10
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    invoke-direct {p0, v2, v3}, Lrx/internal/util/unsafe/SpscArrayQueue;->e(J)V

    .line 134
    invoke-virtual {p0, v6, v4, v5, v0}, Lrx/internal/util/unsafe/SpscArrayQueue;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v1

    .line 135
    goto :goto_f
.end method

.method public size()I
    .registers 7

    .prologue
    .line 155
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->b()J

    move-result-wide v0

    .line 158
    :goto_4
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->a()J

    move-result-wide v4

    .line 159
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->b()J

    move-result-wide v2

    .line 160
    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 161
    sub-long v0, v4, v2

    long-to-int v0, v0

    return v0

    :cond_14
    move-wide v0, v2

    .line 163
    goto :goto_4
.end method
