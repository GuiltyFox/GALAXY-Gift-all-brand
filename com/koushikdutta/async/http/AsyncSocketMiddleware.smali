.class public Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
.super Lcom/koushikdutta/async/http/SimpleMiddleware;
.source "AsyncSocketMiddleware.java"


# instance fields
.field e:Ljava/lang/String;

.field f:I

.field g:I

.field protected h:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field i:Z

.field j:Ljava/lang/String;

.field k:I

.field l:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field m:I


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
    .registers 4

    .prologue
    .line 50
    const-string/jumbo v0, "http"

    const/16 v1, 0x50

    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/koushikdutta/async/http/SimpleMiddleware;-><init>()V

    .line 26
    const v0, 0x493e0

    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->g:I

    .line 110
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->l:Ljava/util/Hashtable;

    .line 112
    const v0, 0x7fffffff

    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->m:I

    .line 29
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->h:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 30
    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->e:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->f:I

    .line 32
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    .registers 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    .line 262
    if-nez v0, :cond_14

    .line 263
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->l:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_14
    return-object v0
.end method

.method private a(Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 3

    .prologue
    .line 313
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 320
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 323
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$4;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$4;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 332
    return-void
.end method

.method private a(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .registers 7

    .prologue
    .line 288
    if-nez p1, :cond_3

    .line 309
    :goto_2
    return-void

    .line 290
    :cond_3
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v0

    .line 291
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Landroid/net/Uri;)I

    move-result v1

    .line 292
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 294
    new-instance v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 295
    monitor-enter p0

    .line 296
    :try_start_1d
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    move-result-object v2

    .line 297
    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/ArrayDeque;

    .line 298
    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/ArrayDeque;->e(Ljava/lang/Object;)V

    .line 299
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_30

    .line 300
    new-instance v3, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/ArrayDeque;Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_2

    .line 299
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .registers 7

    .prologue
    .line 335
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v0

    .line 336
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Landroid/net/Uri;)I

    move-result v1

    .line 337
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 338
    monitor-enter p0

    .line 339
    :try_start_15
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    .line 340
    if-nez v0, :cond_21

    .line 341
    monitor-exit p0

    .line 353
    :goto_20
    return-void

    .line 342
    :cond_21
    iget v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->a:I

    .line 343
    :cond_27
    :goto_27
    iget v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->a:I

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->m:I

    if-ge v1, v2, :cond_52

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->b:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v1

    if-lez v1, :cond_52

    .line 344
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->b:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    .line 345
    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->b:Lcom/koushikdutta/async/future/Cancellable;

    check-cast v2, Lcom/koushikdutta/async/future/SimpleCancellable;

    .line 346
    invoke-virtual {v2}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_27

    .line 348
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v1

    .line 349
    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/future/SimpleCancellable;->b(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleCancellable;

    goto :goto_27

    .line 352
    :catchall_4f
    move-exception v0

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_15 .. :try_end_51} :catchall_4f

    throw v0

    .line 351
    :cond_52
    :try_start_52
    invoke-direct {p0, v3}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->b(Ljava/lang/String;)V

    .line 352
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_4f

    goto :goto_20
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/AsyncSocket;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 270
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    .line 271
    if-nez v0, :cond_17

    .line 285
    :cond_a
    :goto_a
    return-void

    .line 278
    :cond_b
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->g()Ljava/lang/Object;

    .line 280
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 281
    invoke-interface {v2}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    .line 273
    :cond_17
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 274
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    .line 275
    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->a:Lcom/koushikdutta/async/AsyncSocket;

    .line 276
    iget-wide v4, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->b:J

    iget v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->g:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_b

    .line 283
    :cond_37
    iget v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->a:I

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->b:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 284
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method


