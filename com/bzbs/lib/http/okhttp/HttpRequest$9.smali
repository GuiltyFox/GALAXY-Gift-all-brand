.class Lcom/bzbs/lib/http/okhttp/HttpRequest$9;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lcom/bzbs/lib/utils/DeleyUtils$CallbackThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Ljava/io/IOException;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/bzbs/lib/http/okhttp/HttpRequest;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;Ljava/io/IOException;)V
    .registers 3

    .prologue
    .line 474
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$9;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    iput-object p2, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$9;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 477
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$9;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 478
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$9;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$9;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$9;->a:Ljava/io/IOException;

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->onFailure(Ljava/lang/String;Ljava/io/IOException;)V

    .line 479
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$9;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$9;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 481
    :cond_2d
    return-void
.end method
