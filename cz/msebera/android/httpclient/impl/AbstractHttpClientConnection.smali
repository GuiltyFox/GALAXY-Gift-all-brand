.class public abstract Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;
.super Ljava/lang/Object;
.source "AbstractHttpClientConnection.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpClientConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;

.field private final b:Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;

.field private c:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

.field private d:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

.field private e:Lcz/msebera/android/httpclient/io/EofSensor;

.field private f:Lcz/msebera/android/httpclient/io/HttpMessageParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/io/HttpMessageParser",
            "<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcz/msebera/android/httpclient/io/HttpMessageWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/io/HttpMessageWriter",
            "<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->c:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 83
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->d:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    .line 84
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->e:Lcz/msebera/android/httpclient/io/EofSensor;

    .line 85
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->f:Lcz/msebera/android/httpclient/io/HttpMessageParser;

    .line 86
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->g:Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    .line 87
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->h:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    .line 99
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->m()Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->a:Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;

    .line 100
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->l()Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->b:Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;

    .line 101
    return-void
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/HttpResponse;
    .registers 4

    .prologue
    .line 282
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->j()V

    .line 283
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->f:Lcz/msebera/android/httpclient/io/HttpMessageParser;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/HttpMessageParser;->a()Lcz/msebera/android/httpclient/HttpMessage;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpResponse;

    .line 284
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1c

    .line 285
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->h:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->b()V

    .line 287
    :cond_1c
    return-object v0
.end method

.method protected a(Lcz/msebera/android/httpclient/io/HttpTransportMetrics;Lcz/msebera/android/httpclient/io/HttpTransportMetrics;)Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;
    .registers 4

    .prologue
    .line 202
    new-instance v0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;-><init>(Lcz/msebera/android/httpclient/io/HttpTransportMetrics;Lcz/msebera/android/httpclient/io/HttpTransportMetrics;)V

    return-object v0
.end method

.method protected a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/HttpMessageParser;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionInputBuffer;",
            "Lcz/msebera/android/httpclient/HttpResponseFactory;",
            "Lcz/msebera/android/httpclient/params/HttpParams;",
            ")",
            "Lcz/msebera/android/httpclient/io/HttpMessageParser",
            "<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method protected a(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/HttpMessageWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionOutputBuffer;",
            "Lcz/msebera/android/httpclient/params/HttpParams;",
            ")",
            "Lcz/msebera/android/httpclient/io/HttpMessageWriter",
            "<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;-><init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/message/LineFormatter;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .registers 5

    .prologue
    .line 260
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->j()V

    .line 262
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_10

    .line 269
    :goto_f
    return-void

    .line 265
    :cond_10
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->a:Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->d:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    .line 268
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v2

    .line 265
    invoke-virtual {v0, v1, p1, v2}, Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;->a(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/HttpMessage;Lcz/msebera/android/httpclient/HttpEntity;)V

    goto :goto_f
.end method

.method public a(Lcz/msebera/android/httpclient/HttpRequest;)V
    .registers 3

    .prologue
    .line 252
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->j()V

    .line 254
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->g:Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/io/HttpMessageWriter;->b(Lcz/msebera/android/httpclient/HttpMessage;)V

    .line 255
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->h:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->a()V

    .line 256
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 4

    .prologue
    .line 292
    const-string/jumbo v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->j()V

    .line 294
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->b:Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->c:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-virtual {v0, v1, p1}, Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;->b(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/HttpMessage;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 295
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->a(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 296
    return-void
.end method

.method protected a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    .prologue
    .line 225
    const-string/jumbo v0, "Input session buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->c:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 226
    const-string/jumbo v0, "Output session buffer"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->d:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    .line 227
    instance-of v0, p1, Lcz/msebera/android/httpclient/io/EofSensor;

    if-eqz v0, :cond_1f

    move-object v0, p1

    .line 228
    check-cast v0, Lcz/msebera/android/httpclient/io/EofSensor;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->e:Lcz/msebera/android/httpclient/io/EofSensor;

    .line 232
    :cond_1f
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->n()Lcz/msebera/android/httpclient/HttpResponseFactory;

    move-result-object v0

    .line 230
    invoke-virtual {p0, p1, v0, p3}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/HttpMessageParser;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->f:Lcz/msebera/android/httpclient/io/HttpMessageParser;

    .line 234
    invoke-virtual {p0, p2, p3}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->a(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->g:Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    .line 237
    invoke-interface {p1}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->b()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    move-result-object v0

    .line 238
    invoke-interface {p2}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->b()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    move-result-object v1

    .line 236
    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->a(Lcz/msebera/android/httpclient/io/HttpTransportMetrics;Lcz/msebera/android/httpclient/io/HttpTransportMetrics;)Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->h:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    .line 239
    return-void
.end method

.method public a(I)Z
    .registers 3

    .prologue
    .line 242
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->j()V

    .line 244
    :try_start_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->c:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a(I)Z
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_8} :catch_a

    move-result v0

    .line 246
    :goto_9
    return v0

    .line 245
    :catch_a
    move-exception v0

    .line 246
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c_()V
    .registers 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->j()V

    .line 277
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->o()V

    .line 278
    return-void
.end method

.method public d()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 303
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->c()Z

    move-result v1

    if-nez v1, :cond_8

    .line 315
    :cond_7
    :goto_7
    return v0

    .line 306
    :cond_8
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->p()Z

    move-result v1

    if-nez v1, :cond_7

    .line 310
    :try_start_e
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->c:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a(I)Z

    .line 311
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->p()Z
    :try_end_17
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_17} :catch_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_1c

    move-result v0

    goto :goto_7

    .line 312
    :catch_19
    move-exception v0

    .line 313
    const/4 v0, 0x0

    goto :goto_7

    .line 314
    :catch_1c
    move-exception v1

    goto :goto_7
.end method

.method protected abstract j()V
.end method

.method protected l()Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;

    new-instance v1, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;-><init>(Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected m()Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;
    .registers 3

    .prologue
    .line 137
    new-instance v0, Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;

    new-instance v1, Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;-><init>(Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected n()Lcz/msebera/android/httpclient/HttpResponseFactory;
    .registers 2

    .prologue
    .line 151
    sget-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->a:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    return-object v0
.end method

.method protected o()V
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->d:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a()V

    .line 273
    return-void
.end method

.method protected p()Z
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->e:Lcz/msebera/android/httpclient/io/EofSensor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;->e:Lcz/msebera/android/httpclient/io/EofSensor;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/EofSensor;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
