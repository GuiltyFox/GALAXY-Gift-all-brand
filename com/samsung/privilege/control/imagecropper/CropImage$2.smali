.class Lcom/samsung/privilege/control/imagecropper/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/imagecropper/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/control/imagecropper/CropImage;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V
    .registers 2

    .prologue
    .line 211
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$2;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$2;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->a(Lcom/samsung/privilege/control/imagecropper/CropImage;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 221
    :goto_5
    return-void

    .line 218
    :catch_6
    move-exception v0

    .line 219
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$2;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-virtual {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->finish()V

    goto :goto_5
.end method
