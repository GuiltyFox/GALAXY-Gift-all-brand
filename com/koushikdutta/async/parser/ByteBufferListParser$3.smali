.class Lcom/koushikdutta/async/parser/ByteBufferListParser$3;
.super Ljava/lang/Object;
.source "ByteBufferListParser.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/parser/ByteBufferListParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic b:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic c:Lcom/koushikdutta/async/parser/ByteBufferListParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/parser/ByteBufferListParser;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 4

    .prologue
    .line 34
    iput-object p1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->c:Lcom/koushikdutta/async/parser/ByteBufferListParser;

    iput-object p2, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p3, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 37
    if-eqz p1, :cond_8

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->a(Ljava/lang/Exception;)Z

    .line 48
    :goto_7
    return-void

    .line 43
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_7

    .line 45
    :catch_10
    move-exception v0

    .line 46
    iget-object v1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->a(Ljava/lang/Exception;)Z

    goto :goto_7
.end method
