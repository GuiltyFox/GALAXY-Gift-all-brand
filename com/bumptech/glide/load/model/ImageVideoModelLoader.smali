.class public Lcom/bumptech/glide/load/model/ImageVideoModelLoader;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<TA;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_10

    if-nez p2, :cond_10

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "At least one of streamLoader and fileDescriptorLoader must be non null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_10
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->a:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 32
    iput-object p2, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->b:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->a:Lcom/bumptech/glide/load/model/ModelLoader;

    if-eqz v0, :cond_21

    .line 39
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->a:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    .line 42
    :goto_b
    iget-object v2, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->b:Lcom/bumptech/glide/load/model/ModelLoader;

    if-eqz v2, :cond_1f

    .line 43
    iget-object v2, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->b:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v2, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v2

    .line 46
    :goto_15
    if-nez v0, :cond_19

    if-eqz v2, :cond_1e

    .line 47
    :cond_19
    new-instance v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;-><init>(Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/data/DataFetcher;)V

    .line 49
    :cond_1e
    return-object v1

    :cond_1f
    move-object v2, v1

    goto :goto_15

    :cond_21
    move-object v0, v1

    goto :goto_b
.end method
