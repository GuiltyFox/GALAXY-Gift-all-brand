.class final Lcom/koushikdutta/async/Util$5;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/koushikdutta/async/DataEmitter;

.field final synthetic c:Lcom/koushikdutta/async/DataSink;

.field final synthetic d:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 4

    .prologue
    .line 140
    iput-object p1, p0, Lcom/koushikdutta/async/Util$5;->b:Lcom/koushikdutta/async/DataEmitter;

    iput-object p2, p0, Lcom/koushikdutta/async/Util$5;->c:Lcom/koushikdutta/async/DataSink;

    iput-object p3, p0, Lcom/koushikdutta/async/Util$5;->d:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-boolean v0, p0, Lcom/koushikdutta/async/Util$5;->a:Z

    if-eqz v0, :cond_6

    .line 152
    :goto_5
    return-void

    .line 146
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/Util$5;->a:Z

    .line 147
    iget-object v0, p0, Lcom/koushikdutta/async/Util$5;->b:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 148
    iget-object v0, p0, Lcom/koushikdutta/async/Util$5;->b:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 149
    iget-object v0, p0, Lcom/koushikdutta/async/Util$5;->c:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 150
    iget-object v0, p0, Lcom/koushikdutta/async/Util$5;->c:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/async/Util$5;->d:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    goto :goto_5
.end method
