.class final Lokio/RealBufferedSink;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lokio/BufferedSink;


# instance fields
.field public final a:Lokio/Buffer;

.field public final b:Lokio/Sink;

.field c:Z


# direct methods
.method constructor <init>(Lokio/Sink;)V
    .registers 4

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    .line 29
    if-nez p1, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_15
    iput-object p1, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lokio/Source;)J
    .registers 8

    .prologue
    .line 95
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_b
    const-wide/16 v0, 0x0

    .line 97
    :goto_d
    iget-object v2, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {p1, v2, v4, v5}, Lokio/Source;->a(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_20

    .line 98
    add-long/2addr v0, v2

    .line 99
    invoke-virtual {p0}, Lokio/RealBufferedSink;->v()Lokio/BufferedSink;

    goto :goto_d

    .line 101
    :cond_20
    return-wide v0
.end method

.method public a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->a()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public a_(Lokio/Buffer;J)V
    .registers 6

    .prologue
    .line 39
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->a_(Lokio/Buffer;J)V

    .line 41
    invoke-virtual {p0}, Lokio/RealBufferedSink;->v()Lokio/BufferedSink;

    .line 42
    return-void
.end method

.method public b(Ljava/lang/String;)Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 51
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->a(Ljava/lang/String;)Lokio/Buffer;

    .line 53
    invoke-virtual {p0}, Lokio/RealBufferedSink;->v()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public b(Lokio/ByteString;)Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 45
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->a(Lokio/ByteString;)Lokio/Buffer;

    .line 47
    invoke-virtual {p0}, Lokio/RealBufferedSink;->v()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public c()Lokio/Buffer;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    return-object v0
.end method

.method public c([B)Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 83
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->b([B)Lokio/Buffer;

    .line 85
    invoke-virtual {p0}, Lokio/RealBufferedSink;->v()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public c([BII)Lokio/BufferedSink;
    .registers 6

    .prologue
    .line 89
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->b([BII)Lokio/Buffer;

    .line 91
    invoke-virtual {p0}, Lokio/RealBufferedSink;->v()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 7

    .prologue
    .line 222
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_5

    .line 243
    :cond_4
    :goto_4
    return-void

    .line 226
    :cond_5
    const/4 v0, 0x0

    .line 228
    :try_start_6
    iget-object v1, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    iget-wide v2, v1, Lokio/Buffer;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 229
    iget-object v1, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    iget-object v2, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    iget-object v3, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    iget-wide v4, v3, Lokio/Buffer;->b:J

    invoke-interface {v1, v2, v4, v5}, Lokio/Sink;->a_(Lokio/Buffer;J)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1b} :catch_2e

    .line 236
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_20} :catch_29

    .line 240
    :cond_20
    :goto_20
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/RealBufferedSink;->c:Z

    .line 242
    if-eqz v0, :cond_4

    invoke-static {v0}, Lokio/Util;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 237
    :catch_29
    move-exception v1

    .line 238
    if-nez v0, :cond_20

    move-object v0, v1

    goto :goto_20

    .line 231
    :catch_2e
    move-exception v0

    goto :goto_1b
.end method

.method public e()Lokio/BufferedSink;
    .registers 5

    .prologue
    .line 176
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v0

    .line 178
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_20

    iget-object v2, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    iget-object v3, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lokio/Sink;->a_(Lokio/Buffer;J)V

    .line 179
    :cond_20
    return-object p0
.end method

.method public flush()V
    .registers 5

    .prologue
    .line 214
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    .line 216
    iget-object v0, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    iget-object v1, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    iget-object v2, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->b:J

    invoke-interface {v0, v1, v2, v3}, Lokio/Sink;->a_(Lokio/Buffer;J)V

    .line 218
    :cond_22
    iget-object v0, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->flush()V

    .line 219
    return-void
.end method

.method public g(I)Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 133
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->d(I)Lokio/Buffer;

    .line 135
    invoke-virtual {p0}, Lokio/RealBufferedSink;->v()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 121
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->c(I)Lokio/Buffer;

    .line 123
    invoke-virtual {p0}, Lokio/RealBufferedSink;->v()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 115
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 117
    invoke-virtual {p0}, Lokio/RealBufferedSink;->v()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public k(J)Lokio/BufferedSink;
    .registers 6

    .prologue
    .line 163
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->j(J)Lokio/Buffer;

    .line 165
    invoke-virtual {p0}, Lokio/RealBufferedSink;->v()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public l(J)Lokio/BufferedSink;
    .registers 6

    .prologue
    .line 157
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->i(J)Lokio/Buffer;

    .line 159
    invoke-virtual {p0}, Lokio/RealBufferedSink;->v()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lokio/BufferedSink;
    .registers 5

    .prologue
    .line 169
    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->g()J

    move-result-wide v0

    .line 171
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_20

    iget-object v2, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    iget-object v3, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lokio/Sink;->a_(Lokio/Buffer;J)V

    .line 172
    :cond_20
    return-object p0
.end method
