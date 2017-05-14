.class public Lcom/koushikdutta/async/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"


# static fields
.field static final synthetic h:Z


# instance fields
.field a:Landroid/net/Uri;

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/lang/String;

.field f:I

.field g:J

.field private i:Ljava/lang/String;

.field private j:Lcom/koushikdutta/async/http/Headers;

.field private k:Z

.field private l:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)V
    .registers 5

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Lcom/koushikdutta/async/http/Headers;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:Z

    .line 134
    const/16 v0, 0x7530

    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b:I

    .line 283
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d:I

    .line 90
    sget-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h:Z

    if-nez v0, :cond_20

    if-nez p1, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_20
    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a:Landroid/net/Uri;

    .line 93
    if-nez p3, :cond_35

    .line 94
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Lcom/koushikdutta/async/http/Headers;

    .line 97
    :goto_2d
    if-nez p3, :cond_34

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Lcom/koushikdutta/async/http/Headers;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Lcom/koushikdutta/async/http/Headers;Landroid/net/Uri;)V

    .line 99
    :cond_34
    return-void

    .line 96
    :cond_35
    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Lcom/koushikdutta/async/http/Headers;

    goto :goto_2d
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/koushikdutta/async/http/Headers;Landroid/net/Uri;)V
    .registers 5

    .prologue
    .line 76
    if-eqz p1, :cond_31

    .line 77
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_29
    if-eqz v0, :cond_31

    .line 81
    const-string/jumbo v1, "Host"

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 83
    :cond_31
    const-string/jumbo v0, "User-Agent"

    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 84
    const-string/jumbo v0, "Accept-Encoding"

    const-string/jumbo v1, "gzip, deflate"

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 85
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "keep-alive"

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 86
    const-string/jumbo v0, "Accept"

    const-string/jumbo v1, "*/*"

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 87
    return-void
.end method

.method protected static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string/jumbo v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_a

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 325
    iget-wide v2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_f

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g:J

    sub-long/2addr v0, v2

    .line 329
    :cond_f
    const-string/jumbo v2, "(%d ms) %s: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .registers 2

    .prologue
    .line 140
    iput p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b:I

    .line 141
    return-object p0
.end method

.method public a(Z)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .registers 2

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:Z

    .line 118
    return-object p0
.end method

.method public a()Lorg/apache/http/RequestLine;
    .registers 2

    .prologue
    .line 22
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/AsyncSSLException;)V
    .registers 2

    .prologue
    .line 131
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->l:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 124
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 337
    :cond_4
    :goto_4
    return-void

    .line 334
    :cond_5
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->f:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_4

    .line 336
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public a(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 285
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c:Ljava/lang/String;

    .line 286
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d:I

    .line 287
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    .prologue
    .line 375
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 381
    :cond_4
    :goto_4
    return-void

    .line 377
    :cond_5
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->f:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_4

    .line 379
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 344
    :cond_4
    :goto_4
    return-void

    .line 341
    :cond_5
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->f:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_4

    .line 343
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public b(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 310
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Ljava/lang/String;

    .line 311
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->f:I

    .line 312
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 358
    :cond_4
    :goto_4
    return-void

    .line 355
    :cond_5
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->f:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    .line 357
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public d()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public e()Lcom/koushikdutta/async/http/Headers;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->k:Z

    return v0
.end method

.method public g()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->l:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 299
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_9

    .line 305
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j:Lcom/koushikdutta/async/http/Headers;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
