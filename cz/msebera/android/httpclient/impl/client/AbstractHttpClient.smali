.class public abstract Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
.super Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
.source "AbstractHttpClient.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private c:Lcz/msebera/android/httpclient/params/HttpParams;

.field private d:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field private e:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

.field private f:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private g:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field private h:Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

.field private i:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

.field private j:Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

.field private k:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

.field private l:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

.field private m:Lcz/msebera/android/httpclient/client/RedirectStrategy;

.field private n:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private o:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private p:Lcz/msebera/android/httpclient/client/CookieStore;

.field private q:Lcz/msebera/android/httpclient/client/CredentialsProvider;

.field private r:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

.field private s:Lcz/msebera/android/httpclient/client/UserTokenHandler;

.field private t:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

.field private u:Lcz/msebera/android/httpclient/client/BackoffManager;


# direct methods
.method protected constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5

    .prologue
    .line 271
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;-><init>()V

    .line 185
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 272
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->c:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 273
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->e:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 274
    return-void
.end method

.method private declared-synchronized I()Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 701
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->k:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    if-nez v1, :cond_34

    .line 703
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->H()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v2

    .line 705
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a()I

    move-result v3

    .line 706
    new-array v4, v3, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    move v1, v0

    .line 707
    :goto_11
    if-ge v1, v3, :cond_1c

    .line 708
    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a(I)Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    move-result-object v5

    aput-object v5, v4, v1

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 710
    :cond_1c
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b()I

    move-result v1

    .line 711
    new-array v3, v1, [Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 712
    :goto_22
    if-ge v0, v1, :cond_2d

    .line 713
    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(I)Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    move-result-object v5

    aput-object v5, v3, v0

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 715
    :cond_2d
    new-instance v0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    invoke-direct {v0, v4, v3}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;[Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->k:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    .line 717
    :cond_34
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->k:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_38

    monitor-exit p0

    return-object v0

    .line 701
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A()Lcz/msebera/android/httpclient/client/RedirectStrategy;
    .registers 2

    .prologue
    .line 570
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->m:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    if-nez v0, :cond_c

    .line 571
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->m:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 573
    :cond_c
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->m:Lcz/msebera/android/httpclient/client/RedirectStrategy;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 570
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized B()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .registers 2

    .prologue
    .line 603
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->n:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    if-nez v0, :cond_b

    .line 604
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->k()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->n:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 606
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->n:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 603
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized C()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .registers 2

    .prologue
    .line 636
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->o:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    if-nez v0, :cond_b

    .line 637
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->l()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->o:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 639
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->o:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 636
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized D()Lcz/msebera/android/httpclient/client/CookieStore;
    .registers 2

    .prologue
    .line 650
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->p:Lcz/msebera/android/httpclient/client/CookieStore;

    if-nez v0, :cond_b

    .line 651
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->m()Lcz/msebera/android/httpclient/client/CookieStore;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->p:Lcz/msebera/android/httpclient/client/CookieStore;

    .line 653
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->p:Lcz/msebera/android/httpclient/client/CookieStore;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 650
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized E()Lcz/msebera/android/httpclient/client/CredentialsProvider;
    .registers 2

    .prologue
    .line 661
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->q:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    if-nez v0, :cond_b

    .line 662
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->n()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->q:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 664
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->q:Lcz/msebera/android/httpclient/client/CredentialsProvider;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 661
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized F()Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .registers 2

    .prologue
    .line 672
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->r:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    if-nez v0, :cond_b

    .line 673
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->o()Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->r:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 675
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->r:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 672
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized G()Lcz/msebera/android/httpclient/client/UserTokenHandler;
    .registers 2

    .prologue
    .line 683
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->s:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    if-nez v0, :cond_b

    .line 684
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->p()Lcz/msebera/android/httpclient/client/UserTokenHandler;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->s:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 686
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->s:Lcz/msebera/android/httpclient/client/UserTokenHandler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 683
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized H()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
    .registers 2

    .prologue
    .line 694
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->j:Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    if-nez v0, :cond_b

    .line 695
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->b()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->j:Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    .line 697
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->j:Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 694
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/client/RequestDirector;
    .registers 27

    .prologue
    .line 949
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method protected final a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .registers 20

    .prologue
    .line 781
    const-string/jumbo v2, "HTTP request"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 793
    monitor-enter p0

    .line 795
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->c()Lcz/msebera/android/httpclient/protocol/HttpContext;

    move-result-object v2

    .line 796
    if-nez p3, :cond_85

    move-object v15, v2

    .line 801
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->a(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v14

    .line 802
    invoke-static {v14}, Lcz/msebera/android/httpclient/client/params/HttpClientParamConfig;->a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v2

    .line 803
    const-string/jumbo v3, "http.request-config"

    invoke-interface {v15, v3, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->s()Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    move-result-object v3

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->r()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v4

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->x()Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    move-result-object v5

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->y()Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    move-result-object v6

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->F()Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    move-result-object v7

    .line 812
    invoke-direct/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->I()Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-result-object v8

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->z()Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    move-result-object v9

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->A()Lcz/msebera/android/httpclient/client/RedirectStrategy;

    move-result-object v10

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->B()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-result-object v11

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->C()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-result-object v12

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->G()Lcz/msebera/android/httpclient/client/UserTokenHandler;

    move-result-object v13

    move-object/from16 v2, p0

    .line 806
    invoke-virtual/range {v2 .. v14}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->a(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/client/RequestDirector;

    move-result-object v3

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->F()Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    move-result-object v4

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->u()Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    move-result-object v5

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->w()Lcz/msebera/android/httpclient/client/BackoffManager;

    move-result-object v6

    .line 822
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_9 .. :try_end_61} :catchall_8e

    .line 825
    if-eqz v5, :cond_d7

    if-eqz v6, :cond_d7

    .line 826
    if-eqz p1, :cond_91

    move-object/from16 v2, p1

    .line 829
    :goto_69
    :try_start_69
    move-object/from16 v0, p2

    invoke-interface {v4, v2, v0, v15}, Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :try_end_6e
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_69 .. :try_end_6e} :catch_ae

    move-result-object v4

    .line 834
    :try_start_6f
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1, v15}, Lcz/msebera/android/httpclient/client/RequestDirector;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v2

    .line 833
    invoke-static {v2}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->a(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_7a} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7a} :catch_b5
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_6f .. :try_end_7a} :catch_ae

    move-result-object v2

    .line 852
    :try_start_7b
    invoke-interface {v5, v2}, Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;->a(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 853
    invoke-interface {v6, v4}, Lcz/msebera/android/httpclient/client/BackoffManager;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    :try_end_84
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_7b .. :try_end_84} :catch_ae

    .line 859
    :goto_84
    return-object v2

    .line 799
    :cond_85
    :try_start_85
    new-instance v3, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v2}, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    move-object v15, v3

    goto :goto_10

    .line 822
    :catchall_8e
    move-exception v2

    monitor-exit p0
    :try_end_90
    .catchall {:try_start_85 .. :try_end_90} :catchall_8e

    throw v2

    .line 827
    :cond_91
    :try_start_91
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->a(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v2

    const-string/jumbo v7, "http.default-host"

    invoke-interface {v2, v7}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/HttpHost;

    goto :goto_69

    .line 835
    :catch_a3
    move-exception v2

    .line 836
    invoke-interface {v5, v2}, Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 837
    invoke-interface {v6, v4}, Lcz/msebera/android/httpclient/client/BackoffManager;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 839
    :cond_ad
    throw v2
    :try_end_ae
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_91 .. :try_end_ae} :catch_ae

    .line 862
    :catch_ae
    move-exception v2

    .line 863
    new-instance v3, Lcz/msebera/android/httpclient/client/ClientProtocolException;

    invoke-direct {v3, v2}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 840
    :catch_b5
    move-exception v2

    .line 841
    :try_start_b6
    invoke-interface {v5, v2}, Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 842
    invoke-interface {v6, v4}, Lcz/msebera/android/httpclient/client/BackoffManager;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 844
    :cond_bf
    instance-of v3, v2, Lcz/msebera/android/httpclient/HttpException;

    if-eqz v3, :cond_c6

    .line 845
    check-cast v2, Lcz/msebera/android/httpclient/HttpException;

    throw v2

    .line 847
    :cond_c6
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_cd

    .line 848
    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 850
    :cond_cd
    new-instance v3, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v3, v2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 855
    :cond_d3
    invoke-interface {v6, v4}, Lcz/msebera/android/httpclient/client/BackoffManager;->b(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    goto :goto_84

    .line 860
    :cond_d7
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1, v15}, Lcz/msebera/android/httpclient/client/RequestDirector;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v2

    .line 859
    invoke-static {v2}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->a(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_end_e2
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_b6 .. :try_end_e2} :catch_ae

    move-result-object v2

    goto :goto_84
