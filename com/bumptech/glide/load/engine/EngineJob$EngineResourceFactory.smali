.class Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
.super Ljava/lang/Object;
.source "EngineJob.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/Resource;Z)Lcom/bumptech/glide/load/engine/EngineResource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;Z)",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;Z)V

    return-object v0
.end method
