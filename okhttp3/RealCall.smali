.class final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Call;


# instance fields
.field volatile a:Z

.field b:Lokhttp3/Request;

.field c:Lokhttp3/internal/http/HttpEngine;

.field private final d:Lokhttp3/OkHttpClient;

.field private e:Z


# direct methods
.method protected constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lokhttp3/RealCall;->d:Lokhttp3/OkHttpClient;

    .line 43
    iput-object p2, p0, Lokhttp3/RealCall;->b:Lokhttp3/Request;

    .line 44
    return-void
.end method

.method static synthetic a(Lokhttp3/RealCall;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lokhttp3/RealCall;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lokhttp3/RealCall;Z)Lokhttp3/Response;
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lokhttp3/RealCall;->a(Z)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Lokhttp3/Response;
    .registers 5

    .prologue
    .line 162
    new-instance v0, Lokhttp3/RealCall$ApplicationInterceptorChain;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/RealCall;->b:Lokhttp3/Request;

    invoke-direct {v0, p0, v1, v2, p1}, Lokhttp3/RealCall$ApplicationInterceptorChain;-><init>(Lokhttp3/RealCall;ILokhttp3/Request;Z)V

    .line 163
    iget-object v1, p0, Lokhttp3/RealCall;->b:Lokhttp3/Request;

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 153
    iget-boolean v0, p0, Lokhttp3/RealCall;->a:Z

    if-eqz v0, :cond_24

    const-string/jumbo v0, "canceled call"

    .line 154
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/RealCall;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_24
    const-string/jumbo v0, "call"

    goto :goto_7
.end method

