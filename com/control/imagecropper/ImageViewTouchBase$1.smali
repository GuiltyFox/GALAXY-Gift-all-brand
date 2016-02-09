.class Lcom/control/imagecropper/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/control/imagecropper/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/control/imagecropper/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/control/imagecropper/ImageViewTouchBase;

.field private final synthetic val$bitmap:Lcom/control/imagecropper/RotateBitmap;

.field private final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/control/imagecropper/ImageViewTouchBase;Lcom/control/imagecropper/RotateBitmap;Z)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/control/imagecropper/ImageViewTouchBase$1;->this$0:Lcom/control/imagecropper/ImageViewTouchBase;

    iput-object p2, p0, Lcom/control/imagecropper/ImageViewTouchBase$1;->val$bitmap:Lcom/control/imagecropper/RotateBitmap;

    iput-boolean p3, p0, Lcom/control/imagecropper/ImageViewTouchBase$1;->val$resetSupp:Z

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase$1;->this$0:Lcom/control/imagecropper/ImageViewTouchBase;

    iget-object v1, p0, Lcom/control/imagecropper/ImageViewTouchBase$1;->val$bitmap:Lcom/control/imagecropper/RotateBitmap;

    iget-boolean v2, p0, Lcom/control/imagecropper/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/control/imagecropper/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/control/imagecropper/RotateBitmap;Z)V

    .line 170
    return-void
.end method
