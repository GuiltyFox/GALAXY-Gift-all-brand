.class Lcom/koushikdutta/async/PushParser$UntilWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# instance fields
.field a:B

.field b:Lcom/koushikdutta/async/callback/DataCallback;


# direct methods
.method public constructor <init>(BLcom/koushikdutta/async/callback/DataCallback;)V
    .registers 4

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    .line 120
    iput-byte p1, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->a:B

    .line 121
    iput-object p2, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->b:Lcom/koushikdutta/async/callback/DataCallback;

    .line 122
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 126
    .line 127
    new-instance v5, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v5}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    move v0, v1

    .line 128
    :goto_8
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->o()I

    move-result v2

    if-lez v2, :cond_3d

    .line 129
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->n()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 130
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    move v2, v3

    .line 132
    :goto_16
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_2f

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iget-byte v4, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->a:B

    if-ne v0, v4, :cond_2c

    move v4, v1

    :goto_25
    if-nez v4, :cond_2e

    .line 133
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_16

    :cond_2c
    move v4, v3

    .line 132
    goto :goto_25

    :cond_2e
    move v0, v4

    .line 135
    :cond_2f
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 136
    if-eqz v0, :cond_46

    .line 137
    invoke-virtual {p2, v6}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)V

    .line 138
    invoke-virtual {p2, v5, v2}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 140
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->i()B

    .line 147
    :cond_3d
    iget-object v1, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->b:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-interface {v1, p1, v5}, Lcom/koushikdutta/async/callback/DataCallback;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 149
    if-eqz v0, :cond_45

    .line 150
    const/4 p0, 0x0

    .line 152
    :cond_45
    return-object p0

    .line 143
    :cond_46
    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_8
.end method
