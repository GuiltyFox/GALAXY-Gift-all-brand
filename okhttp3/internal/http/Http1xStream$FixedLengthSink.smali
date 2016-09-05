.class final Lokhttp3/internal/http/Http1xStream$FixedLengthSink;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lokio/Sink;


# instance fields
.field final synthetic a:Lokhttp3/internal/http/Http1xStream;

.field private final b:Lokio/ForwardingTimeout;

.field private c:Z

.field private d:J


# direct methods
.method private constructor <init>(Lokhttp3/internal/http/Http1xStream;J)V
    .registers 6

    .prologue
    .line 271
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->a:Lokhttp3/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance v0, Lokio/ForwardingTimeout;

    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->a:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v1}, Lokhttp3/internal/http/Http1xStream;->a(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1}, Lokio/BufferedSink;->a()Lokio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->b:Lokio/ForwardingTimeout;

    .line 272
    iput-wide p2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->d:J

    .line 273
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/http/Http1xStream;JLokhttp3/internal/http/Http1xStream$1;)V
    .registers 5

    .prologue
    .line 266
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;-><init>(Lokhttp3/internal/http/Http1xStream;J)V

    return-void
.end method


# virtual methods
.method public a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->b:Lokio/ForwardingTimeout;

    return-object v0
.end method

.method public a_(Lokio/Buffer;J)V
    .registers 10

    .prologue
    .line 280
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_d
    invoke-virtual {p1}, Lokio/Buffer;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/Util;->a(JJJ)V

    .line 282
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->d:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_44

    .line 283
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_44
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->a:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->a(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/BufferedSink;->a_(Lokio/Buffer;J)V

    .line 287
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->d:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->d:J

    .line 288
    return-void
.end method

.method public close()V
    .registers 5

    .prologue
    .line 296
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->c:Z

    if-eqz v0, :cond_5

    .line 301
    :goto_4
    return-void

    .line 297
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->c:Z

    .line 298
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_19
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->a:Lokhttp3/internal/http/Http1xStream;

    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->b:Lokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lokhttp3/internal/http/Http1xStream;->a(Lokhttp3/internal/http/Http1xStream;Lokio/ForwardingTimeout;)V

    .line 300
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->a:Lokhttp3/internal/http/Http1xStream;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lokhttp3/internal/http/Http1xStream;->a(Lokhttp3/internal/http/Http1xStream;I)I

    goto :goto_4
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 291
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->c:Z

    if-eqz v0, :cond_5

    .line 293
    :goto_4
    return-void

    .line 292
    :cond_5
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->a:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->a(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    goto :goto_4
.end method
