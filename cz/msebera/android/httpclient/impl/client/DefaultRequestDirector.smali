.class public Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/RequestDirector;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected final b:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

.field protected final c:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

.field protected final d:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field protected final e:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field protected final f:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field protected final g:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field protected final h:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

.field protected final i:Lcz/msebera/android/httpclient/client/RedirectHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final j:Lcz/msebera/android/httpclient/client/RedirectStrategy;

.field protected final k:Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final l:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field protected final m:Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final n:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field protected final o:Lcz/msebera/android/httpclient/client/UserTokenHandler;

.field protected final p:Lcz/msebera/android/httpclient/params/HttpParams;

.field protected q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

.field protected final r:Lcz/msebera/android/httpclient/auth/AuthState;

.field protected final s:Lcz/msebera/android/httpclient/auth/AuthState;

.field private final t:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

.field private u:I

.field private v:I

.field private final w:I

.field private x:Lcz/msebera/android/httpclient/HttpHost;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 18

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    const-string/jumbo v1, "Log"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v1, "Request executor"

    invoke-static {p2, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    const-string/jumbo v1, "Client connection manager"

    invoke-static {p3, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    const-string/jumbo v1, "Connection reuse strategy"

    invoke-static {p4, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const-string/jumbo v1, "Connection keep alive strategy"

    invoke-static {p5, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v1, "Route planner"

    invoke-static {p6, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v1, "HTTP protocol processor"

    invoke-static {p7, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v1, "HTTP request retry handler"

    invoke-static {p8, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v1, "Redirect strategy"

    invoke-static {p9, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    const-string/jumbo v1, "Target authentication strategy"

    invoke-static {p10, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    const-string/jumbo v1, "Proxy authentication strategy"

    invoke-static {p11, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    const-string/jumbo v1, "User token handler"

    move-object/from16 v0, p12

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    const-string/jumbo v1, "HTTP parameters"

    move-object/from16 v0, p13

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 285
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    invoke-direct {v1, p1}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->t:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    .line 286
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->f:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 287
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->b:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 288
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->d:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 289
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->e:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 290
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->c:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 291
    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->g:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 292
    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->h:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    .line 293
    iput-object p9, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->j:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 294
    iput-object p10, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->l:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 295
    iput-object p11, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->n:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 296
    move-object/from16 v0, p12

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->o:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 297
    move-object/from16 v0, p13

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 299
    instance-of v1, p9, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;

    if-eqz v1, :cond_c3

    .line 300
    check-cast p9, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;

    invoke-virtual {p9}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->a()Lcz/msebera/android/httpclient/client/RedirectHandler;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->i:Lcz/msebera/android/httpclient/client/RedirectHandler;

    .line 304
    :goto_86
    instance-of v1, p10, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    if-eqz v1, :cond_c7

    .line 305
    check-cast p10, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {p10}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->a()Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->k:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    .line 309
    :goto_92
    instance-of v1, p11, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    if-eqz v1, :cond_cb

    .line 310
    check-cast p11, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {p11}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->a()Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->m:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    .line 315
    :goto_9e
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 317
    const/4 v1, 0x0

    iput v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->u:I

    .line 318
    const/4 v1, 0x0

    iput v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->v:I

    .line 319
    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->r:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 320
    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->s:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 321
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string/jumbo v2, "http.protocol.max-redirects"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->w:I

    .line 322
    return-void

    .line 302
    :cond_c3
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->i:Lcz/msebera/android/httpclient/client/RedirectHandler;

    goto :goto_86

    .line 307
    :cond_c7
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->k:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    goto :goto_92

    .line 312
    :cond_cb
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->m:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    goto :goto_9e
.end method

.method private a(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .registers 3

    .prologue
    .line 327
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_c

    .line 328
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;

    check-cast p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    .line 331
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpRequest;)V

    goto :goto_b
.end method

.method private a(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 10

    .prologue
    .line 601
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->b()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v2

    .line 602
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->a()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v3

    .line 604
    const/4 v0, 0x0

    .line 606
    :cond_9
    :goto_9
    const-string/jumbo v1, "http.request"

    invoke-interface {p2, v1, v3}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 608
    add-int/lit8 v0, v0, 0x1

    .line 610
    :try_start_11
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->c()Z

    move-result v1

    if-nez v1, :cond_24

    .line 611
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v1, v2, p2, v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 615
    :goto_20
    invoke-virtual {p0, v2, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 639
    return-void

    .line 613
    :cond_24
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v4

    invoke-interface {v1, v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->b(I)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2f} :catch_30

    goto :goto_20

    .line 617
    :catch_30
    move-exception v1

    .line 619
    :try_start_31
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_ae

    .line 622
    :goto_36
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->h:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    invoke-interface {v4, v1, v0, p2}, Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 623
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->d()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 624
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "I/O exception ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") caught when connecting to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 628
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 624
    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->d(Ljava/lang/Object;)V

    .line 629
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v4

    if-eqz v4, :cond_92

    .line 630
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 632
    :cond_92
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Retrying connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->d(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 635
    :cond_ad
    throw v1

    .line 620
    :catch_ae
    move-exception v4

    goto :goto_36
.end method

.method private b(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 646
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->a()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v2

    .line 647
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->b()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v3

    move-object v0, v1

    .line 653
    :cond_a
    :goto_a
    iget v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->u:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->u:I

    .line 655
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->e()V

    .line 656
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->a()Z

    move-result v4

    if-nez v4, :cond_35

    .line 657
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "Cannot retry non-repeatable request"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 658
    if-eqz v0, :cond_2c

    .line 659
    new-instance v1, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;

    const-string/jumbo v2, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 663
    :cond_2c
    new-instance v0, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;

    const-string/jumbo v1, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->c()Z

    move-result v0

    if-nez v0, :cond_52

    .line 672
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->e()Z

    move-result v0

    if-nez v0, :cond_85

    .line 673
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v4, "Reopening the direct connection."

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v0, v3, p2, v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 682
    :cond_52
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 683
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attempt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->u:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to execute request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 685
    :cond_7c
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->f:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-virtual {v0, v2, v4, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->a(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v1

    .line 721
    :goto_84
    return-object v1

    .line 677
    :cond_85
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v4, "Proxied connection. Need to start over."

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_8d} :catch_8e

    goto :goto_84

    .line 688
    :catch_8e
    move-exception v0

    .line 689
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v5, "Closing the connection."

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 691
    :try_start_97
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9c} :catch_14d

    .line 694
    :goto_9c
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->h:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->d()I

    move-result v5

    invoke-interface {v4, v0, v5, p2}, Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 695
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->d()Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 696
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "I/O exception ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") caught when processing request to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 700
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 696
    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->d(Ljava/lang/Object;)V

    .line 702
    :cond_eb
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 703
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 705
    :cond_fc
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->d()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 706
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Retrying request to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->d(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 710
    :cond_11f
    instance-of v1, v0, Lcz/msebera/android/httpclient/NoHttpResponseException;

    if-eqz v1, :cond_14c

    .line 711
    new-instance v1, Lcz/msebera/android/httpclient/NoHttpResponseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed to respond"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/NoHttpResponseException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 714
    throw v1

    .line 716
    :cond_14c
    throw v0

    .line 692
    :catch_14d
    move-exception v4

    goto/16 :goto_9c
.end method

.method private b()V
    .registers 5

    .prologue
    .line 1128
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 1129
    if-eqz v0, :cond_d

    .line 1132
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 1134
    :try_start_7
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->b()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_e

    .line 1142
    :cond_a
    :goto_a
    :try_start_a
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->h_()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_21

    .line 1147
    :cond_d
    :goto_d
    return-void

    .line 1135
    :catch_e
    move-exception v1

    .line 1136
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1137
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 1143
    :catch_21
    move-exception v0

    .line 1144
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "Error releasing connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_d
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 17

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 373
    const-string/jumbo v2, "http.auth.target-scope"

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->r:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    const-string/jumbo v2, "http.auth.proxy-scope"

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->s:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v3

    .line 380
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-virtual {v3, v2}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 381
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v3, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v6

    .line 383
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v2

    const-string/jumbo v5, "http.virtual-host"

    invoke-interface {v2, v5}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/HttpHost;

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->x:Lcz/msebera/android/httpclient/HttpHost;

    .line 386
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->x:Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->x:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v2

    if-ne v2, v7, :cond_5c

    .line 387
    if-eqz p1, :cond_131

    move-object v2, p1

    .line 388
    :goto_43
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v2

    .line 389
    if-eq v2, v7, :cond_5c

    .line 390
    new-instance v5, Lcz/msebera/android/httpclient/HttpHost;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->x:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->x:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/HttpHost;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v2, v8}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->x:Lcz/msebera/android/httpclient/HttpHost;

    .line 394
    :cond_5c
    new-instance v5, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;

    invoke-direct {v5, v3, v6}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;-><init>(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 399
    const/4 v2, 0x0

    move v7, v4

    .line 400
    :goto_63
    if-nez v4, :cond_168

    .line 406
    :try_start_65
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->a()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v6

    .line 407
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->b()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v8

    .line 411
    const-string/jumbo v2, "http.user-token"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 414
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-nez v2, :cond_c6

    .line 415
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->b:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    invoke-interface {v2, v8, v3}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;

    move-result-object v9

    .line 417
    instance-of v2, p2, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    if-eqz v2, :cond_8b

    .line 418
    move-object v0, p2

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    move-object v2, v0

    invoke-interface {v2, v9}, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;->setConnectionRequest(Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;)V

    .line 421
    :cond_8b
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v2}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->c(Lcz/msebera/android/httpclient/params/HttpParams;)J
    :try_end_90
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_65 .. :try_end_90} :catch_145
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_65 .. :try_end_90} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_90} :catch_2cc
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_90} :catch_2d1

    move-result-wide v10

    .line 423
    :try_start_91
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v9, v10, v11, v2}, Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;->a(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    :try_end_99
    .catch Ljava/lang/InterruptedException; {:try_start_91 .. :try_end_99} :catch_137
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_91 .. :try_end_99} :catch_145
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_91 .. :try_end_99} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_99} :catch_2cc
    .catch Ljava/lang/RuntimeException; {:try_start_91 .. :try_end_99} :catch_2d1

    .line 429
    :try_start_99
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v2}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->f(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 431
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->c()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 432
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v9, "Stale connection check"

    invoke-virtual {v2, v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 433
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->d()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 434
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v9, "Stale connection detected"

    invoke-virtual {v2, v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 435
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    .line 441
    :cond_c6
    instance-of v2, p2, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    if-eqz v2, :cond_d3

    .line 442
    move-object v0, p2

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    move-object v2, v0

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v2, v9}, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;)V
    :try_end_d3
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_99 .. :try_end_d3} :catch_145
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_99 .. :try_end_d3} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_d3} :catch_2cc
    .catch Ljava/lang/RuntimeException; {:try_start_99 .. :try_end_d3} :catch_2d1

    .line 446
    :cond_d3
    :try_start_d3
    move-object/from16 v0, p3

    invoke-direct {p0, v5, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    :try_end_d8
    .catch Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException; {:try_start_d3 .. :try_end_d8} :catch_152
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_d3 .. :try_end_d8} :catch_145
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_d3 .. :try_end_d8} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d8} :catch_2cc
    .catch Ljava/lang/RuntimeException; {:try_start_d3 .. :try_end_d8} :catch_2d1

    .line 455
    :try_start_d8
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 456
    if-eqz v2, :cond_f1

    .line 457
    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->r:Lcz/msebera/android/httpclient/auth/AuthState;

    new-instance v10, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>()V

    new-instance v11, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;

    invoke-direct {v11, v2}, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 462
    :cond_f1
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->x:Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v2, :cond_185

    .line 463
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->x:Lcz/msebera/android/httpclient/HttpHost;

    .line 470
    :cond_f7
    :goto_f7
    if-nez p1, :cond_fd

    .line 471
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p1

    .line 475
    :cond_fd
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->b()V

    .line 477
    invoke-virtual {p0, v6, v8}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 480
    const-string/jumbo v2, "http.target_host"

    move-object/from16 v0, p3

    invoke-interface {v0, v2, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    const-string/jumbo v2, "http.route"

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    const-string/jumbo v2, "http.connection"

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->f:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->g:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-object/from16 v0, p3

    invoke-virtual {v2, v6, v8, v0}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->a(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 487
    move-object/from16 v0, p3

    invoke-direct {p0, v5, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->b(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    :try_end_12b
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_d8 .. :try_end_12b} :catch_145
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_d8 .. :try_end_12b} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_12b} :catch_2cc
    .catch Ljava/lang/RuntimeException; {:try_start_d8 .. :try_end_12b} :catch_2d1

    move-result-object v6

    .line 488
    if-nez v6, :cond_195

    move-object v2, v6

    .line 490
    goto/16 :goto_63

    .line 387
    :cond_131
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    goto/16 :goto_43

    .line 424
    :catch_137
    move-exception v2

    .line 425
    :try_start_138
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 426
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2
    :try_end_145
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_138 .. :try_end_145} :catch_145
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_138 .. :try_end_145} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_145} :catch_2cc
    .catch Ljava/lang/RuntimeException; {:try_start_138 .. :try_end_145} :catch_2d1

    .line 578
    :catch_145
    move-exception v2

    .line 579
    new-instance v3, Ljava/io/InterruptedIOException;

    const-string/jumbo v4, "Connection has been shut down"

    invoke-direct {v3, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v3, v2}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 582
    throw v3

    .line 447
    :catch_152
    move-exception v2

    .line 448
    :try_start_153
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v3

    if-eqz v3, :cond_164

    .line 449
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 451
    :cond_164
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;->a()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v2

    .line 562
    :cond_168
    if-eqz v2, :cond_17a

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->b()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_17a

    .line 563
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->b()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v3

    if-nez v3, :cond_2bc

    .line 565
    :cond_17a
    if-eqz v7, :cond_181

    .line 566
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->i()V

    .line 568
    :cond_181
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a()V

    .line 576
    :goto_184
    return-object v2

    .line 465
    :cond_185
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v2

    .line 466
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v9

    if-eqz v9, :cond_f7

    .line 467
    invoke-static {v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->b(Ljava/net/URI;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p1

    goto/16 :goto_f7

    .line 494
    :cond_195
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v6, v2}, Lcz/msebera/android/httpclient/HttpResponse;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 495
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->f:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->g:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-object/from16 v0, p3

    invoke-virtual {v2, v6, v7, v0}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->a(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 499
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->d:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    move-object/from16 v0, p3

    invoke-interface {v2, v6, v0}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->a(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v7

    .line 500
    if-eqz v7, :cond_204

    .line 502
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->e:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v0, p3

    invoke-interface {v2, v6, v0}, Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;->a(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)J

    move-result-wide v8

    .line 503
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v2

    if-eqz v2, :cond_1fd

    .line 505
    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_22e

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "for "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    :goto_1e4
    iget-object v10, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Connection can be kept alive "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 512
    :cond_1fd
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v8, v9, v10}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 515
    :cond_204
    move-object/from16 v0, p3

    invoke-virtual {p0, v5, v6, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/impl/client/RoutedRequest;

    move-result-object v2

    .line 516
    if-nez v2, :cond_232

    .line 517
    const/4 v2, 0x1

    move v4, v2

    .line 548
    :goto_20e
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v2, :cond_22b

    .line 549
    if-nez v3, :cond_2d6

    .line 550
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->o:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/client/UserTokenHandler;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v2

    .line 551
    const-string/jumbo v3, "http.user-token"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    :goto_224
    if-eqz v2, :cond_22b

    .line 554
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v3, v2}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->a(Ljava/lang/Object;)V

    :cond_22b
    move-object v2, v6

    .line 558
    goto/16 :goto_63

    .line 508
    :cond_22e
    const-string/jumbo v2, "indefinitely"

    goto :goto_1e4

    .line 519
    :cond_232
    if-eqz v7, :cond_253

    .line 521
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpResponse;->b()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v8

    .line 522
    invoke-static {v8}, Lcz/msebera/android/httpclient/util/EntityUtils;->a(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 525
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v8}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->i()V

    .line 542
    :cond_240
    :goto_240
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->b()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v8

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->b()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_251

    .line 543
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a()V

    :cond_251
    move-object v5, v2

    .line 545
    goto :goto_20e

    .line 527
    :cond_253
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v8}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    .line 528
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->s:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/auth/AuthState;->b()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v8

    sget-object v9, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->b:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-lez v8, :cond_287

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->s:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 529
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/auth/AuthState;->c()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v8

    if-eqz v8, :cond_287

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->s:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 530
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/auth/AuthState;->c()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v8

    invoke-interface {v8}, Lcz/msebera/android/httpclient/auth/AuthScheme;->c()Z

    move-result v8

    if-eqz v8, :cond_287

    .line 531
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v9, "Resetting proxy auth state"

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 532
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->s:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/auth/AuthState;->a()V

    .line 534
    :cond_287
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->r:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/auth/AuthState;->b()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v8

    sget-object v9, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->b:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-lez v8, :cond_240

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->r:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 535
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/auth/AuthState;->c()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v8

    if-eqz v8, :cond_240

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->r:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 536
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/auth/AuthState;->c()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v8

    invoke-interface {v8}, Lcz/msebera/android/httpclient/auth/AuthScheme;->c()Z

    move-result v8

    if-eqz v8, :cond_240

    .line 537
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v9, "Resetting target auth state"

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 538
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->r:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/auth/AuthState;->a()V
    :try_end_2b6
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_153 .. :try_end_2b6} :catch_145
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_153 .. :try_end_2b6} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_2b6} :catch_2cc
    .catch Ljava/lang/RuntimeException; {:try_start_153 .. :try_end_2b6} :catch_2d1

    goto :goto_240

    .line 583
    :catch_2b7
    move-exception v2

    .line 584
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->b()V

    .line 585
    throw v2

    .line 571
    :cond_2bc
    :try_start_2bc
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->b()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    .line 572
    new-instance v4, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-direct {v4, v3, v5, v7}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/conn/ManagedClientConnection;Z)V

    .line 573
    invoke-interface {v2, v4}, Lcz/msebera/android/httpclient/HttpResponse;->a(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_2ca
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_2bc .. :try_end_2ca} :catch_145
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_2bc .. :try_end_2ca} :catch_2b7
    .catch Ljava/io/IOException; {:try_start_2bc .. :try_end_2ca} :catch_2cc
    .catch Ljava/lang/RuntimeException; {:try_start_2bc .. :try_end_2ca} :catch_2d1

    goto/16 :goto_184

    .line 586
    :catch_2cc
    move-exception v2

    .line 587
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->b()V

    .line 588
    throw v2

    .line 589
    :catch_2d1
    move-exception v2

    .line 590
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->b()V

    .line 591
    throw v2

    :cond_2d6
    move-object v2, v3

    goto/16 :goto_224
