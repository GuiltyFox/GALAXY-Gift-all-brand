.class Lcom/control/imagecropper/CropImageView;
.super Lcom/control/imagecropper/ImageViewTouchBase;
.source "CropImageView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/control/imagecropper/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/control/imagecropper/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/control/imagecropper/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/control/imagecropper/CropImageView;->mMotionHighlightView:Lcom/control/imagecropper/HighlightView;

    .line 39
    iput-object p1, p0, Lcom/control/imagecropper/CropImageView;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/control/imagecropper/HighlightView;)V
    .registers 15
    .param p1, "hv"    # Lcom/control/imagecropper/HighlightView;

    .prologue
    .line 224
    iget-object v1, p1, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 226
    .local v1, "drawRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 227
    .local v5, "width":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 229
    .local v2, "height":F
    invoke-virtual {p0}, Lcom/control/imagecropper/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 230
    .local v4, "thisWidth":F
    invoke-virtual {p0}, Lcom/control/imagecropper/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 232
    .local v3, "thisHeight":F
    div-float v9, v4, v5

    const v10, 0x3f19999a

    mul-float v6, v9, v10

    .line 233
    .local v6, "z1":F
    div-float v9, v3, v2

    const v10, 0x3f19999a

    mul-float v7, v9, v10

    .line 235
    .local v7, "z2":F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 236
    .local v8, "zoom":F
    invoke-virtual {p0}, Lcom/control/imagecropper/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 237
    const/high16 v9, 0x3f800000

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 238
    invoke-virtual {p0}, Lcom/control/imagecropper/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-lez v9, :cond_6f

    .line 239
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    .line 240
    iget-object v10, p1, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 241
    .local v0, "coordinates":[F
    invoke-virtual {p0}, Lcom/control/imagecropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 242
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x43960000

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/control/imagecropper/CropImageView;->zoomTo(FFFF)V

    .line 245
    .end local v0    # "coordinates":[F
    :cond_6f
    invoke-direct {p0, p1}, Lcom/control/imagecropper/CropImageView;->ensureVisible(Lcom/control/imagecropper/HighlightView;)V

    .line 246
    return-void
.end method

.method private ensureVisible(Lcom/control/imagecropper/HighlightView;)V
    .registers 12
    .param p1, "hv"    # Lcom/control/imagecropper/HighlightView;

    .prologue
    const/4 v9, 0x0

    .line 204
    iget-object v6, p1, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 206
    .local v6, "r":Landroid/graphics/Rect;
    iget v7, p0, Lcom/control/imagecropper/CropImageView;->mLeft:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 207
    .local v1, "panDeltaX1":I
    iget v7, p0, Lcom/control/imagecropper/CropImageView;->mRight:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 209
    .local v2, "panDeltaX2":I
    iget v7, p0, Lcom/control/imagecropper/CropImageView;->mTop:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 210
    .local v4, "panDeltaY1":I
    iget v7, p0, Lcom/control/imagecropper/CropImageView;->mBottom:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 212
    .local v5, "panDeltaY2":I
    if-eqz v1, :cond_37

    move v0, v1

    .line 213
    .local v0, "panDeltaX":I
    :goto_2a
    if-eqz v4, :cond_39

    move v3, v4

    .line 215
    .local v3, "panDeltaY":I
    :goto_2d
    if-nez v0, :cond_31

    if-eqz v3, :cond_36

    .line 216
    :cond_31
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/control/imagecropper/CropImageView;->panBy(FF)V

    .line 218
    :cond_36
    return-void

    .end local v0    # "panDeltaX":I
    .end local v3    # "panDeltaY":I
    :cond_37
    move v0, v2

    .line 212
    goto :goto_2a

    .restart local v0    # "panDeltaX":I
    :cond_39
    move v3, v5

    .line 213
    goto :goto_2d
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 87
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_17

    .line 93
    const/4 v2, 0x0

    :goto_b
    iget-object v3, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_29

    .line 104
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/control/imagecropper/CropImageView;->invalidate()V

    .line 105
    return-void

    .line 88
    :cond_17
    iget-object v3, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/control/imagecropper/HighlightView;

    .line 89
    .local v1, "hv":Lcom/control/imagecropper/HighlightView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/control/imagecropper/HighlightView;->setFocus(Z)V

    .line 90
    invoke-virtual {v1}, Lcom/control/imagecropper/HighlightView;->invalidate()V

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 94
    .end local v1    # "hv":Lcom/control/imagecropper/HighlightView;
    :cond_29
    iget-object v3, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/control/imagecropper/HighlightView;

    .line 95
    .restart local v1    # "hv":Lcom/control/imagecropper/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/control/imagecropper/HighlightView;->getHit(FF)I

    move-result v0

    .line 96
    .local v0, "edge":I
    if-eq v0, v5, :cond_4c

    .line 97
    invoke-virtual {v1}, Lcom/control/imagecropper/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_13

    .line 98
    invoke-virtual {v1, v5}, Lcom/control/imagecropper/HighlightView;->setFocus(Z)V

    .line 99
    invoke-virtual {v1}, Lcom/control/imagecropper/HighlightView;->invalidate()V

    goto :goto_13

    .line 93
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method


# virtual methods
.method public add(Lcom/control/imagecropper/HighlightView;)V
    .registers 3
    .param p1, "hv"    # Lcom/control/imagecropper/HighlightView;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p0}, Lcom/control/imagecropper/CropImageView;->invalidate()V

    .line 261
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/control/imagecropper/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_d

    .line 255
    return-void

    .line 253
    :cond_d
    iget-object v1, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/control/imagecropper/HighlightView;

    invoke-virtual {v1, p1}, Lcom/control/imagecropper/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 24
    invoke-super/range {p0 .. p5}, Lcom/control/imagecropper/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 25
    iget-object v1, p0, Lcom/control/imagecropper/CropImageView;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    invoke-virtual {v1}, Lcom/control/imagecropper/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 26
    iget-object v1, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_18

    .line 34
    :cond_17
    return-void

    .line 26
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/HighlightView;

    .line 27
    .local v0, "hv":Lcom/control/imagecropper/HighlightView;
    iget-object v2, v0, Lcom/control/imagecropper/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/control/imagecropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 28
    invoke-virtual {v0}, Lcom/control/imagecropper/HighlightView;->invalidate()V

    .line 29
    iget-boolean v2, v0, Lcom/control/imagecropper/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_11

    .line 30
    invoke-direct {p0, v0}, Lcom/control/imagecropper/CropImageView;->centerBasedOnHighlightView(Lcom/control/imagecropper/HighlightView;)V

    goto :goto_11
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 110
    iget-object v0, p0, Lcom/control/imagecropper/CropImageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/control/imagecropper/CropImage;

    .line 111
    .local v0, "cropImage":Lcom/control/imagecropper/CropImage;
    iget-boolean v5, v0, Lcom/control/imagecropper/CropImage;->mSaving:Z

    if-eqz v5, :cond_c

    move v5, v6

    .line 198
    :goto_b
    return v5

    .line 115
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_10a

    .line 183
    :cond_13
    :goto_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_114

    :cond_1a
    :goto_1a
    move v5, v7

    .line 198
    goto :goto_b

    .line 117
    :pswitch_1c
    iget-boolean v5, v0, Lcom/control/imagecropper/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_24

    .line 118
    invoke-direct {p0, p1}, Lcom/control/imagecropper/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_13

    .line 120
    :cond_24
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    iget-object v5, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_13

    .line 121
    iget-object v5, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/control/imagecropper/HighlightView;

    .line 122
    .local v2, "hv":Lcom/control/imagecropper/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/control/imagecropper/HighlightView;->getHit(FF)I

    move-result v1

    .line 123
    .local v1, "edge":I
    if-eq v1, v7, :cond_62

    .line 124
    iput v1, p0, Lcom/control/imagecropper/CropImageView;->mMotionEdge:I

    .line 125
    iput-object v2, p0, Lcom/control/imagecropper/CropImageView;->mMotionHighlightView:Lcom/control/imagecropper/HighlightView;

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/control/imagecropper/CropImageView;->mLastX:F

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/control/imagecropper/CropImageView;->mLastY:F

    .line 128
    iget-object v6, p0, Lcom/control/imagecropper/CropImageView;->mMotionHighlightView:Lcom/control/imagecropper/HighlightView;

    .line 129
    const/16 v5, 0x20

    if-ne v1, v5, :cond_5f

    .line 130
    sget-object v5, Lcom/control/imagecropper/HighlightView$ModifyMode;->Move:Lcom/control/imagecropper/HighlightView$ModifyMode;

    .line 128
    :goto_5b
    invoke-virtual {v6, v5}, Lcom/control/imagecropper/HighlightView;->setMode(Lcom/control/imagecropper/HighlightView$ModifyMode;)V

    goto :goto_13

    .line 131
    :cond_5f
    sget-object v5, Lcom/control/imagecropper/HighlightView$ModifyMode;->Grow:Lcom/control/imagecropper/HighlightView$ModifyMode;

    goto :goto_5b

    .line 120
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 138
    .end local v1    # "edge":I
    .end local v2    # "hv":Lcom/control/imagecropper/HighlightView;
    .end local v3    # "i":I
    :pswitch_65
    iget-boolean v5, v0, Lcom/control/imagecropper/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_af

    .line 139
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6a
    iget-object v5, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_76

    .line 159
    .end local v3    # "i":I
    :cond_72
    :goto_72
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/control/imagecropper/CropImageView;->mMotionHighlightView:Lcom/control/imagecropper/HighlightView;

    goto :goto_13

    .line 140
    .restart local v3    # "i":I
    :cond_76
    iget-object v5, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/control/imagecropper/HighlightView;

    .line 141
    .restart local v2    # "hv":Lcom/control/imagecropper/HighlightView;
    invoke-virtual {v2}, Lcom/control/imagecropper/HighlightView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 142
    iput-object v2, v0, Lcom/control/imagecropper/CropImage;->mCrop:Lcom/control/imagecropper/HighlightView;

    .line 143
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_87
    iget-object v5, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_9b

    .line 149
    invoke-direct {p0, v2}, Lcom/control/imagecropper/CropImageView;->centerBasedOnHighlightView(Lcom/control/imagecropper/HighlightView;)V

    .line 150
    iget-object v5, p0, Lcom/control/imagecropper/CropImageView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/control/imagecropper/CropImage;

    iput-boolean v6, v5, Lcom/control/imagecropper/CropImage;->mWaitingToPick:Z

    move v5, v7

    .line 151
    goto/16 :goto_b

    .line 144
    :cond_9b
    if-ne v4, v3, :cond_a0

    .line 143
    :goto_9d
    add-int/lit8 v4, v4, 0x1

    goto :goto_87

    .line 147
    :cond_a0
    iget-object v5, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/control/imagecropper/HighlightView;

    invoke-virtual {v5, v7}, Lcom/control/imagecropper/HighlightView;->setHidden(Z)V

    goto :goto_9d

    .line 139
    .end local v4    # "j":I
    :cond_ac
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 154
    .end local v2    # "hv":Lcom/control/imagecropper/HighlightView;
    .end local v3    # "i":I
    :cond_af
    iget-object v5, p0, Lcom/control/imagecropper/CropImageView;->mMotionHighlightView:Lcom/control/imagecropper/HighlightView;

    if-eqz v5, :cond_72

    .line 155
    iget-object v5, p0, Lcom/control/imagecropper/CropImageView;->mMotionHighlightView:Lcom/control/imagecropper/HighlightView;

    invoke-direct {p0, v5}, Lcom/control/imagecropper/CropImageView;->centerBasedOnHighlightView(Lcom/control/imagecropper/HighlightView;)V

    .line 156
    iget-object v5, p0, Lcom/control/imagecropper/CropImageView;->mMotionHighlightView:Lcom/control/imagecropper/HighlightView;

    .line 157
    sget-object v6, Lcom/control/imagecropper/HighlightView$ModifyMode;->None:Lcom/control/imagecropper/HighlightView$ModifyMode;

    .line 156
    invoke-virtual {v5, v6}, Lcom/control/imagecropper/HighlightView;->setMode(Lcom/control/imagecropper/HighlightView$ModifyMode;)V

    goto :goto_72

    .line 162
    :pswitch_c0
    iget-boolean v5, v0, Lcom/control/imagecropper/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_c9

    .line 163
    invoke-direct {p0, p1}, Lcom/control/imagecropper/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_13

    .line 164
    :cond_c9
    iget-object v5, p0, Lcom/control/imagecropper/CropImageView;->mMotionHighlightView:Lcom/control/imagecropper/HighlightView;

    if-eqz v5, :cond_13

    .line 165
    iget-object v5, p0, Lcom/control/imagecropper/CropImageView;->mMotionHighlightView:Lcom/control/imagecropper/HighlightView;

    iget v6, p0, Lcom/control/imagecropper/CropImageView;->mMotionEdge:I

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/control/imagecropper/CropImageView;->mLastX:F

    sub-float/2addr v8, v9

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/control/imagecropper/CropImageView;->mLastY:F

    sub-float/2addr v9, v10

    .line 165
    invoke-virtual {v5, v6, v8, v9}, Lcom/control/imagecropper/HighlightView;->handleMotion(IFF)V

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/control/imagecropper/CropImageView;->mLastX:F

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/control/imagecropper/CropImageView;->mLastY:F

    .line 177
    iget-object v5, p0, Lcom/control/imagecropper/CropImageView;->mMotionHighlightView:Lcom/control/imagecropper/HighlightView;

    invoke-direct {p0, v5}, Lcom/control/imagecropper/CropImageView;->ensureVisible(Lcom/control/imagecropper/HighlightView;)V

    goto/16 :goto_13

    .line 185
    :pswitch_f5
    invoke-virtual {p0, v7, v7}, Lcom/control/imagecropper/CropImageView;->center(ZZ)V

    goto/16 :goto_1a

    .line 192
    :pswitch_fa
    invoke-virtual {p0}, Lcom/control/imagecropper/CropImageView;->getScale()F

    move-result v5

    const/high16 v6, 0x3f800000

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1a

    .line 193
    invoke-virtual {p0, v7, v7}, Lcom/control/imagecropper/CropImageView;->center(ZZ)V

    goto/16 :goto_1a

    .line 115
    nop

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_65
        :pswitch_c0
    .end packed-switch

    .line 183
    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_f5
        :pswitch_fa
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .registers 6
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/control/imagecropper/ImageViewTouchBase;->postTranslate(FF)V

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_d

    .line 81
    return-void

    .line 77
    :cond_d
    iget-object v2, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/HighlightView;

    .line 78
    .local v0, "hv":Lcom/control/imagecropper/HighlightView;
    iget-object v2, v0, Lcom/control/imagecropper/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 79
    invoke-virtual {v0}, Lcom/control/imagecropper/HighlightView;->invalidate()V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method protected zoomIn()V
    .registers 5

    .prologue
    .line 55
    invoke-super {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->zoomIn()V

    .line 56
    iget-object v1, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 60
    return-void

    .line 56
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/HighlightView;

    .line 57
    .local v0, "hv":Lcom/control/imagecropper/HighlightView;
    iget-object v2, v0, Lcom/control/imagecropper/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/control/imagecropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 58
    invoke-virtual {v0}, Lcom/control/imagecropper/HighlightView;->invalidate()V

    goto :goto_9
.end method

.method protected zoomOut()V
    .registers 5

    .prologue
    .line 65
    invoke-super {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->zoomOut()V

    .line 66
    iget-object v1, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 70
    return-void

    .line 66
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/HighlightView;

    .line 67
    .local v0, "hv":Lcom/control/imagecropper/HighlightView;
    iget-object v2, v0, Lcom/control/imagecropper/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/control/imagecropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 68
    invoke-virtual {v0}, Lcom/control/imagecropper/HighlightView;->invalidate()V

    goto :goto_9
.end method

.method protected zoomTo(FFF)V
    .registers 8
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/control/imagecropper/ImageViewTouchBase;->zoomTo(FFF)V

    .line 46
    iget-object v1, p0, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 50
    return-void

    .line 46
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/HighlightView;

    .line 47
    .local v0, "hv":Lcom/control/imagecropper/HighlightView;
    iget-object v2, v0, Lcom/control/imagecropper/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/control/imagecropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 48
    invoke-virtual {v0}, Lcom/control/imagecropper/HighlightView;->invalidate()V

    goto :goto_9
.end method
