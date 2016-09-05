.class Lcom/bzbs/lib/http/okhttp/HttpRequest$8;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/http/okhttp/HttpRequest;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/http/okhttp/HttpRequest;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V
    .registers 2

    .prologue
    .line 448
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$8;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    .prologue
    .line 451
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$8;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0, p2}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Ljava/io/IOException;)V

    .line 452
    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 5

    .prologue
    .line 456
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$8;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 457
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$8;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 458
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$8;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->disconnect()V

    .line 469
    :cond_19
    :goto_19
    return-void

    .line 462
    :cond_1a
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$8;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0, p2}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Lokhttp3/Response;)Lokhttp3/Response;

    .line 464
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$8;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-virtual {p2}, Lokhttp3/Response;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;I)I

    .line 465
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$8;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-virtual {p2}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Lokhttp3/Headers;)Lokhttp3/Headers;

    .line 466
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$8;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-virtual {p2}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$8;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->i(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V

    goto :goto_19
.end method
