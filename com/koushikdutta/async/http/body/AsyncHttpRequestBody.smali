.class public interface abstract Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
.super Ljava/lang/Object;
.source "AsyncHttpRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end method

.method public abstract a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end method

.method public abstract b()Z
.end method

.method public abstract c()I
.end method
