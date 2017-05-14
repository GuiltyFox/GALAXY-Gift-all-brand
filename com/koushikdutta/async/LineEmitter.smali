.class public Lcom/koushikdutta/async/LineEmitter;
.super Ljava/lang/Object;
.source "LineEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Ljava/lang/StringBuilder;

.field b:Lcom/koushikdutta/async/LineEmitter$StringCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const-class v0, Lcom/koushikdutta/async/LineEmitter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/LineEmitter;->c:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/LineEmitter;->a:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 5

    .prologue
    .line 23
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-lez v0, :cond_2e

    .line 24
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->i()B

    move-result v0

    .line 25
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2f

    .line 26
    sget-boolean v0, Lcom/koushikdutta/async/LineEmitter;->c:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/koushikdutta/async/LineEmitter;->b:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_1c
    iget-object v0, p0, Lcom/koushikdutta/async/LineEmitter;->b:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/LineEmitter;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/LineEmitter$StringCallback;->a(Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/LineEmitter;->a:Ljava/lang/StringBuilder;

    .line 35
    :cond_2e
    return-void

    .line 32
    :cond_2f
    iget-object v1, p0, Lcom/koushikdutta/async/LineEmitter;->a:Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public a(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/koushikdutta/async/LineEmitter;->b:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    .line 15
    return-void
.end method
