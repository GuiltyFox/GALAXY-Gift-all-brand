.class public Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.super Lcom/koushikdutta/async/http/SimpleMiddleware;
.source "ResponseCacheMiddleware.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Lcom/koushikdutta/async/util/FileCache;

.field private e:Lcom/koushikdutta/async/AsyncServer;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/koushikdutta/async/http/SimpleMiddleware;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a:Z

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->e:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public static a(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/io/File;J)Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
    .registers 8

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 73
    instance-of v0, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    if-eqz v0, :cond_8

    .line 74
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Response cache already added to http client"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_21
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;-><init>()V

    .line 77
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->d()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->e:Lcom/koushikdutta/async/AsyncServer;

    .line 78
    new-instance v1, Lcom/koushikdutta/async/util/FileCache;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/koushikdutta/async/util/FileCache;-><init>(Ljava/io/File;JZ)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->d:Lcom/koushikdutta/async/util/FileCache;

    .line 79
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 80
    return-object v0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/util/FileCache;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->d:Lcom/koushikdutta/async/util/FileCache;

    return-object v0
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)I
    .registers 3

    .prologue
    .line 50
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->b:I

    return v0
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)I
    .registers 3

    .prologue
    .line 50
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->c:I

    return v0
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .registers 16

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 99
    new-instance v2, Lcom/koushikdutta/async/http/cache/RequestHeaders;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/Headers;->a()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v3

    invoke-static {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/util/Map;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    .line 100
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v3, "request-headers"

    invoke-virtual {v1, v3, v2}, Lcom/koushikdutta/async/util/UntypedHashtable;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->d:Lcom/koushikdutta/async/util/FileCache;

    if-eqz v1, :cond_32

    iget-boolean v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a:Z

    if-eqz v1, :cond_32

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 103
    :cond_32
    iget v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    .line 196
    :goto_38
    return-object v0

    .line 107
    :cond_39
    new-array v1, v9, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v1}, Lcom/koushikdutta/async/util/FileCache;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 112
    :try_start_47
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->d:Lcom/koushikdutta/async/util/FileCache;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Lcom/koushikdutta/async/util/FileCache;->a(Ljava/lang/String;I)[Ljava/io/FileInputStream;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4d} :catch_17f

    move-result-object v1

    .line 113
    if-nez v1, :cond_62

    .line 114
    :try_start_50
    iget v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_56} :catch_57

    goto :goto_38

    .line 120
    :catch_57
    move-exception v2

    .line 122
    :goto_58
    iget v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    .line 123
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    goto :goto_38

    .line 117
    :cond_62
    const/4 v3, 0x1

    :try_start_63
    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v3

    int-to-long v4, v3

    .line 118
    new-instance v3, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-direct {v3, v6}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_72} :catch_57

    .line 128
    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v6}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v7}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v8

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/Headers;->a()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_98

    .line 129
    iget v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    .line 130
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    goto :goto_38

    .line 134
    :cond_98
    new-instance v6, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    aget-object v7, v1, v9

    invoke-direct {v6, v3, v7}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;Ljava/io/FileInputStream;)V

    .line 139
    :try_start_9f
    invoke-virtual {v6}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v7

    .line 140
    invoke-virtual {v6}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->a()Ljava/io/FileInputStream;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a6} :catch_b5

    move-result-object v8

    .line 147
    if-eqz v7, :cond_ab

    if-nez v8, :cond_c1

    .line 148
    :cond_ab
    iget v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    .line 149
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    goto :goto_38

    .line 142
    :catch_b5
    move-exception v2

    .line 143
    iget v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    .line 144
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    goto/16 :goto_38

    .line 153
    :cond_c1
    invoke-static {v7}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/util/Map;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v7

    .line 154
    new-instance v8, Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    iget-object v9, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v9}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    .line 155
    const-string/jumbo v9, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/koushikdutta/async/http/cache/RawHeaders;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v9, "Content-Encoding"

    invoke-virtual {v7, v9}, Lcom/koushikdutta/async/http/cache/RawHeaders;->c(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v9, "Transfer-Encoding"

    invoke-virtual {v7, v9}, Lcom/koushikdutta/async/http/cache/RawHeaders;->c(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a(JJ)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 161
    invoke-virtual {v8, v10, v11, v2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a(JLcom/koushikdutta/async/http/cache/RequestHeaders;)Lcom/koushikdutta/async/http/cache/ResponseSource;

    move-result-object v2

    .line 163
    sget-object v9, Lcom/koushikdutta/async/http/cache/ResponseSource;->a:Lcom/koushikdutta/async/http/cache/ResponseSource;

    if-ne v2, v9, :cond_149

    .line 164
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "Response retrieved from cache"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Ljava/lang/String;)V

    .line 165
    invoke-static {v3}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->a(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;)Z

    move-result v0

    if-eqz v0, :cond_143

    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;

    invoke-direct {v0, p0, v6, v4, v5}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 166
    :goto_110
    iget-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v7}, Lcom/koushikdutta/async/http/cache/RawHeaders;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 168
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->e:Lcom/koushikdutta/async/AsyncServer;

    new-instance v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 175
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->g:I

    .line 176
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v1, "socket-owner"

    invoke-virtual {v0, v1, p0}, Lcom/koushikdutta/async/util/UntypedHashtable;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 178
    invoke-virtual {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;->f()Z

    goto/16 :goto_38

    .line 165
    :cond_143
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-direct {v0, p0, v6, v4, v5}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    goto :goto_110

    .line 181
    :cond_149
    sget-object v3, Lcom/koushikdutta/async/http/cache/ResponseSource;->b:Lcom/koushikdutta/async/http/cache/ResponseSource;

    if-ne v2, v3, :cond_16c

    .line 182
    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v3, "Response may be served from conditional cache"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Ljava/lang/String;)V

    .line 183
    new-instance v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;-><init>()V

    .line 184
    iput-object v1, v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->a:[Ljava/io/FileInputStream;

    .line 185
    iput-wide v4, v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->c:J

    .line 186
    iput-object v8, v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->d:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    .line 187
    iput-object v6, v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->b:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    .line 188
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v3, "cache-data"

    invoke-virtual {v1, v3, v2}, Lcom/koushikdutta/async/util/UntypedHashtable;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_38

    .line 192
    :cond_16c
    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v3, "Response can not be served from cache"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c(Ljava/lang/String;)V

    .line 194
    iget v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    .line 195
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    goto/16 :goto_38

    .line 120
    :catch_17f
    move-exception v1

    move-object v1, v0

    goto/16 :goto_58
.end method

.method public a()Lcom/koushikdutta/async/util/FileCache;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->d:Lcom/koushikdutta/async/util/FileCache;

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 220
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->e:Lcom/koushikdutta/async/AsyncSocket;

    const-class v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/Class;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    .line 221
    if-eqz v0, :cond_1e

    .line 222
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->a_()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string/jumbo v1, "X-Served-From"

    const-string/jumbo v2, "cache"

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 294
    :cond_1d
    :goto_1d
    return-void

    .line 226
    :cond_1e
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v1, "cache-data"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;

    .line 227
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->a_()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Headers;->a()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/util/Map;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v1

    .line 228
    const-string/jumbo v2, "Content-Length"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->c(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v2, "%s %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v4}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->b_()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v4}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v5}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;)V

    .line 230
    new-instance v2, Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    .line 231
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v3, "response-headers"

    invoke-virtual {v1, v3, v2}, Lcom/koushikdutta/async/util/UntypedHashtable;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    if-eqz v0, :cond_f5

    .line 233
    iget-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->d:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 234
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v3, "Serving response from conditional cache"

    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Ljava/lang/String;)V

    .line 235
    iget-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->d:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    move-result-object v1

    .line 236
    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    new-instance v3, Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->f()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/koushikdutta/async/http/Headers;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->a(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 237
    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->b()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->a(I)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 238
    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->b(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 240
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->a_()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string/jumbo v2, "X-Served-From"

    const-string/jumbo v3, "conditional-cache"

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 241
    iget v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->f:I

    .line 243
    new-instance v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;

    iget-object v2, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->b:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    iget-wide v4, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->c:J

    invoke-direct {v1, v2, v4, v5}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 244
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->a(Lcom/koushikdutta/async/DataEmitter;)V

    .line 245
    iput-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->d:Lcom/koushikdutta/async/DataEmitter;

    .line 246
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->e()V

    goto/16 :goto_1d

    .line 251
    :cond_e8
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v3, "cache-data"

    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/util/UntypedHashtable;->a(Ljava/lang/String;)V

    .line 252
    iget-object v0, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->a:[Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 255
    :cond_f5
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a:Z

    if-eqz v0, :cond_1d

    .line 258
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v1, "request-headers"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/RequestHeaders;

    .line 259
    if-eqz v0, :cond_11b

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a(Lcom/koushikdutta/async/http/cache/RequestHeaders;)Z

    move-result v1

    if-eqz v1, :cond_11b

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "GET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12b

    .line 265
    :cond_11b
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    .line 266
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "Response is not cacheable"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 270
    :cond_12b
    new-array v1, v6, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v1}, Lcom/koushikdutta/async/util/FileCache;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->a()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v0

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/util/Set;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v0

    .line 272
    new-instance v3, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    iget-object v4, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v2

    invoke-direct {v3, v4, v0, v5, v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    .line 273
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;)V

    .line 274
    new-instance v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    invoke-direct {v2, p0, v1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Ljava/lang/String;)V

    .line 276
    :try_start_161
    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->a(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;)V

    .line 278
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->a(I)Ljava/io/FileOutputStream;
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_168} :catch_189

    .line 286
    iput-object v2, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    .line 288
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->a(Lcom/koushikdutta/async/DataEmitter;)V

    .line 289
    iput-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->d:Lcom/koushikdutta/async/DataEmitter;

    .line 291
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v2, "body-cacher"

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/util/UntypedHashtable;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "Caching response"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c(Ljava/lang/String;)V

    .line 293
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->i:I

    goto/16 :goto_1d

    .line 280
    :catch_189
    move-exception v0

    .line 282
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->b()V

    .line 283
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->h:I

    goto/16 :goto_1d
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V
    .registers 5

    .prologue
    .line 299
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v1, "cache-data"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;

    .line 300
    if-eqz v0, :cond_16

    iget-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->a:[Ljava/io/FileInputStream;

    if-eqz v1, :cond_16

    .line 301
    iget-object v0, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->a:[Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 303
    :cond_16
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->e:Lcom/koushikdutta/async/AsyncSocket;

    const-class v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/Class;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    .line 304
    if-eqz v0, :cond_31

    .line 305
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->a()Ljava/io/FileInputStream;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 307
    :cond_31
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v1, "body-cacher"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;

    .line 308
    if-eqz v0, :cond_45

    .line 309
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->k:Ljava/lang/Exception;

    if-eqz v1, :cond_46

    .line 310
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->a()V

    .line 314
    :cond_45
    :goto_45
    return-void

    .line 312
    :cond_46
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->b()V

    goto :goto_45
.end method
