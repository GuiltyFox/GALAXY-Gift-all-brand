.class Lcom/koushikdutta/async/parser/ByteBufferListParser$2;
.super Ljava/lang/Object;
.source "ByteBufferListParser.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/parser/ByteBufferListParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic b:Lcom/koushikdutta/async/parser/ByteBufferListParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/parser/ByteBufferListParser;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 3

    .prologue
    .line 27
    iput-object p1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;->b:Lcom/koushikdutta/async/parser/ByteBufferListParser;

    iput-object p2, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 31
    return-void
.end method
