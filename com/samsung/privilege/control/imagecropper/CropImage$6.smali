.class Lcom/samsung/privilege/control/imagecropper/CropImage$6;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/imagecropper/CropImage;->onSaveClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/control/imagecropper/CropImage;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$6;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iput-object p2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$6;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$6;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$6;->val$b:Landroid/graphics/Bitmap;

    # invokes: Lcom/samsung/privilege/control/imagecropper/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->access$400(Lcom/samsung/privilege/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)V

    .line 436
    return-void
.end method
