.class public interface abstract Lcom/koushikdutta/async/parser/AsyncParser;
.super Ljava/lang/Object;
.source "AsyncParser.java"


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
.method public abstract a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/DataEmitter;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract a()Ljava/lang/reflect/Type;
.end method