.end method

.method protected abstract a()Lcz/msebera/android/httpclient/params/HttpParams;
.end method

.method protected a(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 981
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;

    .line 982
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->q()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method public declared-synchronized a(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V
    .registers 3

    .prologue
    .line 757
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->H()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->k:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 759
    monitor-exit p0

    return-void

    .line 757
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V
    .registers 4

    .prologue
    .line 762
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->H()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V

    .line 763
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->k:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 764
    monitor-exit p0

    return-void

    .line 762
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V
    .registers 3

    .prologue
    .line 737
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->H()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V

    .line 738
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->k:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 739
    monitor-exit p0

    return-void

    .line 737
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)V
    .registers 3

    .prologue
    .line 547
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->l:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 548
    monitor-exit p0

    return-void

    .line 547
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcz/msebera/android/httpclient/client/RedirectHandler;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 563
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/RedirectHandler;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->m:Lcz/msebera/android/httpclient/client/RedirectStrategy;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 564
    monitor-exit p0

    return-void

    .line 563
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 772
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->H()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->a(Ljava/lang/Class;)V

    .line 773
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->k:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 774
    monitor-exit p0

    return-void

    .line 772
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
.end method

.method protected c()Lcz/msebera/android/httpclient/protocol/HttpContext;
    .registers 4

    .prologue
    .line 284
    new-instance v0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    .line 285
    const-string/jumbo v1, "http.scheme-registry"

    .line 287
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->r()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->a()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 285
    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    const-string/jumbo v1, "http.authscheme-registry"

    .line 290
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->t()Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    move-result-object v2

    .line 288
    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    const-string/jumbo v1, "http.cookiespec-registry"

    .line 293
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->v()Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

    move-result-object v2

    .line 291
    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    const-string/jumbo v1, "http.cookie-store"

    .line 296
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->D()Lcz/msebera/android/httpclient/client/CookieStore;

    move-result-object v2

    .line 294
    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    const-string/jumbo v1, "http.auth.credentials-provider"

    .line 299
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->E()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v2

    .line 297
    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    return-object v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 987
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->r()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->b()V

    .line 988
    return-void
.end method

.method protected d()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .registers 6

    .prologue
    .line 305
    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->a()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v3

    .line 308
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->q()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v4

    .line 310
    const/4 v2, 0x0

    .line 312
    const-string/jumbo v1, "http.connection-manager.factory-class-name"

    invoke-interface {v4, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    if-eqz v1, :cond_5e

    .line 316
    :try_start_14
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 317
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcz/msebera/android/httpclient/conn/ClientConnectionManagerFactory;

    move-object v1, v0
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_20} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_20} :catch_42
    .catch Ljava/lang/InstantiationException; {:try_start_14 .. :try_end_20} :catch_4d

    .line 326
    :goto_20
    if-eqz v1, :cond_58

    .line 327
    invoke-interface {v1, v4, v3}, Lcz/msebera/android/httpclient/conn/ClientConnectionManagerFactory;->a(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v1

    .line 332
    :goto_26
    return-object v1

    .line 318
    :catch_27
    move-exception v2

    .line 319
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid class name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    :catch_42
    move-exception v1

    .line 321
    new-instance v2, Ljava/lang/IllegalAccessError;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :catch_4d
    move-exception v1

    .line 323
    new-instance v2, Ljava/lang/InstantiationError;

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    :cond_58
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;

    invoke-direct {v1, v3}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    goto :goto_26

    :cond_5e
    move-object v1, v2

    goto :goto_20
.end method

.method protected e()Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;
    .registers 4

    .prologue
    .line 337
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;-><init>()V

    .line 338
    const-string/jumbo v1, "Basic"

    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    .line 341
    const-string/jumbo v1, "Digest"

    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    .line 344
    const-string/jumbo v1, "NTLM"

    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    .line 349
    return-object v0
.end method

.method protected f()Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;
    .registers 4

    .prologue
    .line 354
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;-><init>()V

    .line 355
    const-string/jumbo v1, "best-match"

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;)V

    .line 358
    const-string/jumbo v1, "compatibility"

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;)V

    .line 361
    const-string/jumbo v1, "netscape"

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;)V

    .line 364
    const-string/jumbo v1, "rfc2109"

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;)V

    .line 367
    const-string/jumbo v1, "rfc2965"

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;)V

    .line 370
    const-string/jumbo v1, "ignoreCookies"

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;)V

    .line 373
    return-object v0
