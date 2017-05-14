.class public Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;
.super Ljava/lang/Object;
.source "AsyncHttpServerResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;


# static fields
.field static final synthetic k:Z


# instance fields
.field private a:Lcom/koushikdutta/async/http/Headers;

.field b:Lcom/koushikdutta/async/AsyncSocket;

.field c:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

.field d:Z

.field e:Lcom/koushikdutta/async/DataSink;

.field f:Lcom/koushikdutta/async/callback/WritableCallback;

.field g:Z

.field h:Z

.field i:I

.field j:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->k:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V
    .registers 6

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->l:J

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d:Z

    .line 335
    const/16 v0, 0xc8

    iput v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->i:I

    .line 46
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    .line 47
    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    .line 48
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->b:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->g()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/HttpUtil;->a(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 49
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 50
    :cond_30
    return-void
.end method


# virtual methods
.method public a(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;
    .registers 2

    .prologue
    .line 338
    iput p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->i:I

    .line 339
    return-object p0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->g:Z

    if-eqz v0, :cond_5

    .line 187
    :cond_4
    :goto_4
    return-void

    .line 160
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->g:Z

    .line 161
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_4

    .line 166
    :cond_10
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d:Z

    if-nez v0, :cond_1c

    .line 169
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    :cond_1c
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    instance-of v0, v0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    if-eqz v0, :cond_3a

    .line 172
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    check-cast v0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->a(I)V

    .line 173
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 174
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b()V

    goto :goto_4

    .line 176
    :cond_3a
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d:Z

    if-nez v0, :cond_5e

    .line 177
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 178
    const-string/jumbo v0, "text/html"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 180
    :cond_57
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d()V

    .line 181
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b()V

    goto :goto_4

    .line 185
    :cond_5e
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b()V

    goto :goto_4
.end method

.method public a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 3

    .prologue
    .line 55
    sget-boolean v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->k:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->h:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_e
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d:Z

    if-nez v0, :cond_15

    .line 58
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c()V

    .line 61
    :cond_15
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-nez v0, :cond_1c

    .line 70
    :cond_1b
    :goto_1b
    return-void

    .line 65
    :cond_1c
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_1b

    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_1b
.end method

.method public a(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_a

    .line 370
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 373
    :goto_9
    return-void

    .line 372
    :cond_a
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j:Lcom/koushikdutta/async/callback/CompletedCallback;

    goto :goto_9
.end method

.method public a(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_a

    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 146
    :goto_9
    return-void

    .line 145
    :cond_a
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/callback/WritableCallback;

    goto :goto_9
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a()V

    .line 357
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 202
    :try_start_0
    sget-boolean v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->k:Z

    if-nez v0, :cond_1d

    iget-wide v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_12} :catch_12

    .line 215
    :catch_12
    move-exception v0

    .line 216
    sget-boolean v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->k:Z

    if-nez v0, :cond_49

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 203
    :cond_1d
    :try_start_1d
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 204
    array-length v1, v0

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->l:J

    .line 205
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string/jumbo v2, "Content-Length"

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 206
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 208
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;)V

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V
    :try_end_49
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_49} :catch_12

    .line 218
    :cond_49
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->h:Z

    .line 223
    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 226
    return-void
.end method

.method c()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d:Z

    if-eqz v0, :cond_9

    .line 137
    :goto_8
    return-void

    .line 78
    :cond_9
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d:Z

    .line 81
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string/jumbo v3, "Transfer-Encoding"

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 83
    iget-object v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string/jumbo v4, "Transfer-Encoding"

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/Headers;->c(Ljava/lang/String;)Ljava/util/List;

    .line 84
    :cond_25
    const-string/jumbo v3, "Chunked"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    if-nez v0, :cond_a6

    :cond_30
    const-string/jumbo v0, "close"

    iget-object v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string/jumbo v4, "Connection"

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a6

    move v0, v1

    .line 86
    :goto_43
    iget-wide v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->l:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_62

    .line 87
    iget-object v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string/jumbo v4, "Content-Length"

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 89
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->l:J

    .line 91
    :cond_62
    iget-wide v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->l:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_a8

    if-eqz v0, :cond_a8

    .line 92
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string/jumbo v3, "Transfer-Encoding"

    const-string/jumbo v4, "Chunked"

    invoke-virtual {v0, v3, v4}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    move v0, v1

    .line 99
    :goto_76
    const-string/jumbo v3, "HTTP/1.1 %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->i:I

    invoke-static {v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/http/Headers;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v3, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;

    invoke-direct {v3, p0, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Z)V

    invoke-static {v2, v1, v3}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    goto/16 :goto_8

    :cond_a6
    move v0, v2

    .line 84
    goto :goto_43

    :cond_a8
    move v0, v2

    .line 96
    goto :goto_76
.end method

.method public d()V
    .registers 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c()V

    .line 192
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->i:I

    return v0
.end method

.method public f()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/koushikdutta/async/callback/WritableCallback;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_b

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->g()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    .line 152
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/callback/WritableCallback;

    goto :goto_a
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_b

    .line 362
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->i()Z

    move-result v0

    .line 363
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->i()Z

    move-result v0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 389
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_9

    .line 390
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    :goto_8
    return-object v0

    .line 391
    :cond_9
    const-string/jumbo v0, "HTTP/1.1 %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->i:I

    invoke-static {v3}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/Headers;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
