.class public Lcom/koushikdutta/async/AsyncNetworkSocket;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;


# static fields
.field static final synthetic j:Z


# instance fields
.field a:Ljava/net/InetSocketAddress;

.field b:Lcom/koushikdutta/async/util/Allocator;

.field c:Z

.field d:Lcom/koushikdutta/async/callback/WritableCallback;

.field e:Lcom/koushikdutta/async/callback/DataCallback;

.field f:Lcom/koushikdutta/async/callback/CompletedCallback;

.field g:Z

.field h:Ljava/lang/Exception;

.field i:Z

.field private k:Lcom/koushikdutta/async/ChannelWrapper;

.field private l:Ljava/nio/channels/SelectionKey;

.field private m:Lcom/koushikdutta/async/AsyncServer;

.field private n:Lcom/koushikdutta/async/ByteBufferList;

.field private o:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/AsyncNetworkSocket;->j:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->n:Lcom/koushikdutta/async/ByteBufferList;

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->i:Z

    .line 20
    return-void
.end method

.method private a(I)V
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->l:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_13

    .line 97
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v1}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 98
    :cond_13
    if-lez p1, :cond_2e

    .line 100
    sget-boolean v0, Lcom/koushikdutta/async/AsyncNetworkSocket;->j:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->k:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_27
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->l:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 107
    :goto_2d
    return-void

    .line 105
    :cond_2e
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->l:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_2d
.end method

.method private o()V
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->n:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 287
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->n:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 289
    :cond_d
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->k:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->a()V

    .line 25
    return-void
.end method

