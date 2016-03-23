.class Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageRotateBitmapReset(Lit/sephiroth/android/library/imagezoom/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

.field final synthetic val$bitmap:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

.field final synthetic val$reset:Z


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;Lit/sephiroth/android/library/imagezoom/RotateBitmap;Z)V
    .registers 4
    .param p1, "this$0"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    .prologue
    .line 100
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput-object p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->val$bitmap:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    iput-boolean p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->val$reset:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 104
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->val$bitmap:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->val$bitmap:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getRotation()I

    move-result v2

    iget-boolean v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->val$reset:Z

    invoke-virtual {v0, v1, v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmapReset(Landroid/graphics/Bitmap;IZ)V

    .line 105
    return-void
.end method
