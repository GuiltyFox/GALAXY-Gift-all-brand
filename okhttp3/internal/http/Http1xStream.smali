.class public final Lokhttp3/internal/http/Http1xStream;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lokhttp3/internal/http/HttpStream;


# instance fields
.field private final a:Lokhttp3/internal/http/StreamAllocation;

.field private final b:Lokio/BufferedSource;

.field private final c:Lokio/BufferedSink;

.field private d:Lokhttp3/internal/http/HttpEngine;

.field private e:I


# direct methods
.method public constructor <init>(Lokhttp3/internal/http/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .registers 5

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    .line 78
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream;->a:Lokhttp3/internal/http/StreamAllocation;

    .line 79
    iput-object p2, p0, Lokhttp3/internal/http/Http1xStream;->b:Lokio/BufferedSource;

    .line 80
    iput-object p3, p0, Lokhttp3/internal/http/Http1xStream;->c:Lokio/BufferedSink;

    .line 81
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/http/Http1xStream;I)I
    .registers 2

    .prologue
    .line 61
    iput p1, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    return p1
.end method

.method static synthetic a(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSink;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->c:Lokio/BufferedSink;

    return-object v0
.end method

.method static synthetic a(Lokhttp3/internal/http/Http1xStream;Lokio/ForwardingTimeout;)V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lokhttp3/internal/http/Http1xStream;->a(Lokio/ForwardingTimeout;)V

    return-void
.end method

.method private a(Lokio/ForwardingTimeout;)V
    .registers 4

    .prologue
    .line 259
    invoke-virtual {p1}, Lokio/ForwardingTimeout;->a()Lokio/Timeout;

    move-result-object v0

    .line 260
    sget-object v1, Lokio/Timeout;->b:Lokio/Timeout;

    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->a(Lokio/Timeout;)Lokio/ForwardingTimeout;

    .line 261
    invoke-virtual {v0}, Lokio/Timeout;->f()Lokio/Timeout;

    .line 262
    invoke-virtual {v0}, Lokio/Timeout;->m_()Lokio/Timeout;

    .line 263
    return-void
.end method

.method static synthetic b(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->b:Lokio/BufferedSource;

    return-object v0
.end method

.method private b(Lokhttp3/Response;)Lokio/Source;
    .registers 6

    .prologue
    .line 134
    invoke-static {p1}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 135
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http/Http1xStream;->b(J)Lokio/Source;

    move-result-object v0

    .line 150
    :goto_c
    return-object v0

    .line 138
    :cond_d
    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/Response;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 139
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->d:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/internal/http/HttpEngine;)Lokio/Source;

    move-result-object v0

    goto :goto_c

    .line 142
    :cond_24
    invoke-static {p1}, Lokhttp3/internal/http/OkHeaders;->a(Lokhttp3/Response;)J

    move-result-wide v0

    .line 143
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_33

    .line 144
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http/Http1xStream;->b(J)Lokio/Source;

    move-result-object v0

    goto :goto_c

    .line 150
    :cond_33
    invoke-virtual {p0}, Lokhttp3/internal/http/Http1xStream;->f()Lokio/Source;

    move-result-object v0

    goto :goto_c
.end method

.method static synthetic c(Lokhttp3/internal/http/Http1xStream;)I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    return v0
.end method

.method static synthetic d(Lokhttp3/internal/http/Http1xStream;)Lokhttp3/internal/http/StreamAllocation;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->a:Lokhttp3/internal/http/StreamAllocation;

    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/Response$Builder;
    .registers 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lokhttp3/internal/http/Http1xStream;->c()Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .registers 5

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/Response;)Lokio/Source;

    move-result-object v0

    .line 130
    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v2

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    return-object v1
.end method

.method public a(J)Lokio/Sink;
    .registers 6

    .prologue
    .line 222
    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_21
    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    .line 224
    new-instance v0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;-><init>(Lokhttp3/internal/http/Http1xStream;JLokhttp3/internal/http/Http1xStream$1;)V

    return-object v0
.end method

