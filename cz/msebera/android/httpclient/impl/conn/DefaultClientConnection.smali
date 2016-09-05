.class public Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;
.super Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;
.source "DefaultClientConnection.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
.implements Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
.implements Lcz/msebera/android/httpclient/protocol/HttpContext;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field public b:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field public c:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private volatile d:Ljava/net/Socket;

.field private e:Lcz/msebera/android/httpclient/HttpHost;

.field private f:Z

.field private volatile g:Z

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;-><init>()V

    .line 72
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 73
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "cz.msebera.android.httpclient.headers"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->b:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 74
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "cz.msebera.android.httpclient.wire"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->c:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->h:Ljava/util/Map;

    .line 94
    return-void
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/HttpResponse;
    .registers 9

    .prologue
    .line 251
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v1

    .line 252
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 253
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Receiving response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 255
    :cond_29
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->b:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 256
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->b:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 257
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 258
    array-length v3, v2

    const/4 v0, 0x0

    :goto_58
    if-ge v0, v3, :cond_7c

    aget-object v4, v2, v0

    .line 259
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->b:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 262
    :cond_7c
    return-object v1
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
    .line 225
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method protected a(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/SessionInputBuffer;
    .registers 8

    .prologue
    .line 188
    if-lez p2, :cond_1f

    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    move-result-object v1

    .line 192
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->c:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 193
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;

    new-instance v2, Lcz/msebera/android/httpclient/impl/conn/Wire;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->c:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/impl/conn/Wire;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;)V

    .line 196
    invoke-static {p3}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/impl/conn/Wire;Ljava/lang/String;)V

    .line 198
    :goto_1e
    return-object v0

    .line 188
    :cond_1f
    const/16 p2, 0x2000

    goto :goto_2

    :cond_22
    move-object v0, v1

    goto :goto_1e
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/HttpRequest;)V
    .registers 9

    .prologue
    .line 267
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 268
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 270
    :cond_25
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 271
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->b:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 272
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->b:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ">> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 273
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 274
    array-length v2, v1

    const/4 v0, 0x0

    :goto_57
    if-ge v0, v2, :cond_7b

    aget-object v3, v1, v0

    .line 275
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->b:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ">> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 278
    :cond_7b
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 289
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-void
.end method

.method public a(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;)V
    .registers 5

    .prologue
    .line 122
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->q()V

    .line 123
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->d:Ljava/net/Socket;

    .line 124
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->e:Lcz/msebera/android/httpclient/HttpHost;

    .line 127
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->g:Z

    if-eqz v0, :cond_17

    .line 128
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 130
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "Connection already shutdown"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_17
    return-void
.end method

.method public a(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    .prologue
    .line 237
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->j()V

    .line 238
    const-string/jumbo v0, "Target host"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    const-string/jumbo v0, "Parameters"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    if-eqz p1, :cond_16

    .line 242
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->d:Ljava/net/Socket;

    .line 243
    invoke-virtual {p0, p1, p4}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->a(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 245
    :cond_16
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->e:Lcz/msebera/android/httpclient/HttpHost;

    .line 246
    iput-boolean p3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->f:Z

    .line 247
    return-void
.end method

.method public a(ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 4

    .prologue
    .line 135
    const-string/jumbo v0, "Parameters"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->q()V

    .line 137
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->f:Z

    .line 138
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->d:Ljava/net/Socket;

    invoke-virtual {p0, v0, p2}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->a(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 139
    return-void
.end method

.method protected b(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/SessionOutputBuffer;
    .registers 8

    .prologue
    .line 206
    if-lez p2, :cond_1f

    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    move-result-object v1

    .line 210
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->c:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 211
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;

    new-instance v2, Lcz/msebera/android/httpclient/impl/conn/Wire;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->c:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/impl/conn/Wire;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;)V

    .line 214
    invoke-static {p3}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;-><init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/impl/conn/Wire;Ljava/lang/String;)V

    .line 216
    :goto_1e
    return-object v0

    .line 206
    :cond_1f
    const/16 p2, 0x2000

    goto :goto_2

    :cond_22
    move-object v0, v1

    goto :goto_1e
.end method

.method public close()V
    .registers 4

    .prologue
    .line 174
    :try_start_0
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->close()V

    .line 175
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 176
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 181
    :cond_2b
    :goto_2b
    return-void

    .line 178
    :catch_2c
    move-exception v0

    .line 179
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method public e()V
    .registers 4

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->g:Z

    .line 158
    :try_start_3
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->e()V

    .line 159
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 160
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " shut down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 162
    :cond_2e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->d:Ljava/net/Socket;

    .line 163
    if-eqz v0, :cond_35

    .line 164
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_35} :catch_36

    .line 169
    :cond_35
    :goto_35
    return-void

    .line 166
    :catch_36
    move-exception v0

    .line 167
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "I/O error shutting down connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_35
.end method

.method public final h()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->f:Z

    return v0
.end method

.method public final i()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->d:Ljava/net/Socket;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/SSLSession;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->d:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_f

    .line 115
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;->d:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 117
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
