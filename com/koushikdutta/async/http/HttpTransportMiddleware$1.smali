.class Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;
.super Ljava/lang/Object;
.source "HttpTransportMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/HttpTransportMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
.end annotation


# instance fields
.field a:Lcom/koushikdutta/async/http/Headers;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

.field final synthetic d:Lcom/koushikdutta/async/http/HttpTransportMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/HttpTransportMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)V
    .registers 4

    .prologue
    .line 47
    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->d:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->a:Lcom/koushikdutta/async/http/Headers;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 54
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->b:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 56
    iput-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->b:Ljava/lang/String;

    .line 92
    :cond_c
    :goto_c
    return-void

    .line 58
    :cond_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 59
    iget-object v1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/Headers;->b(Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_19

    goto :goto_c

    .line 89
    :catch_19
    move-exception v0

    .line 90
    iget-object v1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->h:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    goto :goto_c

    .line 62
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->b:Ljava/lang/String;

    const-string/jumbo v1, " "

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 63
    array-length v1, v0

    if-ge v1, v3, :cond_3d

    .line 64
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Not HTTP"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 66
    :cond_3d
    iget-object v1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    iget-object v2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->a(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 67
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 68
    iget-object v2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v2, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 69
    iget-object v2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->a(I)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 70
    iget-object v2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    array-length v3, v0

    if-ne v3, v4, :cond_a0

    const/4 v3, 0x2

    aget-object v0, v0, v3

    :goto_68
    invoke-interface {v2, v0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->b(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->h:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->c()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_c

    .line 80
    const-string/jumbo v2, "HEAD"

    iget-object v3, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v3, v3, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 81
    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->a(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v0

    .line 86
    :goto_97
    iget-object v1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->b(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    goto/16 :goto_c

    .line 70
    :cond_a0
    const-string/jumbo v0, ""

    goto :goto_68

    .line 84
    :cond_a4
    invoke-static {v1}, Lcom/koushikdutta/async/http/Protocol;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->a:Lcom/koushikdutta/async/http/Headers;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/HttpUtil;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;Z)Lcom/koushikdutta/async/DataEmitter;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_ae} :catch_19

    move-result-object v0

    goto :goto_97
.end method
