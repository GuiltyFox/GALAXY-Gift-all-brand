.class Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;
.super Ljava/lang/Object;
.source "AsyncHttpServerRequestImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->a(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 56
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->a(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->a(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 58
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->c()V

    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->m:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 81
    :cond_29
    :goto_29
    return-void

    .line 62
    :cond_2a
    const-string/jumbo v0, "\r"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 63
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->b(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Headers;->b(Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_29

    .line 78
    :catch_3d
    move-exception v0

    .line 79
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->a(Ljava/lang/Exception;)V

    goto :goto_29

    .line 66
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->m:Lcom/koushikdutta/async/AsyncSocket;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->b:Lcom/koushikdutta/async/http/Protocol;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->b(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/HttpUtil;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;Z)Lcom/koushikdutta/async/DataEmitter;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->c(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->b(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/Headers;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/koushikdutta/async/http/HttpUtil;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v2

    iput-object v2, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->q:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 69
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->q:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    if-nez v1, :cond_9b

    .line 70
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->b(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/Headers;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->a(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v2

    iput-object v2, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->q:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 71
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->q:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    if-nez v1, :cond_9b

    .line 72
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    new-instance v2, Lcom/koushikdutta/async/http/server/UnknownRequestBody;

    iget-object v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->b(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/Headers;

    move-result-object v3

    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/koushikdutta/async/http/server/UnknownRequestBody;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->q:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 74
    :cond_9b
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->q:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-static {v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->c(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 75
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->a()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_ad} :catch_3d

    goto/16 :goto_29
.end method
