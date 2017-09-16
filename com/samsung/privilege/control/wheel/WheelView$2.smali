.class Lcom/samsung/privilege/control/wheel/WheelView$2;
.super Landroid/graphics/drawable/Drawable;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/wheel/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/control/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/wheel/WheelView;)V
    .registers 2

    .prologue
    .line 331
    iput-object p1, p0, Lcom/samsung/privilege/control/wheel/WheelView$2;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 334
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$2;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v0, v0, Lcom/samsung/privilege/control/wheel/WheelView;->l:I

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x6

    int-to-float v1, v0

    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$2;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    invoke-static {v0}, Lcom/samsung/privilege/control/wheel/WheelView;->b(Lcom/samsung/privilege/control/wheel/WheelView;)[I

    move-result-object v0

    aget v0, v0, v4

    int-to-float v2, v0

    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$2;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v0, v0, Lcom/samsung/privilege/control/wheel/WheelView;->l:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    int-to-float v3, v0

    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$2;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    invoke-static {v0}, Lcom/samsung/privilege/control/wheel/WheelView;->b(Lcom/samsung/privilege/control/wheel/WheelView;)[I

    move-result-object v0

    aget v0, v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$2;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget-object v5, v0, Lcom/samsung/privilege/control/wheel/WheelView;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$2;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v0, v0, Lcom/samsung/privilege/control/wheel/WheelView;->l:I

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x6

    int-to-float v1, v0

    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$2;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    invoke-static {v0}, Lcom/samsung/privilege/control/wheel/WheelView;->b(Lcom/samsung/privilege/control/wheel/WheelView;)[I

    move-result-object v0

    aget v0, v0, v6

    int-to-float v2, v0

    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$2;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v0, v0, Lcom/samsung/privilege/control/wheel/WheelView;->l:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    int-to-float v3, v0

    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$2;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    invoke-static {v0}, Lcom/samsung/privilege/control/wheel/WheelView;->b(Lcom/samsung/privilege/control/wheel/WheelView;)[I

    move-result-object v0

    aget v0, v0, v6

    int-to-float v4, v0

    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$2;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget-object v5, v0, Lcom/samsung/privilege/control/wheel/WheelView;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 336
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 341
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 346
    return-void
.end method
