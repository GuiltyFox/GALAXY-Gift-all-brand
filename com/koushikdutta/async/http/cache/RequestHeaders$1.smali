.class Lcom/koushikdutta/async/http/cache/RequestHeaders$1;
.super Ljava/lang/Object;
.source "RequestHeaders.java"

# interfaces
.implements Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/cache/RequestHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/cache/RequestHeaders;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/cache/RequestHeaders;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->a:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 73
    const-string/jumbo v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->a:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->a(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z

    .line 84
    :cond_f
    :goto_f
    return-void

    .line 75
    :cond_10
    const-string/jumbo v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 76
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->a:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->a(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I

    goto :goto_f

    .line 77
    :cond_23
    const-string/jumbo v0, "max-stale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->a:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I

    goto :goto_f

    .line 79
    :cond_36
    const-string/jumbo v0, "min-fresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 80
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->a:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->c(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I

    goto :goto_f

    .line 81
    :cond_49
    const-string/jumbo v0, "only-if-cached"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->a:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z

    goto :goto_f
.end method
