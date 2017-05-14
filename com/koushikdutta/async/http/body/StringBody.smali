.class public Lcom/koushikdutta/async/http/body/StringBody;
.super Ljava/lang/Object;
.source "StringBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:[B

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    const-string/jumbo v0, "text/plain"

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 5

    .prologue
    .line 24
    new-instance v0, Lcom/koushikdutta/async/parser/StringParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/StringParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/parser/StringParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/body/StringBody$1;

    invoke-direct {v1, p0, p2}, Lcom/koushikdutta/async/http/body/StringBody$1;-><init>(Lcom/koushikdutta/async/http/body/StringBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/future/Future;->a(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    .line 31
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 5

    .prologue
    .line 37
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->a:[B

    if-nez v0, :cond_c

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->a:[B

    .line 39
    :cond_c
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->a:[B

    invoke-static {p2, v0, p3}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 40
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->a:[B

    if-nez v0, :cond_c

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->a:[B

    .line 56
    :cond_c
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->a:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->b:Ljava/lang/String;

    return-object v0
.end method
