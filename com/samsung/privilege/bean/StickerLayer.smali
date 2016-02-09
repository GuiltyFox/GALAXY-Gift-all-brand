.class public Lcom/samsung/privilege/bean/StickerLayer;
.super Ljava/lang/Object;
.source "StickerLayer.java"


# instance fields
.field public ImageSrc:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public Sticker:Lcom/loopj/android/image/SmartImageView;

.field public matrix:Landroid/graphics/Matrix;

.field public mid:Landroid/graphics/PointF;

.field public mode:I

.field public oldDist:F

.field public savedMatrix:Landroid/graphics/Matrix;

.field public start:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->Name:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->ImageSrc:Ljava/lang/String;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->matrix:Landroid/graphics/Matrix;

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->savedMatrix:Landroid/graphics/Matrix;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->mode:I

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->start:Landroid/graphics/PointF;

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->mid:Landroid/graphics/PointF;

    .line 33
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->oldDist:F

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/image/SmartImageView;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "sticker"    # Lcom/loopj/android/image/SmartImageView;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->Name:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->ImageSrc:Ljava/lang/String;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->matrix:Landroid/graphics/Matrix;

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->savedMatrix:Landroid/graphics/Matrix;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->mode:I

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->start:Landroid/graphics/PointF;

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->mid:Landroid/graphics/PointF;

    .line 33
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/samsung/privilege/bean/StickerLayer;->oldDist:F

    .line 40
    iput-object p1, p0, Lcom/samsung/privilege/bean/StickerLayer;->Name:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/samsung/privilege/bean/StickerLayer;->ImageSrc:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/samsung/privilege/bean/StickerLayer;->Sticker:Lcom/loopj/android/image/SmartImageView;

    .line 43
    return-void
.end method
