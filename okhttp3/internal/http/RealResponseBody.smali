.class public final Lokhttp3/internal/http/RealResponseBody;
.super Lokhttp3/ResponseBody;
.source "RealResponseBody.java"


# instance fields
.field private final a:Lokhttp3/Headers;

.field private final b:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokhttp3/Headers;Lokio/BufferedSource;)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 28
    iput-object p1, p0, Lokhttp3/internal/http/RealResponseBody;->a:Lokhttp3/Headers;

    .line 29
    iput-object p2, p0, Lokhttp3/internal/http/RealResponseBody;->b:Lokio/BufferedSource;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lokhttp3/MediaType;
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lokhttp3/internal/http/RealResponseBody;->a:Lokhttp3/Headers;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_10

    invoke-static {v0}, Lokhttp3/MediaType;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public b()J
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lokhttp3/internal/http/RealResponseBody;->a:Lokhttp3/Headers;

    invoke-static {v0}, Lokhttp3/internal/http/OkHeaders;->a(Lokhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lokio/BufferedSource;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/internal/http/RealResponseBody;->b:Lokio/BufferedSource;

    return-object v0
.end method
