.class Lcom/control/imagecropper/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/control/imagecropper/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/control/imagecropper/CropImage;


# direct methods
.method constructor <init>(Lcom/control/imagecropper/CropImage;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/control/imagecropper/CropImage$2;->this$0:Lcom/control/imagecropper/CropImage;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$2;->this$0:Lcom/control/imagecropper/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/control/imagecropper/CropImage;->setResult(I)V

    .line 192
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$2;->this$0:Lcom/control/imagecropper/CropImage;

    invoke-virtual {v0}, Lcom/control/imagecropper/CropImage;->finish()V

    .line 193
    return-void
.end method
