.class final Lokhttp3/OkHttpClient$1;
.super Lokhttp3/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Lokhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/OkHttpClient;)Lokhttp3/internal/InternalCache;
    .registers 3

    .prologue
    .line 92
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->g()Lokhttp3/internal/InternalCache;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/ConnectionPool;)Lokhttp3/internal/RouteDatabase;
    .registers 3

    .prologue
    .line 110
    iget-object v0, p1, Lokhttp3/ConnectionPool;->a:Lokhttp3/internal/RouteDatabase;

    return-object v0
.end method

.method public a(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/http/StreamAllocation;)Lokhttp3/internal/io/RealConnection;
    .registers 5

    .prologue
    .line 102
    invoke-virtual {p1, p2, p3}, Lokhttp3/ConnectionPool;->a(Lokhttp3/Address;Lokhttp3/internal/http/StreamAllocation;)Lokhttp3/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    .prologue
    .line 124
    invoke-virtual {p1, p2, p3}, Lokhttp3/ConnectionSpec;->a(Ljavax/net/ssl/SSLSocket;Z)V

    .line 125
    return-void
.end method

.method public a(Lokhttp3/Headers$Builder;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 80
    invoke-virtual {p1, p2}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 81
    return-void
.end method

.method public a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 84
    invoke-virtual {p1, p2, p3}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 85
    return-void
.end method

.method public a(Lokhttp3/ConnectionPool;Lokhttp3/internal/io/RealConnection;)Z
    .registers 4

    .prologue
    .line 97
    invoke-virtual {p1, p2}, Lokhttp3/ConnectionPool;->b(Lokhttp3/internal/io/RealConnection;)Z

    move-result v0

    return v0
.end method

.method public b(Lokhttp3/ConnectionPool;Lokhttp3/internal/io/RealConnection;)V
    .registers 3

    .prologue
    .line 106
    invoke-virtual {p1, p2}, Lokhttp3/ConnectionPool;->a(Lokhttp3/internal/io/RealConnection;)V

    .line 107
    return-void
.end method
