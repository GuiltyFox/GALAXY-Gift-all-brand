.class Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/imagecropper/CropImage$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/CropImage$7;)V
    .registers 2
    .param p1, "this$1"    # Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 620
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v4, v1, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->mNumFaces:I

    if-le v1, v2, :cond_2a

    move v1, v2

    :goto_d
    iput-boolean v1, v4, Lcom/samsung/privilege/control/imagecropper/CropImage;->mWaitingToPick:Z

    .line 621
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->mNumFaces:I

    if-lez v1, :cond_2c

    .line 622
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->mNumFaces:I

    if-ge v0, v1, :cond_31

    .line 623
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v4, v4, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v4, v4, v0

    # invokes: Lcom/samsung/privilege/control/imagecropper/CropImage$7;->handleFace(Landroid/media/FaceDetector$Face;)V
    invoke-static {v1, v4}, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->access$900(Lcom/samsung/privilege/control/imagecropper/CropImage$7;Landroid/media/FaceDetector$Face;)V

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .end local v0    # "i":I
    :cond_2a
    move v1, v3

    .line 620
    goto :goto_d

    .line 626
    :cond_2c
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    # invokes: Lcom/samsung/privilege/control/imagecropper/CropImage$7;->makeDefault()V
    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->access$1000(Lcom/samsung/privilege/control/imagecropper/CropImage$7;)V

    .line 628
    :cond_31
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    # getter for: Lcom/samsung/privilege/control/imagecropper/CropImage;->mImageView:Lcom/samsung/privilege/control/imagecropper/CropImageView;
    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->access$200(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->invalidate()V

    .line 629
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    # getter for: Lcom/samsung/privilege/control/imagecropper/CropImage;->mImageView:Lcom/samsung/privilege/control/imagecropper/CropImageView;
    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->access$200(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_6b

    .line 630
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v4, v1, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    # getter for: Lcom/samsung/privilege/control/imagecropper/CropImage;->mImageView:Lcom/samsung/privilege/control/imagecropper/CropImageView;
    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->access$200(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/control/imagecropper/HighlightView;

    iput-object v1, v4, Lcom/samsung/privilege/control/imagecropper/CropImage;->mCrop:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    .line 631
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImage;->mCrop:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->setFocus(Z)V

    .line 634
    :cond_6b
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->mNumFaces:I

    if-le v1, v2, :cond_7f

    .line 635
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->this$1:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    const-string/jumbo v2, "Multi face crop help"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 637
    :cond_7f
    return-void
.end method
