.class Lcom/control/imagecropper/CropImage$1$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/control/imagecropper/CropImage$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/control/imagecropper/CropImage$1;


# direct methods
.method constructor <init>(Lcom/control/imagecropper/CropImage$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 621
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    # getter for: Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage$1;->access$2(Lcom/control/imagecropper/CropImage$1;)Lcom/control/imagecropper/CropImage;

    move-result-object v4

    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    iget v1, v1, Lcom/control/imagecropper/CropImage$1;->mNumFaces:I

    if-le v1, v2, :cond_78

    move v1, v2

    :goto_f
    iput-boolean v1, v4, Lcom/control/imagecropper/CropImage;->mWaitingToPick:Z

    .line 622
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    iget v1, v1, Lcom/control/imagecropper/CropImage$1;->mNumFaces:I

    if-lez v1, :cond_88

    .line 623
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    iget v1, v1, Lcom/control/imagecropper/CropImage$1;->mNumFaces:I

    if-lt v0, v1, :cond_7a

    .line 629
    .end local v0    # "i":I
    :goto_1e
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    # getter for: Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage$1;->access$2(Lcom/control/imagecropper/CropImage$1;)Lcom/control/imagecropper/CropImage;

    move-result-object v1

    # getter for: Lcom/control/imagecropper/CropImage;->mImageView:Lcom/control/imagecropper/CropImageView;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$0(Lcom/control/imagecropper/CropImage;)Lcom/control/imagecropper/CropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/control/imagecropper/CropImageView;->invalidate()V

    .line 630
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    # getter for: Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage$1;->access$2(Lcom/control/imagecropper/CropImage$1;)Lcom/control/imagecropper/CropImage;

    move-result-object v1

    # getter for: Lcom/control/imagecropper/CropImage;->mImageView:Lcom/control/imagecropper/CropImageView;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$0(Lcom/control/imagecropper/CropImage;)Lcom/control/imagecropper/CropImageView;

    move-result-object v1

    iget-object v1, v1, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_62

    .line 631
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    # getter for: Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage$1;->access$2(Lcom/control/imagecropper/CropImage$1;)Lcom/control/imagecropper/CropImage;

    move-result-object v4

    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    # getter for: Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage$1;->access$2(Lcom/control/imagecropper/CropImage$1;)Lcom/control/imagecropper/CropImage;

    move-result-object v1

    # getter for: Lcom/control/imagecropper/CropImage;->mImageView:Lcom/control/imagecropper/CropImageView;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$0(Lcom/control/imagecropper/CropImage;)Lcom/control/imagecropper/CropImageView;

    move-result-object v1

    iget-object v1, v1, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/control/imagecropper/HighlightView;

    iput-object v1, v4, Lcom/control/imagecropper/CropImage;->mCrop:Lcom/control/imagecropper/HighlightView;

    .line 632
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    # getter for: Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage$1;->access$2(Lcom/control/imagecropper/CropImage$1;)Lcom/control/imagecropper/CropImage;

    move-result-object v1

    iget-object v1, v1, Lcom/control/imagecropper/CropImage;->mCrop:Lcom/control/imagecropper/HighlightView;

    invoke-virtual {v1, v2}, Lcom/control/imagecropper/HighlightView;->setFocus(Z)V

    .line 635
    :cond_62
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    iget v1, v1, Lcom/control/imagecropper/CropImage$1;->mNumFaces:I

    if-le v1, v2, :cond_77

    .line 636
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    # getter for: Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage$1;->access$2(Lcom/control/imagecropper/CropImage$1;)Lcom/control/imagecropper/CropImage;

    move-result-object v1

    const-string v2, "Multi face crop help"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 638
    :cond_77
    return-void

    :cond_78
    move v1, v3

    .line 621
    goto :goto_f

    .line 624
    .restart local v0    # "i":I
    :cond_7a
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    iget-object v4, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    iget-object v4, v4, Lcom/control/imagecropper/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v4, v4, v0

    # invokes: Lcom/control/imagecropper/CropImage$1;->handleFace(Landroid/media/FaceDetector$Face;)V
    invoke-static {v1, v4}, Lcom/control/imagecropper/CropImage$1;->access$0(Lcom/control/imagecropper/CropImage$1;Landroid/media/FaceDetector$Face;)V

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 627
    .end local v0    # "i":I
    :cond_88
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1$1;->this$1:Lcom/control/imagecropper/CropImage$1;

    # invokes: Lcom/control/imagecropper/CropImage$1;->makeDefault()V
    invoke-static {v1}, Lcom/control/imagecropper/CropImage$1;->access$1(Lcom/control/imagecropper/CropImage$1;)V

    goto :goto_1e
.end method
