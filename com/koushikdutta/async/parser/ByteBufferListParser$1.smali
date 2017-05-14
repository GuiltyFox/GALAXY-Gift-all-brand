.class Lcom/koushikdutta/async/parser/ByteBufferListParser$1;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "ByteBufferListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/parser/ByteBufferListParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/SimpleFuture",
        "<",
        "Lcom/koushikdutta/async/ByteBufferList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/DataEmitter;

.field final synthetic b:Lcom/koushikdutta/async/parser/ByteBufferListParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/parser/ByteBufferListParser;Lcom/koushikdutta/async/DataEmitter;)V
    .registers 3

    .prologue
    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;->b:Lcom/koushikdutta/async/parser/ByteBufferListParser;

    iput-object p2, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;->a:Lcom/koushikdutta/async/DataEmitter;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;->a:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->d()V

    .line 25
    return-void
.end method
