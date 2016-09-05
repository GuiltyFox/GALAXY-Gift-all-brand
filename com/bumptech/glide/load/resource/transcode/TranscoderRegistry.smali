.class public Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
.super Ljava/lang/Object;
.source "TranscoderRegistry.java"


# static fields
.field private static final a:Lcom/bumptech/glide/util/MultiClassKey;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/util/MultiClassKey;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lcom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v0}, Lcom/bumptech/glide/util/MultiClassKey;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->a:Lcom/bumptech/glide/util/MultiClassKey;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    invoke-static {}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->b()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    .line 56
    :cond_a
    return-object v0

    .line 48
    :cond_b
    sget-object v1, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->a:Lcom/bumptech/glide/util/MultiClassKey;

    monitor-enter v1

    .line 49
    :try_start_e
    sget-object v0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->a:Lcom/bumptech/glide/util/MultiClassKey;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/util/MultiClassKey;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->b:Ljava/util/Map;

    sget-object v2, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->a:Lcom/bumptech/glide/util/MultiClassKey;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 51
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_45

    .line 52
    if-nez v0, :cond_a

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No transcoder registered for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->b:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method
