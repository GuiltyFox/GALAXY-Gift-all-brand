.class final Lcom/koushikdutta/async/http/spdy/SpdyTransport;
.super Ljava/lang/Object;
.source "SpdyTransport.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "connection"

    aput-object v1, v0, v2

    const-string/jumbo v1, "host"

    aput-object v1, v0, v3

    const-string/jumbo v1, "keep-alive"

    aput-object v1, v0, v4

    const-string/jumbo v1, "proxy-connection"

    aput-object v1, v0, v5

    const-string/jumbo v1, "transfer-encoding"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Util;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/SpdyTransport;->a:Ljava/util/List;

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "connection"

    aput-object v1, v0, v2

    const-string/jumbo v1, "host"

    aput-object v1, v0, v3

    const-string/jumbo v1, "keep-alive"

    aput-object v1, v0, v4

    const-string/jumbo v1, "proxy-connection"

    aput-object v1, v0, v5

    const-string/jumbo v1, "te"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "transfer-encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "upgrade"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Util;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/SpdyTransport;->b:Ljava/util/List;

    return-void
.end method

.method static a(Lcom/koushikdutta/async/http/Protocol;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 47
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->c:Lcom/koushikdutta/async/http/Protocol;

    if-ne p0, v0, :cond_f

    .line 48
    sget-object v0, Lcom/koushikdutta/async/http/spdy/SpdyTransport;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 50
    :goto_e
    return v0

    .line 49
    :cond_f
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->d:Lcom/koushikdutta/async/http/Protocol;

    if-ne p0, v0, :cond_1e

    .line 50
    sget-object v0, Lcom/koushikdutta/async/http/spdy/SpdyTransport;->b:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e

    .line 52
    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
