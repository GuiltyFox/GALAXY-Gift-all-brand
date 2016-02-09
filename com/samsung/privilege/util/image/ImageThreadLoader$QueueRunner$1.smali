.class Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner$1;
.super Ljava/lang/Object;
.source "ImageThreadLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner;

.field private final synthetic val$item:Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueItem;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner;Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueItem;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner$1;->this$1:Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner;

    iput-object p2, p0, Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner$1;->val$item:Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueItem;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 72
    iget-object v1, p0, Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner$1;->val$item:Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueItem;

    iget-object v1, v1, Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueItem;->listener:Lcom/samsung/privilege/util/image/ImageThreadLoader$ImageLoadedListener;

    if-eqz v1, :cond_2d

    .line 76
    iget-object v1, p0, Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner$1;->this$1:Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner;

    # getter for: Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner;->this$0:Lcom/samsung/privilege/util/image/ImageThreadLoader;
    invoke-static {v1}, Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner;->access$1(Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner;)Lcom/samsung/privilege/util/image/ImageThreadLoader;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/util/image/ImageThreadLoader;->Cache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/samsung/privilege/util/image/ImageThreadLoader;->access$1(Lcom/samsung/privilege/util/image/ImageThreadLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner$1;->val$item:Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueItem;

    iget-object v2, v2, Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueItem;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 77
    .local v0, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_2d

    .line 78
    iget-object v1, p0, Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueRunner$1;->val$item:Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueItem;

    iget-object v2, v1, Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueItem;->listener:Lcom/samsung/privilege/util/image/ImageThreadLoader$ImageLoadedListener;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v2, v1}, Lcom/samsung/privilege/util/image/ImageThreadLoader$ImageLoadedListener;->imageLoaded(Landroid/graphics/Bitmap;)V

    .line 81
    .end local v0    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_2d
    return-void
.end method
