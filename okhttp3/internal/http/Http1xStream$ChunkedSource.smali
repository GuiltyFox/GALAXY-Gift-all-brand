.class Lokhttp3/internal/http/Http1xStream$ChunkedSource;
.super Lokhttp3/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# instance fields
.field final synthetic d:Lokhttp3/internal/http/Http1xStream;

.field private e:J

.field private f:Z

.field private final g:Lokhttp3/internal/http/HttpEngine;


# direct methods
.method constructor <init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/HttpEngine;)V
    .registers 5

    .prologue
    .line 412
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->d:Lokhttp3/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/Http1xStream$AbstractSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    .line 408
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->e:J

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->f:Z

    .line 413
    iput-object p2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->g:Lokhttp3/internal/http/HttpEngine;

    .line 414
    return-void
.end method

.method private b()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 437
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 438
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->p()Ljava/lang/String;

    .line 441
    :cond_13
    :try_start_13
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->e:J

    .line 442
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->e:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_42

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_74

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 444
    :cond_42
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_69} :catch_69

    .line 447
    :catch_69
    move-exception v0

    .line 448
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_74
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_8c

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->f:Z

    .line 452
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->g:Lokhttp3/internal/http/HttpEngine;

    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-virtual {v1}, Lokhttp3/internal/http/Http1xStream;->d()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/Headers;)V

    .line 453
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->a(Z)V

    .line 455
    :cond_8c
    return-void
.end method


# virtual methods
.method public a(Lokio/Buffer;J)J
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    .line 417
    cmp-long v2, p2, v4

    if-gez v2, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_22
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->b:Z

    if-eqz v2, :cond_2f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_2f
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->f:Z

    if-nez v2, :cond_34

    .line 432
    :cond_33
    :goto_33
    return-wide v0

    .line 421
    :cond_34
    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_40

    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->e:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_47

    .line 422
    :cond_40
    invoke-direct {p0}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->b()V

    .line 423
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->f:Z

    if-eqz v2, :cond_33

    .line 426
    :cond_47
    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v2}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v2

    iget-wide v4, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->e:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lokio/BufferedSource;->a(Lokio/Buffer;J)J

    move-result-wide v2

    .line 427
    cmp-long v0, v2, v0

    if-nez v0, :cond_68

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->a(Z)V

    .line 429
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_68
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->e:J

    move-wide v0, v2

    .line 432
    goto :goto_33
.end method

.method public close()V
    .registers 3

    .prologue
    .line 458
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->b:Z

    if-eqz v0, :cond_5

    .line 463
    :goto_4
    return-void

    .line 459
    :cond_5
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->f:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->a(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->a(Z)V

    .line 462
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->b:Z

    goto :goto_4
.end method
