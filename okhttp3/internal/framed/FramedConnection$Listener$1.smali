.class final Lokhttp3/internal/framed/FramedConnection$Listener$1;
.super Lokhttp3/internal/framed/FramedConnection$Listener;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedConnection$Listener;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 922
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedConnection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/internal/framed/FramedStream;)V
    .registers 3

    .prologue
    .line 924
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->k:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/ErrorCode;)V

    .line 925
    return-void
.end method
