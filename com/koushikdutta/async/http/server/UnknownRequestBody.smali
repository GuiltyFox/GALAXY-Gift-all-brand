.class public Lcom/koushikdutta/async/http/server/UnknownRequestBody;
.super Ljava/lang/Object;
.source "UnknownRequestBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Lcom/koushikdutta/async/DataEmitter;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->a:I

    .line 13
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->c:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 4

    .prologue
    .line 64
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->b:Lcom/koushikdutta/async/DataEmitter;

    .line 65
    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataEmitter;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 66
    new-instance v0, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 67
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 5

    .prologue
    .line 25
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->b:Lcom/koushikdutta/async/DataEmitter;

    invoke-static {v0, p2, p3}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 26
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->b:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->l()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->b:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->k()V

    .line 28
    :cond_12
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->a:I

    return v0
.end method
