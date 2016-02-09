.class Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "PhotoTouchLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/util/image/PhotoTouchLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

.field imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

.field final synthetic this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/util/image/PhotoTouchLoader;Landroid/graphics/Bitmap;Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .registers 4
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "i"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .prologue
    .line 320
    iput-object p1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p2, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    .line 322
    iput-object p3, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 323
    return-void
.end method

.method public constructor <init>(Lic/buzzebeeslib/util/image/PhotoTouchLoader;Landroid/graphics/Bitmap;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V
    .registers 4
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "i"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    .prologue
    .line 325
    iput-object p1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p2, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    .line 327
    iput-object p3, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    .line 328
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xff

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    if-eqz v0, :cond_33

    .line 333
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_60

    .line 334
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 338
    :goto_16
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmapReset(Landroid/graphics/Bitmap;IZ)V

    .line 339
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    iget-object v0, v0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->ProgressBarLoading:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2e

    .line 340
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    iget-object v0, v0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->ProgressBarLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    iput-object v6, v0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->ProgressBarLoading:Landroid/widget/ProgressBar;

    .line 343
    :cond_2e
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setAlpha(I)V

    .line 346
    :cond_33
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    if-eqz v0, :cond_5f

    .line 347
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6c

    .line 348
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 352
    :goto_42
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->setImageBitmapReset(Landroid/graphics/Bitmap;IZ)V

    .line 353
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    iget-object v0, v0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->ProgressBarLoading:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5a

    .line 354
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    iget-object v0, v0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->ProgressBarLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    iput-object v6, v0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->ProgressBarLoading:Landroid/widget/ProgressBar;

    .line 357
    :cond_5a
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v0, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->setAlpha(I)V

    .line 360
    :cond_5f
    return-void

    .line 336
    :cond_60
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    # getter for: Lic/buzzebeeslib/util/image/PhotoTouchLoader;->stub_id:I
    invoke-static {v1}, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->access$0(Lic/buzzebeeslib/util/image/PhotoTouchLoader;)I

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageResource(I)V

    goto :goto_16

    .line 350
    :cond_6c
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;->this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    # getter for: Lic/buzzebeeslib/util/image/PhotoTouchLoader;->stub_id:I
    invoke-static {v1}, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->access$0(Lic/buzzebeeslib/util/image/PhotoTouchLoader;)I

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->setImageResource(I)V

    goto :goto_42
.end method
