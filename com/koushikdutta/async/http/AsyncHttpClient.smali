.class public Lcom/koushikdutta/async/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# static fields
.field static final synthetic f:Z


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

.field c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field d:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

.field e:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->f:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .registers 4

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    .line 73
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 74
    new-instance v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->b:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 75
    new-instance v0, Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/HttpTransportMiddleware;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->d:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 76
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->b:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    new-instance v1, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;)V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J
    .registers 3

    .prologue
    .line 50
    invoke-static {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->d(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .registers 8

    .prologue
    .line 157
    sget-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->f:Z

    if-nez v0, :cond_c

    if-nez p5, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 158
    :cond_c
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Object;)V

    .line 160
    if-eqz p2, :cond_42

    .line 161
    const-string/jumbo v0, "Connection error"

    invoke-virtual {p4, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 162
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->a(Ljava/lang/Exception;)Z

    move-result v0

    .line 168
    :goto_1f
    if-eqz v0, :cond_4d

    .line 169
    invoke-interface {p5, p2, p3}, Lcom/koushikdutta/async/http/callback/HttpConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    .line 170
    sget-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->f:Z

    if-nez v0, :cond_5a

    if-nez p2, :cond_5a

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->c()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->e_()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v0

    if-nez v0, :cond_5a

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->l()Z

    move-result v0

    if-nez v0, :cond_5a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_42
    const-string/jumbo v0, "Connection successful"

    invoke-virtual {p4, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->b(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1f

    .line 174
    :cond_4d
    if-eqz p3, :cond_5a

    .line 176
    new-instance v0, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-virtual {p3, v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 177
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->d()V

    .line 179
    :cond_5a
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .registers 6

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .registers 5

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->b(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V
    .registers 6

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V

    return-void
.end method

.method private a(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .registers 12

    .prologue
    .line 182
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->b(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 193
    :goto_b
    return-void

    .line 186
    :cond_c
    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    goto :goto_b
.end method

.method private a(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V
    .registers 14

    .prologue
    .line 321
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;I)V

    .line 462
    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpClient$5;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$5;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object v1, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 471
    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpClient$6;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$6;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object v1, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->h:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 480
    iput-object v0, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 481
    iget-object v1, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->e:Lcom/koushikdutta/async/AsyncSocket;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->a(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 483
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 484
    :try_start_24
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 485
    invoke-interface {v0, p5}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 488
    :cond_3c
    monitor-exit v1

    .line 489
    return-void

    .line 488
    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_24 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->b(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .registers 5

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .registers 1

    .prologue
    .line 50
    invoke-static {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->c(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method

.method private b(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .registers 15

    .prologue
    .line 208
    sget-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->f:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->b()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 209
    :cond_12
    const/16 v0, 0xf

    if-le p2, v0, :cond_27

    .line 210
    new-instance v2, Lcom/koushikdutta/async/http/RedirectLimitExceededException;

    const-string/jumbo v0, "too many redirects"

    invoke-direct {v2, v0}, Lcom/koushikdutta/async/http/RedirectLimitExceededException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 313
    :goto_26
    return-void

    .line 213
    :cond_27
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    .line 214
    new-instance v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;-><init>()V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g:J

    .line 216
    iput-object p1, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 218
    const-string/jumbo v0, "Executing request."

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 221
    :try_start_40
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 222
    invoke-interface {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;)V

    goto :goto_46

    .line 224
    :catchall_56
    move-exception v0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_56

    throw v0

    :cond_59
    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_56

    .line 236
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h()I

    move-result v0

    if-lez v0, :cond_79

    .line 238
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$2;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient$2;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    iput-object v0, p3, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->c:Ljava/lang/Runnable;

    .line 250
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p3, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->c:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->d(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p3, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->b:Ljava/lang/Object;

    .line 254
    :cond_79
    new-instance v3, Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, v2

    move v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;I)V

    iput-object v3, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 292
    invoke-static {p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->c(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    .line 295
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 296
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ae

    .line 297
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v3

    invoke-interface {v3}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 301
    :cond_ae
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 302
    :try_start_b1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 303
    invoke-interface {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_b7

    .line 305
    iput-object v0, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->b:Lcom/koushikdutta/async/future/Cancellable;

    .line 306
    invoke-virtual {p3, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->c(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 307
    monitor-exit v1

    goto/16 :goto_26

    .line 311
    :catchall_d1
    move-exception v0

    monitor-exit v1
    :try_end_d3
    .catchall {:try_start_b1 .. :try_end_d3} :catchall_d1

    throw v0

    .line 310
    :cond_d4
    :try_start_d4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid uri="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " middlewares="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 311
    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_d4 .. :try_end_ff} :catchall_d1

    .line 312
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    goto/16 :goto_26
.end method

.method private static b(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 204
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 205
    :cond_15
    return-void
.end method

.method private static c(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 113
    :cond_4
    :goto_4
    return-void

    .line 87
    :cond_5
    :try_start_5
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_5e

    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 95
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 96
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_4

    .line 98
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_4

    .line 100
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 102
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_4e

    .line 103
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v1

    .line 112
    :goto_46
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Ljava/lang/String;I)V

    goto :goto_4

    .line 106
    :cond_4e
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_59

    .line 108
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 110
    :cond_59
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 89
    :catch_5e
    move-exception v0

    goto :goto_4
.end method

.method private static d(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J
    .registers 3

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/callback/HttpConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$1;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 126
    return-object v1
.end method

.method public a()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method public b()Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    return-object v0
.end method

.method public c()Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->b:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    return-object v0
.end method

.method public d()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method
