.class public abstract Lcom/bzbs/lib/http/okhttp/ResponseListener;
.super Ljava/lang/Object;
.source "ResponseListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 28
    return-void
.end method

.method public disconnect()V
    .registers 1

    .prologue
    .line 35
    return-void
.end method

.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 20
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/io/IOException;)V
    .registers 3

    .prologue
    .line 16
    return-void
.end method

.method public progress(JJF)V
    .registers 6

    .prologue
    .line 32
    return-void
.end method

.method public abstract successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end method
