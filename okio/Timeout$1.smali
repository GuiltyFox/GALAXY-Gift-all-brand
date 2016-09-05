.class final Lokio/Timeout$1;
.super Lokio/Timeout;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Timeout;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lokio/Timeout;
    .registers 3

    .prologue
    .line 54
    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .registers 4

    .prologue
    .line 50
    return-object p0
.end method

.method public g()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method
