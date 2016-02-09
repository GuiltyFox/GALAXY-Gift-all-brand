.class Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;
.super Ljava/lang/Object;
.source "ImageLoaderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->submit(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field private final synthetic val$task:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->val$task:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 69
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->val$task:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getLoadingUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 70
    .local v0, "isImageCachedOnDisc":Z
    if-eqz v0, :cond_22

    .line 71
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    # getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cachedImageLoadingExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->access$0(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->val$task:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 75
    :goto_21
    return-void

    .line 73
    :cond_22
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    # getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->imageLoadingExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->access$1(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->val$task:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_21
.end method
