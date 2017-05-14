.class Lcom/koushikdutta/ion/Ion$Config$1;
.super Ljava/lang/Object;
.source "Ion.java"

# interfaces
.implements Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/Ion$Config;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/Ion$Config;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/Ion$Config;)V
    .registers 2

    .prologue
    .line 556
    iput-object p1, p0, Lcom/koushikdutta/ion/Ion$Config$1;->a:Lcom/koushikdutta/ion/Ion$Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .registers 8

    .prologue
    .line 559
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)V

    .line 560
    iget-object v1, p0, Lcom/koushikdutta/ion/Ion$Config$1;->a:Lcom/koushikdutta/ion/Ion$Config;

    iget-object v1, v1, Lcom/koushikdutta/ion/Ion$Config;->b:Lcom/koushikdutta/ion/Ion;

    iget-object v1, v1, Lcom/koushikdutta/ion/Ion;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 561
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string/jumbo v2, "User-Agent"

    iget-object v3, p0, Lcom/koushikdutta/ion/Ion$Config$1;->a:Lcom/koushikdutta/ion/Ion$Config;

    iget-object v3, v3, Lcom/koushikdutta/ion/Ion$Config;->b:Lcom/koushikdutta/ion/Ion;

    iget-object v3, v3, Lcom/koushikdutta/ion/Ion;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 562
    :cond_21
    return-object v0
.end method
