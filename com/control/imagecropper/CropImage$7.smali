.class Lcom/control/imagecropper/CropImage$7;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/control/imagecropper/CropImage;->onSaveClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/control/imagecropper/CropImage;

.field private final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/control/imagecropper/CropImage$7;->this$0:Lcom/control/imagecropper/CropImage;

    iput-object p2, p0, Lcom/control/imagecropper/CropImage$7;->val$b:Landroid/graphics/Bitmap;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$7;->this$0:Lcom/control/imagecropper/CropImage;

    iget-object v1, p0, Lcom/control/imagecropper/CropImage$7;->val$b:Landroid/graphics/Bitmap;

    # invokes: Lcom/control/imagecropper/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/control/imagecropper/CropImage;->access$9(Lcom/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)V

    .line 437
    return-void
.end method
