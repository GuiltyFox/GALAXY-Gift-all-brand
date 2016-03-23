.class Lcom/samsung/privilege/control/imagecropper/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/imagecropper/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/control/imagecropper/CropImage;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$2;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$2;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    # invokes: Lcom/samsung/privilege/control/imagecropper/CropImage;->onSaveClicked()V
    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->access$000(Lcom/samsung/privilege/control/imagecropper/CropImage;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 219
    :goto_5
    return-void

    .line 216
    :catch_6
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$2;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-virtual {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->finish()V

    goto :goto_5
.end method