# virtual methods
.method public a(Landroid/net/Uri;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 45
    :cond_13
    :goto_13
    return v0

    .line 41
    :cond_14
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    if-ne v1, v0, :cond_1d

    .line 42
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->f:I

    goto :goto_13

    .line 45
    :cond_1d
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    goto :goto_13
.end method

.method protected a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;
    .registers 6

    .prologue
    .line 56
    return-object p5
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v2

    .line 125
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Landroid/net/Uri;)I

    move-result v3

    .line 126
    const/4 v1, -0x1

    if-ne v3, v1, :cond_15

    .line 191
    :goto_14
    return-object v0

    .line 130
    :cond_15
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v1, "socket-owner"

    invoke-virtual {v0, v1, p0}, Lcom/koushikdutta/async/util/UntypedHashtable;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j()I

    move-result v1

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    move-result-object v1

    .line 134
    monitor-enter p0

    .line 135
    :try_start_32
    iget v0, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->a:I

    iget v4, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->m:I

    if-lt v0, v4, :cond_47

    .line 137
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 138
    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->b:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 139
    monitor-exit p0

    goto :goto_14

    .line 163
    :catchall_44
    move-exception v0

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_44

    throw v0

    .line 142
    :cond_47
    :try_start_47
    iget v0, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->a:I

    .line 144
    :cond_4d
    :goto_4d
    iget-object v0, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_93

    .line 145
    iget-object v0, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    .line 146
    iget-object v4, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->a:Lcom/koushikdutta/async/AsyncSocket;

    .line 147
    iget-wide v6, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->b:J

    iget v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->g:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_75

    .line 148
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 149
    invoke-interface {v4}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    goto :goto_4d

    .line 152
    :cond_75
    invoke-interface {v4}, Lcom/koushikdutta/async/AsyncSocket;->i()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 155
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "Reusing keep-alive socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c(Ljava/lang/String;)V

    .line 156
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v4}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 159
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 160
    invoke-virtual {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;->f()Z

    .line 161
    monitor-exit p0

    goto :goto_14

    .line 163
    :cond_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_47 .. :try_end_94} :catchall_44

    .line 165
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->i:Z

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->j:Ljava/lang/String;

    if-nez v0, :cond_a4

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11a

    .line 167
    :cond_a4
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "Connecting socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c(Ljava/lang/String;)V

    .line 170
    const/4 v4, 0x0

    .line 171
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c2

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->j:Ljava/lang/String;

    if-eqz v0, :cond_c2

    .line 172
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->j:Ljava/lang/String;

    iget v5, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->k:I

    invoke-virtual {v0, v1, v5}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Ljava/lang/String;I)V

    .line 173
    :cond_c2
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_113

    .line 174
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->j()I

    move-result v0

    .line 176
    const/4 v4, 0x1

    move v6, v0

    move-object v7, v1

    .line 182
    :goto_d9
    if-eqz v4, :cond_ff

    .line 183
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Using proxy: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 185
    :cond_ff
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->h:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->d()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v8

    iget-object v5, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object v0

    invoke-virtual {v8, v7, v6, v0}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    goto/16 :goto_14

    .line 179
    :cond_113
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    move v6, v3

    move-object v7, v0

    .line 180
    goto :goto_d9

    .line 190
    :cond_11a
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "Resolving domain and connecting to all available addresses"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->h:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->d()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/future/Future;->b(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/future/Cancellable;

    goto/16 :goto_14
.end method

.method a(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;
    .registers 8

    .prologue
    .line 86
    if-eqz p3, :cond_6b

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_1a
    if-eqz p3, :cond_34

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?proxy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_6b
    const-string/jumbo v0, ""

    goto :goto_1a
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V
    .registers 4

    .prologue
    .line 357
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v1, "socket-owner"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_c

    .line 382
    :goto_b
    return-void

    .line 361
    :cond_c
    :try_start_c
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->e:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 363
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->k:Ljava/lang/Exception;

    if-nez v0, :cond_1d

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->e:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->i()Z

    move-result v0

    if-nez v0, :cond_36

    .line 364
    :cond_1d
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "closing out socket (exception)"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 365
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->e:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 366
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->e:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->d()V
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_84

    .line 380
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    goto :goto_b

    .line 369
    :cond_36
    :try_start_36
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->c_()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->b_()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/HttpUtil;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->b:Lcom/koushikdutta/async/http/Protocol;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/HttpUtil;->a(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 371
    :cond_56
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "closing out socket (not keep alive)"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 372
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->e:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 373
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->e:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->d()V
    :try_end_69
    .catchall {:try_start_36 .. :try_end_69} :catchall_84

    .line 380
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    goto :goto_b

    .line 376
    :cond_6f
    :try_start_6f
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "Recycling keep-alive socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c(Ljava/lang/String;)V

    .line 377
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->e:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    :try_end_7e
    .catchall {:try_start_6f .. :try_end_7e} :catchall_84

    .line 380
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    goto :goto_b

    :catchall_84
    move-exception v0

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    throw v0
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->i:Z

    .line 66
    return-void
.end method
