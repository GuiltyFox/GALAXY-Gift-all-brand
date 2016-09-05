.class Lcom/bzbs/lib/http/okhttp/HttpRequest$6;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lokhttp3/Request;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/http/okhttp/HttpRequest;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V
    .registers 2

    .prologue
    .line 383
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 5

    .prologue
    .line 386
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Z)V

    .line 387
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0, p2}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Ljava/io/IOException;)V

    .line 388
    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 5

    .prologue
    .line 392
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Z)V

    .line 393
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 394
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 395
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->disconnect()V

    .line 406
    :cond_1f
    :goto_1f
    return-void

    .line 399
    :cond_20
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0, p2}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Lokhttp3/Response;)Lokhttp3/Response;

    .line 401
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-virtual {p2}, Lokhttp3/Response;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;I)I

    .line 402
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-virtual {p2}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Lokhttp3/Headers;)Lokhttp3/Headers;

    .line 403
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-virtual {p2}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->i(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V

    goto :goto_1f
.end method
