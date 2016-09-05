.class public Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
.super Ljava/lang/Object;
.source "Engine.java"


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/EngineJob;

.field private final b:Lcom/bumptech/glide/request/ResourceCallback;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->b:Lcom/bumptech/glide/request/ResourceCallback;

    .line 53
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->a:Lcom/bumptech/glide/load/engine/EngineJob;

    .line 54
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->a:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->b:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/EngineJob;->b(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 58
    return-void
.end method
