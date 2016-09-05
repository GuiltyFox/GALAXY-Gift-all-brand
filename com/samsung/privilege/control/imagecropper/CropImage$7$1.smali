.class Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/imagecropper/CropImage$7;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/CropImage$7;)V
    .registers 2

    .prologue
    .line 607
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 610
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v3, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->d:I

    if-le v0, v1, :cond_2a

    move v0, v1

    :goto_d
    iput-boolean v0, v3, Lcom/samsung/privilege/control/imagecropper/CropImage;->b:Z

    .line 611
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->d:I

    if-lez v0, :cond_2c

    move v0, v2

    .line 612
    :goto_16
    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget v3, v3, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->d:I

    if-ge v0, v3, :cond_31

    .line 613
    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v4, v4, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->c:[Landroid/media/FaceDetector$Face;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->a(Lcom/samsung/privilege/control/imagecropper/CropImage$7;Landroid/media/FaceDetector$Face;)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2a
    move v0, v2

    .line 610
    goto :goto_d

    .line 616
    :cond_2c
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->a(Lcom/samsung/privilege/control/imagecropper/CropImage$7;)V

    .line 618
    :cond_31
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->invalidate()V

    .line 619
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_6b

    .line 620
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v3, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;

    iput-object v0, v3, Lcom/samsung/privilege/control/imagecropper/CropImage;->d:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    .line 621
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->d:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a(Z)V

    .line 624
    :cond_6b
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->d:I

    if-le v0, v1, :cond_7f

    .line 625
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;->a:Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    const-string/jumbo v1, "Multi face crop help"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 627
    :cond_7f
    return-void
.end method
