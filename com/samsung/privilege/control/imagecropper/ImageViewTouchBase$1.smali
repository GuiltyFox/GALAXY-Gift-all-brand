.class Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;->a(Lcom/samsung/privilege/control/imagecropper/RotateBitmap;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/control/imagecropper/RotateBitmap;

.field final synthetic b:Z

.field final synthetic c:Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;Lcom/samsung/privilege/control/imagecropper/RotateBitmap;Z)V
    .registers 4

    .prologue
    .line 166
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$1;->c:Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;

    iput-object p2, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$1;->a:Lcom/samsung/privilege/control/imagecropper/RotateBitmap;

    iput-boolean p3, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$1;->c:Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$1;->a:Lcom/samsung/privilege/control/imagecropper/RotateBitmap;

    iget-boolean v2, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$1;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;->a(Lcom/samsung/privilege/control/imagecropper/RotateBitmap;Z)V

    .line 170
    return-void
.end method