.end method

.method protected a(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    .registers 19

    .prologue
    .line 1030
    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->b()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v12

    .line 1031
    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->a()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v13

    .line 1033
    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v14

    .line 1035
    invoke-static {v14}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->b(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 1036
    const-string/jumbo v2, "http.target_host"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/HttpHost;

    .line 1037
    if-nez v2, :cond_23

    .line 1038
    invoke-virtual {v12}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    .line 1040
    :cond_23
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v3

    if-gez v3, :cond_185

    .line 1041
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->b:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->a()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v4

    .line 1042
    new-instance v3, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->a()I

    move-result v4

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v4, v2}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1045
    :goto_44
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->t:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->l:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->r:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v2

    .line 1048
    invoke-virtual {v12}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->d()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v5

    .line 1050
    if-nez v5, :cond_5c

    .line 1051
    invoke-virtual {v12}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v5

    .line 1053
    :cond_5c
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->t:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->n:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->s:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v4

    .line 1056
    if-eqz v2, :cond_7e

    .line 1057
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->t:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->l:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v10, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->r:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v7, v3

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v6 .. v11}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->c(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 1118
    :cond_7d
    :goto_7d
    return-object p1

    .line 1063
    :cond_7e
    if-eqz v4, :cond_90

    .line 1064
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->t:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->n:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->s:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->c(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 1072
    :cond_90
    invoke-static {v14}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v2

    if-eqz v2, :cond_181

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->j:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 1073
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v2, v13, v0, v1}, Lcz/msebera/android/httpclient/client/RedirectStrategy;->a(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_181

    .line 1075
    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->v:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->w:I

    if-lt v2, v3, :cond_cb

    .line 1076
    new-instance v2, Lcz/msebera/android/httpclient/client/RedirectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Maximum redirects ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") exceeded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1079
    :cond_cb
    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->v:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->v:I

    .line 1082
    const/4 v2, 0x0

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->x:Lcz/msebera/android/httpclient/HttpHost;

    .line 1084
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->j:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v2, v13, v0, v1}, Lcz/msebera/android/httpclient/client/RedirectStrategy;->b(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    move-result-object v2

    .line 1085
    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->c()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v3

    .line 1086
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    invoke-interface {v2, v3}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1088
    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    .line 1089
    invoke-static {v3}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->b(Ljava/net/URI;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    .line 1090
    if-nez v4, :cond_10d

    .line 1091
    new-instance v2, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Redirect URI does not specify a valid host name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1095
    :cond_10d
    invoke-virtual {v12}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcz/msebera/android/httpclient/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13f

    .line 1096
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v6, "Resetting target auth state"

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 1097
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->r:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/auth/AuthState;->a()V

    .line 1098
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->s:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/auth/AuthState;->c()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v5

    .line 1099
    if-eqz v5, :cond_13f

    invoke-interface {v5}, Lcz/msebera/android/httpclient/auth/AuthScheme;->c()Z

    move-result v5

    if-eqz v5, :cond_13f

    .line 1100
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v6, "Resetting proxy auth state"

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 1101
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->s:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/auth/AuthState;->a()V

    .line 1105
    :cond_13f
    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v2

    .line 1106
    invoke-virtual {v2, v14}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 1108
    move-object/from16 v0, p3

    invoke-virtual {p0, v4, v2, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v4

    .line 1109
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;

    move-object/from16 v0, p1

    invoke-direct {v0, v2, v4}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;-><init>(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 1111
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1112
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Redirecting to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\' via "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto/16 :goto_7d

    .line 1118
    :cond_181
    const/16 p1, 0x0

    goto/16 :goto_7d

    :cond_185
    move-object v3, v2

    goto/16 :goto_44
.end method

.method protected a()V
    .registers 4

    .prologue
    .line 734
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->h_()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_9

    .line 738
    :goto_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 739
    return-void

    .line 735
    :catch_9
    move-exception v0

    .line 736
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "IOException releasing connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method protected a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 9

    .prologue
    .line 781
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;-><init>()V

    .line 784
    :cond_5
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->h()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v1

    .line 785
    invoke-interface {v0, p1, v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;->a(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I

    move-result v2

    .line 787
    packed-switch v2, :pswitch_data_9c

    .line 824
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown step indicator "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from RouteDirector."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :pswitch_33
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v1, p1, p2, v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 828
    :goto_3a
    :pswitch_3a
    if-gtz v2, :cond_5

    .line 830
    return-void

    .line 795
    :pswitch_3d
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->b(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v1

    .line 796
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v4, "Tunnel to target created."

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 797
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v3, v1, v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->a(ZLcz/msebera/android/httpclient/params/HttpParams;)V

    goto :goto_3a

    .line 805
    :pswitch_51
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 806
    invoke-virtual {p0, p1, v1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    .line 807
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v5, "Tunnel to proxy created."

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 808
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a(I)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v4, v1, v3, v5}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->a(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    goto :goto_3a

    .line 814
    :pswitch_6f
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v1, p2, v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    goto :goto_3a

    .line 818
    :pswitch_77
    new-instance v0, Lcz/msebera/android/httpclient/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to establish route: planned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; current = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :pswitch_data_9c
    .packed-switch -0x1
        :pswitch_77
        :pswitch_3a
        :pswitch_33
        :pswitch_33
        :pswitch_3d
        :pswitch_51
        :pswitch_6f
    .end packed-switch
.end method

.method protected a(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .registers 7

    .prologue
    .line 342
    :try_start_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 343
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->d()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->e()Z

    move-result v1

    if-nez v1, :cond_28

    .line 345
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_23

    .line 346
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    .line 347
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->a(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    .line 359
    :goto_1f
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->a(Ljava/net/URI;)V

    .line 365
    return-void

    .line 349
    :cond_23
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->a(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_1f

    .line 353
    :cond_28
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 354
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->a(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    goto :goto_1f

    .line 356
    :cond_35
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->a(Ljava/net/URI;)Ljava/net/URI;
    :try_end_38
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_38} :catch_3a

    move-result-object v0

    goto :goto_1f

    .line 361
    :catch_3a
    move-exception v0

    .line 362
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 363
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/RequestLine;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 6

    .prologue
    .line 968
    new-instance v0, Lcz/msebera/android/httpclient/HttpException;

    const-string/jumbo v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 7

    .prologue
    .line 762
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->c:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    if-eqz p1, :cond_9

    :goto_4
    invoke-interface {v1, p1, p2, p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0

    .line 763
    :cond_9
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    const-string/jumbo v2, "http.default-host"

    .line 764
    invoke-interface {v0, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    move-object p1, v0

    goto :goto_4
.end method

.method protected b(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 10

    .prologue
    .line 856
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->d()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    .line 857
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v6

    .line 861
    :cond_8
    :goto_8
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->c()Z

    move-result v0

    if-nez v0, :cond_17

    .line 862
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v0, p1, p2, v2}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 865
    :cond_17
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->c(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v0

    .line 866
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v0, v2}, Lcz/msebera/android/httpclient/HttpRequest;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 869
    const-string/jumbo v2, "http.target_host"

    invoke-interface {p2, v2, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 870
    const-string/jumbo v2, "http.route"

    invoke-interface {p2, v2, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 871
    const-string/jumbo v2, "http.proxy_host"

    invoke-interface {p2, v2, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 872
    const-string/jumbo v2, "http.connection"

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p2, v2, v3}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    const-string/jumbo v2, "http.request"

    invoke-interface {p2, v2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 875
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->f:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->g:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v2, v0, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->a(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 877
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->f:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-virtual {v2, v0, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->a(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v2

    .line 879
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 880
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->f:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->g:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v0, v2, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->a(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 882
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v0

    .line 883
    const/16 v3, 0xc8

    if-ge v0, v3, :cond_85

    .line 884
    new-instance v0, Lcz/msebera/android/httpclient/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected response to CONNECT request: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 885
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_85
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v0}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->b(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 889
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->t:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->n:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->s:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 891
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->t:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->n:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->s:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->c(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 894
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->d:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {v0, v2, p2}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->a(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 895
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v3, "Connection kept alive"

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 897
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->b()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 898
    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->a(Lcz/msebera/android/httpclient/HttpEntity;)V

    goto/16 :goto_8

    .line 900
    :cond_c0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    goto/16 :goto_8

    .line 911
    :cond_c7
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v0

    .line 913
    const/16 v1, 0x12b

    if-le v0, v1, :cond_104

    .line 916
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->b()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 917
    if-eqz v0, :cond_e1

    .line 918
    new-instance v1, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {v2, v1}, Lcz/msebera/android/httpclient/HttpResponse;->a(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 921
    :cond_e1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    .line 922
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CONNECT refused by proxy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 923
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)V

    throw v0

    .line 926
    :cond_104
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->q:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->i()V

    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method protected c(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpRequest;
    .registers 7

    .prologue
    .line 988
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    .line 990
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v2

    .line 991
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v0

    .line 992
    if-gez v0, :cond_20

    .line 993
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->b:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->a()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 994
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/HttpHost;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v0

    .line 995
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->a()I

    move-result v0

    .line 998
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 999
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1004
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->p:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v1}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->b(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v1

    .line 1005
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    const-string/jumbo v3, "CONNECT"

    invoke-direct {v2, v3, v0, v1}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 1008
    return-object v2
.end method
