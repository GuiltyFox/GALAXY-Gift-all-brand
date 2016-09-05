.class Lcom/samsung/privilege/control/imagecropper/CropImage$6;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/imagecropper/CropImage;->b()V
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/samsung/privilege/control/imagecropper/CropImage;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 426
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$6;->b:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iput-object p2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$6;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$6;->b:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$6;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)V

    .line 430
    return-void
.end method
