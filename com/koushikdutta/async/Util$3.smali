.class final Lcom/koushikdutta/async/Util$3;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/DataSink;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/koushikdutta/async/Util$3;->a:Lcom/koushikdutta/async/DataSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/koushikdutta/async/Util$3;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p2}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 128
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-lez v0, :cond_e

    .line 129
    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->j()V

    .line 130
    :cond_e
    return-void
.end method
