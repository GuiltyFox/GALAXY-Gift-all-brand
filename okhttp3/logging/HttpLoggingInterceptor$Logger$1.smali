.class final Lokhttp3/logging/HttpLoggingInterceptor$Logger$1;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/logging/HttpLoggingInterceptor$Logger;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 112
    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lokhttp3/internal/Platform;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    return-void
.end method
