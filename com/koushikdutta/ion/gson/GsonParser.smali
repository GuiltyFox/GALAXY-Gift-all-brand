.class public abstract Lcom/koushikdutta/ion/gson/GsonParser;
.super Ljava/lang/Object;
.source "GsonParser.java"

# interfaces
.implements Lcom/koushikdutta/async/parser/AsyncParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/gson/JsonElement;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/parser/AsyncParser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/nio/charset/Charset;

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonParser;->b:Ljava/lang/Class;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/DataEmitter;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->n()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v1}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/parser/ByteBufferListParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/ion/gson/GsonParser$1;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/ion/gson/GsonParser$1;-><init>(Lcom/koushikdutta/ion/gson/GsonParser;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/future/Future;->b(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/future/Future;

    return-object v0
.end method

.method public a()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonParser;->b:Ljava/lang/Class;

    return-object v0
.end method