.method public a(Lokhttp3/Request;J)Lokio/Sink;
    .registers 6

    .prologue
    .line 88
    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 90
    invoke-virtual {p0}, Lokhttp3/internal/http/Http1xStream;->e()Lokio/Sink;

    move-result-object v0

    .line 95
    :goto_14
    return-object v0

    .line 93
    :cond_15
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_20

    .line 95
    invoke-virtual {p0, p2, p3}, Lokhttp3/internal/http/Http1xStream;->a(J)Lokio/Sink;

    move-result-object v0

    goto :goto_14

    .line 98
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lokhttp3/Headers;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 164
    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_20
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->c:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p1}, Lokhttp3/Headers;->a()I

    move-result v1

    :goto_31
    if-ge v0, v1, :cond_55

    .line 167
    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream;->c:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string/jumbo v3, ": "

    .line 168
    invoke-interface {v2, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 169
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    .line 170
    invoke-interface {v2, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 172
    :cond_55
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->c:Lokio/BufferedSink;

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 173
    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    .line 174
    return-void
.end method

.method public a(Lokhttp3/Request;)V
    .registers 4

    .prologue
    .line 118
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->d:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v0}, Lokhttp3/internal/http/HttpEngine;->b()V

    .line 119
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->d:Lokhttp3/internal/http/HttpEngine;

    .line 120
    invoke-virtual {v0}, Lokhttp3/internal/http/HttpEngine;->d()Lokhttp3/Connection;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Connection;->a()Lokhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Route;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 119
    invoke-static {p1, v0}, Lokhttp3/internal/http/RequestLine;->a(Lokhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lokhttp3/Request;->c()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http/Http1xStream;->a(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public a(Lokhttp3/internal/http/HttpEngine;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream;->d:Lokhttp3/internal/http/HttpEngine;

    .line 85
    return-void
.end method

.method public a(Lokhttp3/internal/http/RetryableSink;)V
    .registers 5

    .prologue
    .line 228
    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_21
    const/4 v0, 0x3

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    .line 230
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->c:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RetryableSink;->a(Lokio/Sink;)V

    .line 231
    return-void
.end method

.method public b(J)Lokio/Source;
    .registers 6

    .prologue
    .line 234
    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_21
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    .line 236
    new-instance v0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;-><init>(Lokhttp3/internal/http/Http1xStream;J)V

    return-object v0
.end method

.method public b(Lokhttp3/internal/http/HttpEngine;)Lokio/Source;
    .registers 5

    .prologue
    .line 240
    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_21
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    .line 242
    new-instance v0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/HttpEngine;)V

    return-object v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->c:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 160
    return-void
.end method

.method public c()Lokhttp3/Response$Builder;
    .registers 5

    .prologue
    .line 178
    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_26
    :try_start_26
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/StatusLine;->a(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v0

    .line 186
    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    iget-object v2, v0, Lokhttp3/internal/http/StatusLine;->a:Lokhttp3/Protocol;

    .line 187
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->a(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget v2, v0, Lokhttp3/internal/http/StatusLine;->b:I

    .line 188
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->a(I)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, v0, Lokhttp3/internal/http/StatusLine;->c:Ljava/lang/String;

    .line 189
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->a(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Lokhttp3/internal/http/Http1xStream;->d()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->a(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 192
    iget v0, v0, Lokhttp3/internal/http/StatusLine;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_26

    .line 193
    const/4 v0, 0x4

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I
    :try_end_58
    .catch Ljava/io/EOFException; {:try_start_26 .. :try_end_58} :catch_59

    .line 194
    return-object v1

    .line 197
    :catch_59
    move-exception v0

    .line 199
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/http/Http1xStream;->a:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 201
    throw v1
.end method

.method public d()Lokhttp3/Headers;
    .registers 4

    .prologue
    .line 207
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 209
    :goto_5
    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    .line 210
    sget-object v2, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/Internal;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_5

    .line 212
    :cond_17
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->a()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public e()Lokio/Sink;
    .registers 4

    .prologue
    .line 216
    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_21
    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    .line 218
    new-instance v0, Lokhttp3/internal/http/Http1xStream$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http/Http1xStream$ChunkedSink;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    return-object v0
.end method

.method public f()Lokio/Source;
    .registers 4

    .prologue
    .line 246
    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_21
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->a:Lokhttp3/internal/http/StreamAllocation;

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_2e
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->e:I

    .line 249
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->a:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/http/StreamAllocation;->d()V

    .line 250
    new-instance v0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    return-object v0
.end method
