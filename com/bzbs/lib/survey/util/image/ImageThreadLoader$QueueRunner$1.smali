.class Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$1;
.super Ljava/lang/Object;
.source "ImageThreadLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;

.field final synthetic val$item:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;)V
    .registers 3
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$1;->this$1:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$1;->val$item:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 73
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$1;->val$item:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;->listener:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$ImageLoadedListener;

    if-eqz v1, :cond_2b

    .line 77
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$1;->this$1:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;->this$0:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;

    # getter for: Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->Cache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;->access$200(Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$1;->val$item:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 78
    .local v0, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_2b

    .line 79
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$1;->val$item:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;

    iget-object v2, v1, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;->listener:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$ImageLoadedListener;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v2, v1}, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$ImageLoadedListener;->imageLoaded(Landroid/graphics/Bitmap;)V

    .line 82
    .end local v0    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_2b
    return-void
.end method
