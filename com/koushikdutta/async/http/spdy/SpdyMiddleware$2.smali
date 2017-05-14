.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;
.super Ljava/lang/Object;
.source "SpdyMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/koushikdutta/async/callback/ConnectCallback;

.field final synthetic d:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;)V
    .registers 5

    .prologue
    .line 189
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->d:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->c:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .registers 9

    .prologue
    .line 192
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "checking spdy handshake"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 193
    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->d:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->w:Ljava/lang/reflect/Method;

    if-nez v0, :cond_23

    .line 194
    :cond_12
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->d:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->c:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->d:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;)V

    .line 243
    :goto_22
    return-void

    .line 200
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->d:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->t:Ljava/lang/reflect/Field;

    invoke-interface {p2}, Lcom/koushikdutta/async/AsyncSSLSocket;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 201
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->d:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v2, v2, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->w:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 202
    if-nez v0, :cond_67

    .line 203
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->d:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->c:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 204
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->d:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5f} :catch_60

    goto :goto_22

    .line 215
    :catch_60
    move-exception v0

    .line 216
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 207
    :cond_67
    :try_start_67
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 208
    invoke-static {v1}, Lcom/koushikdutta/async/http/Protocol;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_78

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/Protocol;->a()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 210
    :cond_78
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->d:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->c:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 211
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->d:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_89} :catch_60

    goto :goto_22

    .line 219
    :cond_8a
    new-instance v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;

    invoke-static {v1}, Lcom/koushikdutta/async/http/Protocol;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/Protocol;)V

    goto :goto_22
.end method
