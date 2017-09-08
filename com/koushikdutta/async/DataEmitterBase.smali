.class public abstract Lcom/koushikdutta/async/DataEmitterBase;
.super Ljava/lang/Object;
.source "DataEmitterBase.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;


# instance fields
.field a:Lcom/koushikdutta/async/callback/CompletedCallback;

.field b:Lcom/koushikdutta/async/callback/DataCallback;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/callback/DataCallback;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/koushikdutta/async/DataEmitterBase;->b:Lcom/koushikdutta/async/callback/DataCallback;

    .line 35
    return-void
.end method

.method public final b(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/DataEmitterBase;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 22
    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->c:Z

    if-eqz v0, :cond_5

    .line 17
    :cond_4
    :goto_4
    return-void

    .line 14
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->c:Z

    .line 15
    invoke-virtual {p0}, Lcom/koushikdutta/async/DataEmitterBase;->h()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/koushikdutta/async/DataEmitterBase;->h()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method public e_()Lcom/koushikdutta/async/callback/DataCallback;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->b:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public final h()Lcom/koushikdutta/async/callback/CompletedCallback;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method