.method static synthetic b(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lokhttp3/RealCall;->d:Lokhttp3/OkHttpClient;

    return-object v0
.end method


# virtual methods
.method a()Lokhttp3/HttpUrl;
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lokhttp3/RealCall;->b:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    const-string/jumbo v1, "/..."

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl;->c(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method a(Lokhttp3/Request;Z)Lokhttp3/Response;
    .registers 13

    .prologue
    .line 210
    invoke-virtual {p1}, Lokhttp3/Request;->d()Lokhttp3/RequestBody;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_139

    .line 212
    invoke-virtual {p1}, Lokhttp3/Request;->e()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v0}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    move-result-object v2

    .line 215
    if-eqz v2, :cond_1a

    .line 216
    const-string/jumbo v3, "Content-Type"

    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 219
    :cond_1a
    invoke-virtual {v0}, Lokhttp3/RequestBody;->a()J

    move-result-wide v2

    .line 220
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5a

    .line 221
    const-string/jumbo v0, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 222
    const-string/jumbo v0, "Transfer-Encoding"

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 228
    :goto_34
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v2

    .line 232
    :goto_38
    new-instance v0, Lokhttp3/internal/http/HttpEngine;

    iget-object v1, p0, Lokhttp3/RealCall;->d:Lokhttp3/OkHttpClient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lokhttp3/internal/http/HttpEngine;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V

    iput-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;

    .line 234
    const/4 v0, 0x0

    .line 236
    :goto_48
    iget-boolean v1, p0, Lokhttp3/RealCall;->a:Z

    if-eqz v1, :cond_6a

    .line 237
    iget-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v0}, Lokhttp3/internal/http/HttpEngine;->e()V

    .line 238
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_5a
    const-string/jumbo v0, "Transfer-Encoding"

    const-string/jumbo v2, "chunked"

    invoke-virtual {v1, v0, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 225
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_34

    .line 241
    :cond_6a
    const/4 v2, 0x1

    .line 243
    :try_start_6b
    iget-object v1, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->a()V

    .line 244
    iget-object v1, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->g()V
    :try_end_75
    .catch Lokhttp3/internal/http/RequestException; {:try_start_6b .. :try_end_75} :catch_8b
    .catch Lokhttp3/internal/http/RouteException; {:try_start_6b .. :try_end_75} :catch_9f
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_75} :catch_b9
    .catchall {:try_start_6b .. :try_end_75} :catchall_91

    .line 278
    iget-object v1, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->c()Lokhttp3/Response;

    move-result-object v8

    .line 279
    iget-object v1, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->h()Lokhttp3/Request;

    move-result-object v2

    .line 281
    if-nez v2, :cond_c9

    .line 282
    if-nez p2, :cond_8a

    .line 283
    iget-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v0}, Lokhttp3/internal/http/HttpEngine;->e()V

    .line 285
    :cond_8a
    return-object v8

    .line 246
    :catch_8b
    move-exception v0

    .line 248
    :try_start_8c
    invoke-virtual {v0}, Lokhttp3/internal/http/RequestException;->a()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_91
    .catchall {:try_start_8c .. :try_end_91} :catchall_91

    .line 272
    :catchall_91
    move-exception v0

    move v1, v2

    :goto_93
    if-eqz v1, :cond_9e

    .line 273
    iget-object v1, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->f()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Lokhttp3/internal/http/StreamAllocation;->c()V

    .line 275
    :cond_9e
    throw v0

    .line 249
    :catch_9f
    move-exception v1

    .line 251
    :try_start_a0
    iget-object v3, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/RouteException;->a()Ljava/io/IOException;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/internal/http/HttpEngine;->a(Ljava/io/IOException;ZLokio/Sink;)Lokhttp3/internal/http/HttpEngine;
    :try_end_ab
    .catchall {:try_start_a0 .. :try_end_ab} :catchall_91

    move-result-object v3

    .line 252
    if-eqz v3, :cond_b4

    .line 253
    const/4 v1, 0x0

    .line 254
    :try_start_af
    iput-object v3, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;
    :try_end_b1
    .catchall {:try_start_af .. :try_end_b1} :catchall_b2

    goto :goto_48

    .line 272
    :catchall_b2
    move-exception v0

    goto :goto_93

    .line 258
    :cond_b4
    :try_start_b4
    invoke-virtual {v1}, Lokhttp3/internal/http/RouteException;->a()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 259
    :catch_b9
    move-exception v1

    .line 261
    iget-object v3, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lokhttp3/internal/http/HttpEngine;->a(Ljava/io/IOException;ZLokio/Sink;)Lokhttp3/internal/http/HttpEngine;
    :try_end_c1
    .catchall {:try_start_b4 .. :try_end_c1} :catchall_91

    move-result-object v3

    .line 262
    if-eqz v3, :cond_c8

    .line 263
    const/4 v1, 0x0

    .line 264
    :try_start_c5
    iput-object v3, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;
    :try_end_c7
    .catchall {:try_start_c5 .. :try_end_c7} :catchall_b2

    goto :goto_48

    .line 269
    :cond_c8
    :try_start_c8
    throw v1
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_91

    .line 288
    :cond_c9
    iget-object v1, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->f()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v6

    .line 290
    add-int/lit8 v9, v0, 0x1

    const/16 v0, 0x14

    if-le v9, v0, :cond_f2

    .line 291
    invoke-virtual {v6}, Lokhttp3/internal/http/StreamAllocation;->c()V

    .line 292
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_f2
    iget-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/HttpUrl;)Z

    move-result v0

    if-nez v0, :cond_112

    .line 296
    invoke-virtual {v6}, Lokhttp3/internal/http/StreamAllocation;->c()V

    .line 297
    const/4 v6, 0x0

    .line 304
    :cond_102
    new-instance v0, Lokhttp3/internal/http/HttpEngine;

    iget-object v1, p0, Lokhttp3/RealCall;->d:Lokhttp3/OkHttpClient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lokhttp3/internal/http/HttpEngine;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V

    iput-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/HttpEngine;

    move v0, v9

    .line 306
    goto/16 :goto_48

    .line 298
    :cond_112
    invoke-virtual {v6}, Lokhttp3/internal/http/StreamAllocation;->a()Lokhttp3/internal/http/HttpStream;

    move-result-object v0

    if-eqz v0, :cond_102

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_139
    move-object v2, p1

    goto/16 :goto_38
.end method

.method public a(Lokhttp3/Callback;)V
    .registers 3

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/RealCall;->a(Lokhttp3/Callback;Z)V

    .line 71
    return-void
.end method

.method a(Lokhttp3/Callback;Z)V
    .registers 6

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->e:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0

    .line 76
    :cond_11
    const/4 v0, 0x1

    :try_start_12
    iput-boolean v0, p0, Lokhttp3/RealCall;->e:Z

    .line 77
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_e

    .line 78
    iget-object v0, p0, Lokhttp3/RealCall;->d:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->s()Lokhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lokhttp3/RealCall$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;ZLokhttp3/RealCall$1;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->a(Lokhttp3/RealCall$AsyncCall;)V

    .line 79
    return-void
.end method
