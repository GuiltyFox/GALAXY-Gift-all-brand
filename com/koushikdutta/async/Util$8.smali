.class final Lcom/koushikdutta/async/Util$8;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/DataSink;

.field final synthetic b:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic c:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 4

    .prologue
    .line 198
    iput-object p1, p0, Lcom/koushikdutta/async/Util$8;->a:Lcom/koushikdutta/async/DataSink;

    iput-object p2, p0, Lcom/koushikdutta/async/Util$8;->b:Lcom/koushikdutta/async/ByteBufferList;

    iput-object p3, p0, Lcom/koushikdutta/async/Util$8;->c:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lcom/koushikdutta/async/Util$8;->a:Lcom/koushikdutta/async/DataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/Util$8;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 202
    iget-object v0, p0, Lcom/koushikdutta/async/Util$8;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/koushikdutta/async/Util$8;->c:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1e

    .line 203
    iget-object v0, p0, Lcom/koushikdutta/async/Util$8;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 204
    iget-object v0, p0, Lcom/koushikdutta/async/Util$8;->c:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 206
    :cond_1e
    return-void
.end method
