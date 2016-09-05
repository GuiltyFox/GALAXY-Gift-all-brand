.class Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/EngineJob$1;)V
    .registers 2

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_a

    const/4 v0, 0x2

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1b

    .line 200
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 201
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_17

    .line 202
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->a(Lcom/bumptech/glide/load/engine/EngineJob;)V

    :goto_15
    move v0, v1

    .line 209
    :goto_16
    return v0

    .line 204
    :cond_17
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->b(Lcom/bumptech/glide/load/engine/EngineJob;)V

    goto :goto_15

    .line 209
    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method
