.class public abstract Lokhttp3/internal/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static a:Lokhttp3/internal/Internal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lokhttp3/OkHttpClient;)Lokhttp3/internal/InternalCache;
.end method

.method public abstract a(Lokhttp3/ConnectionPool;)Lokhttp3/internal/RouteDatabase;
.end method

.method public abstract a(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/http/StreamAllocation;)Lokhttp3/internal/io/RealConnection;
.end method

.method public abstract a(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract a(Lokhttp3/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Lokhttp3/ConnectionPool;Lokhttp3/internal/io/RealConnection;)Z
.end method

.method public abstract b(Lokhttp3/ConnectionPool;Lokhttp3/internal/io/RealConnection;)V
.end method
