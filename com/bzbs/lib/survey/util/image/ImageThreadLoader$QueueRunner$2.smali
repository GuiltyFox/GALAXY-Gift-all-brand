.class Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$2;
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

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$item:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$2;->this$1:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$2;->val$item:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$2;->val$item:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;->listener:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$ImageLoadedListener;

    if-eqz v0, :cond_f

    .line 93
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$2;->val$item:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;->listener:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$ImageLoadedListener;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueRunner$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$ImageLoadedListener;->imageLoaded(Landroid/graphics/Bitmap;)V

    .line 95
    :cond_f
    return-void
.end method
