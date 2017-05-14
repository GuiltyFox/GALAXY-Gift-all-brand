.class public Lcom/koushikdutta/async/FilteredDataEmitter;
.super Lcom/koushikdutta/async/DataEmitterBase;
.source "FilteredDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;
.implements Lcom/koushikdutta/async/DataTrackingEmitter;
.implements Lcom/koushikdutta/async/callback/DataCallback;
.implements Lcom/koushikdutta/async/wrapper/DataEmitterWrapper;


# instance fields
.field c:Z

.field private d:Lcom/koushikdutta/async/DataEmitter;

.field private e:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/koushikdutta/async/DataEmitterBase;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;)V
    .registers 4

    .prologue
    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    if-eqz v0, :cond_a

    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 19
    :cond_a
    iput-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0, p0}, Lcom/koushikdutta/async/DataEmitter;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 21
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    new-instance v1, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(Lcom/koushikdutta/async/FilteredDataEmitter;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 27
    return-void
.end method

.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 5

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->c:Z

    if-eqz v0, :cond_8

    .line 51
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 63
    :cond_7
    :goto_7
    return-void

    .line 54
    :cond_8
    if-eqz p2, :cond_13

    .line 55
    iget v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->f:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->f:I

    .line 56
    :cond_13
    invoke-static {p0, p2}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 57
    if-eqz p2, :cond_21

    .line 58
    iget v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->f:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->f:I

    .line 59
    :cond_21
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->e:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->e:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    iget v1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->f:I

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;->a(I)V

    goto :goto_7
.end method

.method public a(Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->e:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    .line 42
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->c:Z

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    if-eqz v0, :cond_c

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->d()V

    .line 96
    :cond_c
    return-void
.end method

.method public j()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->j()V

    .line 73
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->k()V

    .line 78
    return-void
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->l()Z

    move-result v0

    return v0
.end method

.method public m()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    if-nez v0, :cond_6

    .line 101
    const/4 v0, 0x0

    .line 102
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
