.class public Lcom/koushikdutta/async/parser/ByteBufferListParser;
.super Ljava/lang/Object;
.source "ByteBufferListParser.java"

# interfaces
.implements Lcom/koushikdutta/async/parser/AsyncParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/parser/AsyncParser",
        "<",
        "Lcom/koushikdutta/async/ByteBufferList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 21
    new-instance v1, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;-><init>(Lcom/koushikdutta/async/parser/ByteBufferListParser;Lcom/koushikdutta/async/DataEmitter;)V

    .line 27
    new-instance v2, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;-><init>(Lcom/koushikdutta/async/parser/ByteBufferListParser;Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/DataEmitter;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 34
    new-instance v2, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;-><init>(Lcom/koushikdutta/async/parser/ByteBufferListParser;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/DataEmitter;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 51
    return-object v1
.end method

.method public a()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 61
    const-class v0, Lcom/koushikdutta/async/ByteBufferList;

    return-object v0
.end method
