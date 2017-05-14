.class Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"

# interfaces
.implements Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 122
    const-string/jumbo v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 123
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z

    .line 135
    :cond_f
    :goto_f
    return-void

    .line 124
    :cond_10
    const-string/jumbo v0, "no-store"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 125
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z

    goto :goto_f

    .line 126
    :cond_1f
    const-string/jumbo v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 127
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a(Lcom/koushikdutta/async/http/cache/ResponseHeaders;I)I

    goto :goto_f

    .line 128
    :cond_32
    const-string/jumbo v0, "s-maxage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 129
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b(Lcom/koushikdutta/async/http/cache/ResponseHeaders;I)I

    goto :goto_f

    .line 130
    :cond_45
    const-string/jumbo v0, "public"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 131
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z

    goto :goto_f

    .line 132
    :cond_54
    const-string/jumbo v0, "must-revalidate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 133
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z

    goto :goto_f
.end method