.end method

.method protected g()Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .registers 2

    .prologue
    .line 377
    new-instance v0, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>()V

    return-object v0
.end method

.method protected h()Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .registers 2

    .prologue
    .line 381
    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-object v0
.end method

.method protected i()Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .registers 2

    .prologue
    .line 385
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-object v0
.end method

.method protected j()Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    .registers 2

    .prologue
    .line 389
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-object v0
.end method

.method protected k()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .registers 2

    .prologue
    .line 401
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;-><init>()V

    return-object v0
.end method

.method protected l()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .registers 2

    .prologue
    .line 413
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;-><init>()V

    return-object v0
.end method

.method protected m()Lcz/msebera/android/httpclient/client/CookieStore;
    .registers 2

    .prologue
    .line 425
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;-><init>()V

    return-object v0
.end method

.method protected n()Lcz/msebera/android/httpclient/client/CredentialsProvider;
    .registers 2

    .prologue
    .line 429
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;-><init>()V

    return-object v0
.end method

.method protected o()Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .registers 3

    .prologue
    .line 433
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpRoutePlanner;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->r()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->a()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected p()Lcz/msebera/android/httpclient/client/UserTokenHandler;
    .registers 2

    .prologue
    .line 437
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized q()Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 2

    .prologue
    .line 442
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->c:Lcz/msebera/android/httpclient/params/HttpParams;

    if-nez v0, :cond_b

    .line 443
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->a()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->c:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 445
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->c:Lcz/msebera/android/httpclient/params/HttpParams;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 442
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .registers 2

    .prologue
    .line 460
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->e:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    if-nez v0, :cond_b

    .line 461
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->d()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->e:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 463
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->e:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 460
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .registers 2

    .prologue
    .line 468
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->d:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    if-nez v0, :cond_b

    .line 469
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->g()Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->d:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 471
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->d:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 468
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t()Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;
    .registers 2

    .prologue
    .line 476
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->i:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    if-nez v0, :cond_b

    .line 477
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->e()Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->i:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    .line 479
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->i:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 476
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized u()Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .registers 2

    .prologue
    .line 487
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->t:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized v()Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;
    .registers 2

    .prologue
    .line 495
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->h:Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

    if-nez v0, :cond_b

    .line 496
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->f()Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->h:Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

    .line 498
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->h:Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 495
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized w()Lcz/msebera/android/httpclient/client/BackoffManager;
    .registers 2

    .prologue
    .line 502
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->u:Lcz/msebera/android/httpclient/client/BackoffManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized x()Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .registers 2

    .prologue
    .line 514
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->f:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    if-nez v0, :cond_b

    .line 515
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->h()Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->f:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 517
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->f:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 514
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized y()Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .registers 2

    .prologue
    .line 527
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->g:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    if-nez v0, :cond_b

    .line 528
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->i()Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->g:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 530
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->g:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 527
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z()Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    .registers 2

    .prologue
    .line 540
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->l:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    if-nez v0, :cond_b

    .line 541
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->j()Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->l:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    .line 543
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->l:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 540
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
