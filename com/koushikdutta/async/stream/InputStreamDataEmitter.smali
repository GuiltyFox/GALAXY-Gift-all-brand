.class public Lcom/koushikdutta/async/stream/InputStreamDataEmitter;
.super Ljava/lang/Object;
.source "InputStreamDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;


# instance fields
.field a:Lcom/koushikdutta/async/AsyncServer;

.field b:Ljava/io/InputStream;

.field c:Lcom/koushikdutta/async/callback/DataCallback;

.field d:Z

.field e:I

.field f:Lcom/koushikdutta/async/ByteBufferList;

.field g:Ljava/lang/Runnable;

.field h:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/InputStream;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->e:I

    .line 74
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->f:Lcom/koushikdutta/async/ByteBufferList;

    .line 75
    new-instance v0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;-><init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->g:Ljava/lang/Runnable;

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->a:Lcom/koushikdutta/async/AsyncServer;

    .line 24
    iput-object p2, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->b:Ljava/io/InputStream;

    .line 25
    invoke-direct {p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->doResume()V

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;-><init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private doResume()V
    .registers 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->g:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/callback/DataCallback;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->c:Lcom/koushikdutta/async/callback/DataCallback;

    .line 32
    return-void
.end method

.method public b(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->h:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 128
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->a(Ljava/lang/Exception;)V

    .line 144
    :try_start_4
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 148
    :goto_9
    return-void

    .line 146
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public d_()Lcom/koushikdutta/async/callback/DataCallback;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->c:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public h()Lcom/koushikdutta/async/callback/CompletedCallback;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->h:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public j()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->d:Z

    .line 48
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->d:Z

    .line 53
    invoke-direct {p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->doResume()V

    .line 54
    return-void
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->d:Z

    return v0
.end method

.method public m()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->a:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method
