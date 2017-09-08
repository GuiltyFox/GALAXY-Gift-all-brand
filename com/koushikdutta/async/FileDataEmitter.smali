.class public Lcom/koushikdutta/async/FileDataEmitter;
.super Lcom/koushikdutta/async/DataEmitterBase;
.source "FileDataEmitter.java"


# instance fields
.field c:Lcom/koushikdutta/async/AsyncServer;

.field d:Ljava/io/File;

.field e:Lcom/koushikdutta/async/callback/DataCallback;

.field f:Z

.field g:Lcom/koushikdutta/async/ByteBufferList;

.field h:Ljava/nio/channels/FileChannel;

.field i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/koushikdutta/async/DataEmitterBase;-><init>()V

    .line 60
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->g:Lcom/koushikdutta/async/ByteBufferList;

    .line 62
    new-instance v0, Lcom/koushikdutta/async/FileDataEmitter$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/FileDataEmitter$1;-><init>(Lcom/koushikdutta/async/FileDataEmitter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->i:Ljava/lang/Runnable;

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/FileDataEmitter;->c:Lcom/koushikdutta/async/AsyncServer;

    .line 20
    iput-object p2, p0, Lcom/koushikdutta/async/FileDataEmitter;->d:Ljava/io/File;

    .line 21
    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncServer;->b()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->f:Z

    .line 22
    iget-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->f:Z

    if-nez v0, :cond_25

    .line 23
    invoke-direct {p0}, Lcom/koushikdutta/async/FileDataEmitter;->doResume()V

    .line 24
    :cond_25
    return-void

    .line 21
    :cond_26
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private doResume()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->c:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/FileDataEmitter;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 94
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/callback/DataCallback;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/koushikdutta/async/FileDataEmitter;->e:Lcom/koushikdutta/async/callback/DataCallback;

    .line 30
    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 5

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/FileDataEmitter;->h:Ljava/nio/channels/FileChannel;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 57
    invoke-super {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->b(Ljava/lang/Exception;)V

    .line 58
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->h:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 113
    :goto_5
    return-void

    .line 111
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public e_()Lcom/koushikdutta/async/callback/DataCallback;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->e:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public j()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->f:Z

    .line 46
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->f:Z

    .line 51
    invoke-direct {p0}, Lcom/koushikdutta/async/FileDataEmitter;->doResume()V

    .line 52
    return-void
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->f:Z

    return v0
.end method

.method public m()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->c:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method