.method a(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V
    .registers 3

    .prologue
    .line 60
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->m:Lcom/koushikdutta/async/AsyncServer;

    .line 61
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->l:Ljava/nio/channels/SelectionKey;

    .line 62
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 5

    .prologue
    .line 66
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->m:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->a()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_17

    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->m:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket$1;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->b(Ljava/lang/Runnable;)V

    .line 93
    :cond_16
    :goto_16
    return-void

    .line 75
    :cond_17
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->k:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->b()Z

    move-result v0

    if-nez v0, :cond_31

    .line 76
    sget-boolean v0, Lcom/koushikdutta/async/AsyncNetworkSocket;->j:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->k:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_31
    :try_start_31
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    .line 82
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->b()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->k:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/ChannelWrapper;->a([Ljava/nio/ByteBuffer;)I

    .line 84
    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/ByteBufferList;->a([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 85
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->a(I)V

    .line 86
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->m:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/AsyncServer;->b(I)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_52} :catch_53

    goto :goto_16

    .line 88
    :catch_53
    move-exception v0

    .line 89
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->e()V

    .line 90
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->c(Ljava/lang/Exception;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->a(Ljava/lang/Exception;)V

    goto :goto_16
.end method

.method public a(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 213
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/DataCallback;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->e:Lcom/koushikdutta/async/callback/DataCallback;

    .line 202
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->d:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 196
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->c:Z

    if-eqz v0, :cond_5

    .line 175
    :cond_4
    :goto_4
    return-void

    .line 170
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->c:Z

    .line 171
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    goto :goto_4
.end method

.method a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V
    .registers 4

    .prologue
    .line 33
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->a:Ljava/net/InetSocketAddress;

    .line 34
    new-instance v0, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/util/Allocator;

    .line 35
    new-instance v0, Lcom/koushikdutta/async/SocketChannelWrapper;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/SocketChannelWrapper;-><init>(Ljava/nio/channels/SocketChannel;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->k:Lcom/koushikdutta/async/ChannelWrapper;

    .line 36
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->d:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz v0, :cond_9

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->d:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->a()V

    .line 53
    :cond_9
    return-void
.end method

.method public b(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 2

    .prologue
    .line 248
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->o:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 249
    return-void
.end method

.method b(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->g:Z

    if-eqz v0, :cond_5

    .line 234
    :cond_4
    :goto_4
    return-void

    .line 228
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->g:Z

    .line 229
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->o:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_12

    .line 230
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->o:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    goto :goto_4

    .line 231
    :cond_12
    if-eqz p1, :cond_4

    .line 232
    const-string/jumbo v0, "NIO"

    const-string/jumbo v1, "Unhandled exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method c()I
    .registers 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->o()V

    .line 117
    iget-boolean v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->i:Z

    if-eqz v1, :cond_b

    .line 163
    :cond_a
    :goto_a
    return v0

    .line 124
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/Allocator;->a()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 128
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->k:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ChannelWrapper;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v4, v1

    .line 129
    cmp-long v1, v4, v8

    if-gez v1, :cond_4c

    .line 130
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->e()V

    .line 131
    const/4 v1, 0x1

    .line 136
    :goto_20
    cmp-long v3, v4, v8

    if-lez v3, :cond_53

    .line 137
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->b:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v3, v4, v5}, Lcom/koushikdutta/async/util/Allocator;->a(J)V

    .line 138
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 145
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->n:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 146
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->n:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v2}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 152
    :goto_36
    if-eqz v1, :cond_a

    .line 153
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->c(Ljava/lang/Exception;)V

    .line 154
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->a(Ljava/lang/Exception;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_40} :catch_41

    goto :goto_a

    .line 157
    :catch_41
    move-exception v1

    .line 158
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->e()V

    .line 159
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->c(Ljava/lang/Exception;)V

    .line 160
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->a(Ljava/lang/Exception;)V

    goto :goto_a

    .line 134
    :cond_4c
    int-to-long v6, v0

    add-long/2addr v6, v4

    long-to-int v1, v6

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_20

    .line 149
    :cond_53
    :try_start_53
    invoke-static {v2}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_41

    goto :goto_36
.end method

.method c(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->n:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 239
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->h:Ljava/lang/Exception;

    .line 243
    :goto_a
    return-void

    .line 242
    :cond_b
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->b(Ljava/lang/Exception;)V

    goto :goto_a
.end method

.method public d()V
    .registers 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->e()V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->a(Ljava/lang/Exception;)V

    .line 181
    return-void
.end method

.method public d_()Lcom/koushikdutta/async/callback/DataCallback;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->e:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public e()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->l:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 186
    :try_start_5
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->k:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b

    .line 190
    :goto_a
    return-void

    .line 188
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public g()Lcom/koushikdutta/async/callback/WritableCallback;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->d:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public h()Lcom/koushikdutta/async/callback/CompletedCallback;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->o:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->k:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->l:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public j()V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->m:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->a()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_17

    .line 265
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->m:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncNetworkSocket$2;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->b(Ljava/lang/Runnable;)V

    .line 283
    :cond_16
    :goto_16
    return-void

    .line 274
    :cond_17
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->i:Z

    if-nez v0, :cond_16

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->i:Z

    .line 279
    :try_start_1e
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->l:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->l:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_2c

    goto :goto_16

    .line 281
    :catch_2c
    move-exception v0

    goto :goto_16
.end method

.method public k()V
    .registers 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->m:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->a()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_17

    .line 294
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->m:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncNetworkSocket$3;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->b(Ljava/lang/Runnable;)V

    .line 314
    :cond_16
    :goto_16
    return-void

    .line 303
    :cond_17
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->i:Z

    if-eqz v0, :cond_16

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->i:Z

    .line 307
    :try_start_1e
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->l:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->l:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_3a

    .line 311
    :goto_2b
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->o()V

    .line 312
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->i()Z

    move-result v0

    if-nez v0, :cond_16

    .line 313
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->h:Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->c(Ljava/lang/Exception;)V

    goto :goto_16

    .line 309
    :catch_3a
    move-exception v0

    goto :goto_2b
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->i:Z

    return v0
.end method

.method public m()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->m:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method
