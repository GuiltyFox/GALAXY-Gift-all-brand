.class Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/data/DataFetcher;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->a:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 60
    iput-object p2, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->b:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 61
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->a:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->a:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->a()V

    .line 102
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->b:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_12

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->b:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->a()V

    .line 105
    :cond_12
    return-void
.end method

.method public b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->a:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_50

    .line 70
    :try_start_6
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->a:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher;->a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_22

    move-object v1, v0

    .line 81
    :goto_f
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->b:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_1c

    .line 83
    :try_start_13
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->b:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher;->a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_3a

    move-object v2, v0

    .line 93
    :cond_1c
    new-instance v0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    .line 71
    :catch_22
    move-exception v0

    .line 72
    const-string/jumbo v1, "IVML"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 73
    const-string/jumbo v1, "IVML"

    const-string/jumbo v3, "Exception fetching input stream, trying ParcelFileDescriptor"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_35
    iget-object v1, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->b:Lcom/bumptech/glide/load/data/DataFetcher;

    if-nez v1, :cond_50

    .line 76
    throw v0

    .line 84
    :catch_3a
    move-exception v0

    .line 85
    const-string/jumbo v3, "IVML"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 86
    const-string/jumbo v3, "IVML"

    const-string/jumbo v4, "Exception fetching ParcelFileDescriptor"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :cond_4d
    if-nez v1, :cond_1c

    .line 89
    throw v0

    :cond_50
    move-object v1, v2

    goto :goto_f
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->a:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_b

    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->a:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->b()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->b:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public c()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->a:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->a:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->c()V

    .line 122
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->b:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_12

    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->b:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->c()V

    .line 125
    :cond_12
    return-void
.end method
