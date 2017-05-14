.class public Lcom/koushikdutta/async/DataEmitterReader;
.super Ljava/lang/Object;
.source "DataEmitterReader.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# static fields
.field static final synthetic d:Z


# instance fields
.field a:Lcom/koushikdutta/async/callback/DataCallback;

.field b:I

.field c:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const-class v0, Lcom/koushikdutta/async/DataEmitterReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/DataEmitterReader;->d:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/DataEmitterReader;->c:Lcom/koushikdutta/async/ByteBufferList;

    .line 31
    return-void
.end method

.method private a(Lcom/koushikdutta/async/DataEmitter;)Z
    .registers 4

    .prologue
    .line 19
    iget v0, p0, Lcom/koushikdutta/async/DataEmitterReader;->b:I

    iget-object v1, p0, Lcom/koushikdutta/async/DataEmitterReader;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    if-le v0, v1, :cond_c

    .line 20
    const/4 v0, 0x0

    .line 27
    :goto_b
    return v0

    .line 22
    :cond_c
    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterReader;->a:Lcom/koushikdutta/async/callback/DataCallback;

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/koushikdutta/async/DataEmitterReader;->a:Lcom/koushikdutta/async/callback/DataCallback;

    .line 24
    iget-object v1, p0, Lcom/koushikdutta/async/DataEmitterReader;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/DataCallback;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 25
    sget-boolean v0, Lcom/koushikdutta/async/DataEmitterReader;->d:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterReader;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_28
    const/4 v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public a(ILcom/koushikdutta/async/callback/DataCallback;)V
    .registers 4

    .prologue
    .line 11
    sget-boolean v0, Lcom/koushikdutta/async/DataEmitterReader;->d:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterReader;->a:Lcom/koushikdutta/async/callback/DataCallback;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 12
    :cond_e
    iput p1, p0, Lcom/koushikdutta/async/DataEmitterReader;->b:I

    .line 13
    iput-object p2, p0, Lcom/koushikdutta/async/DataEmitterReader;->a:Lcom/koushikdutta/async/callback/DataCallback;

    .line 14
    sget-boolean v0, Lcom/koushikdutta/async/DataEmitterReader;->d:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterReader;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 15
    :cond_24
    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterReader;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 16
    return-void
.end method

.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 6

    .prologue
    .line 35
    sget-boolean v0, Lcom/koushikdutta/async/DataEmitterReader;->d:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterReader;->a:Lcom/koushikdutta/async/callback/DataCallback;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_e
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/async/DataEmitterReader;->b:I

    iget-object v2, p0, Lcom/koushikdutta/async/DataEmitterReader;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/koushikdutta/async/DataEmitterReader;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 39
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    .line 41
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/DataEmitterReader;->a(Lcom/koushikdutta/async/DataEmitter;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterReader;->a:Lcom/koushikdutta/async/callback/DataCallback;

    if-nez v0, :cond_e

    .line 42
    :cond_31
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    .line 43
    return-void
.end method
