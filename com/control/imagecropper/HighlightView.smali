.class Lcom/control/imagecropper/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/control/imagecropper/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field public static final MOVE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "HighlightView"


# instance fields
.field private mCircle:Z

.field mContext:Landroid/view/View;

.field mCropRect:Landroid/graphics/RectF;

.field mDrawRect:Landroid/graphics/Rect;

.field private final mFocusPaint:Landroid/graphics/Paint;

.field mHidden:Z

.field private mImageRect:Landroid/graphics/RectF;

.field private mInitialAspectRatio:F

.field mIsFocused:Z

.field private mMaintainAspectRatio:Z

.field mMatrix:Landroid/graphics/Matrix;

.field private mMode:Lcom/control/imagecropper/HighlightView$ModifyMode;

.field private final mNoFocusPaint:Landroid/graphics/Paint;

.field private final mOutlinePaint:Landroid/graphics/Paint;

.field private mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "ctx"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    sget-object v0, Lcom/control/imagecropper/HighlightView$ModifyMode;->None:Lcom/control/imagecropper/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/control/imagecropper/HighlightView;->mMode:Lcom/control/imagecropper/HighlightView$ModifyMode;

    .line 449
    iput-boolean v1, p0, Lcom/control/imagecropper/HighlightView;->mMaintainAspectRatio:Z

    .line 451
    iput-boolean v1, p0, Lcom/control/imagecropper/HighlightView;->mCircle:Z

    .line 457
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    .line 458
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 459
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 50
    iput-object p1, p0, Lcom/control/imagecropper/HighlightView;->mContext:Landroid/view/View;

    .line 51
    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 402
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 403
    iget-object v3, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 402
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 404
    .local v0, "r":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/control/imagecropper/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 405
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 406
    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 405
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private init()V
    .registers 3

    .prologue
    .line 55
    iget-object v1, p0, Lcom/control/imagecropper/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lic/buzzebeeslib/R$drawable;->bz_camera_crop_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 56
    iput-object v1, p0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    .line 59
    sget v1, Lic/buzzebeeslib/R$drawable;->bz_camera_crop_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    iput-object v1, p0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    .line 61
    sget v1, Lic/buzzebeeslib/R$drawable;->bz_indicator_autocrop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 60
    iput-object v1, p0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .registers 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/control/imagecropper/HighlightView;->mHidden:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    .line 203
    :cond_8
    :goto_8
    return-void

    .line 88
    :cond_9
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 89
    .local v14, "path":Landroid/graphics/Path;
    invoke-virtual/range {p0 .. p0}, Lcom/control/imagecropper/HighlightView;->hasFocus()Z

    move-result v27

    if-nez v27, :cond_35

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    const/high16 v28, -0x1000000

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_8

    .line 93
    :cond_35
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 94
    .local v19, "viewDrawingRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 95
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/control/imagecropper/HighlightView;->mCircle:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1b8

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v20, v0

    .line 100
    .local v20, "width":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v9, v0

    .line 101
    .local v9, "height":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000

    div-float v28, v20, v28

    add-float v27, v27, v28

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000

    div-float v29, v9, v29

    add-float v28, v28, v29

    .line 103
    const/high16 v29, 0x40000000

    div-float v29, v20, v29

    .line 104
    sget-object v30, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 101
    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    const v28, -0x10fb2a

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    sget-object v27, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/control/imagecropper/HighlightView;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_1b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    .line 108
    :goto_ce
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 140
    .end local v9    # "height":F
    .end local v20    # "width":F
    :goto_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mMode:Lcom/control/imagecropper/HighlightView$ModifyMode;

    move-object/from16 v27, v0

    sget-object v28, Lcom/control/imagecropper/HighlightView$ModifyMode;->Grow:Lcom/control/imagecropper/HighlightView$ModifyMode;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 143
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/control/imagecropper/HighlightView;->mCircle:Z

    move/from16 v27, v0

    if-eqz v27, :cond_324

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    .line 145
    .local v20, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 147
    .local v9, "height":I
    const-wide v28, 0x3fe921fb54442d18L

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4000000000000000L

    div-double v30, v30, v32

    .line 147
    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->round(D)J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v8, v0

    .line 149
    .local v8, "d":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    .line 149
    add-int v27, v27, v28

    add-int v27, v27, v8

    .line 150
    div-int/lit8 v28, v20, 0x2

    .line 149
    sub-int v23, v27, v28

    .line 151
    .local v23, "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    .line 151
    add-int v27, v27, v28

    sub-int v27, v27, v8

    .line 152
    div-int/lit8 v28, v9, 0x2

    .line 151
    sub-int v25, v27, v28

    .line 153
    .local v25, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v28

    add-int v28, v28, v23

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v29

    add-int v29, v29, v25

    .line 153
    move-object/from16 v0, v27

    move/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 109
    .end local v8    # "d":I
    .end local v23    # "x":I
    .end local v25    # "y":I
    .local v9, "height":F
    .local v20, "width":F
    :cond_1b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    goto/16 :goto_ce

    .line 116
    .end local v9    # "height":F
    .end local v20    # "width":F
    :cond_1b8
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    .local v18, "topRect":Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v27

    if-lez v27, :cond_206

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v27

    if-lez v27, :cond_206

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/control/imagecropper/HighlightView;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_305

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    :goto_1fd
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 120
    :cond_206
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 121
    .local v7, "bottomRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v27

    if-lez v27, :cond_250

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v27

    if-lez v27, :cond_250

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/control/imagecropper/HighlightView;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_30d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    :goto_249
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 124
    :cond_250
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    .local v13, "leftRect":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v27

    if-lez v27, :cond_298

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v27

    if-lez v27, :cond_298

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/control/imagecropper/HighlightView;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_315

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    :goto_291
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 128
    :cond_298
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 129
    .local v16, "rightRect":Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v27

    if-lez v27, :cond_2e4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v27

    if-lez v27, :cond_2e4

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/control/imagecropper/HighlightView;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_31d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    :goto_2db
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 133
    :cond_2e4
    new-instance v27, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v28, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    const/16 v28, -0x7600

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_da

    .line 118
    .end local v7    # "bottomRect":Landroid/graphics/Rect;
    .end local v13    # "leftRect":Landroid/graphics/Rect;
    .end local v16    # "rightRect":Landroid/graphics/Rect;
    :cond_305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    goto/16 :goto_1fd

    .line 122
    .restart local v7    # "bottomRect":Landroid/graphics/Rect;
    :cond_30d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    goto/16 :goto_249

    .line 126
    .restart local v13    # "leftRect":Landroid/graphics/Rect;
    :cond_315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    goto/16 :goto_291

    .line 130
    .restart local v16    # "rightRect":Landroid/graphics/Rect;
    :cond_31d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    goto :goto_2db

    .line 158
    .end local v7    # "bottomRect":Landroid/graphics/Rect;
    .end local v13    # "leftRect":Landroid/graphics/Rect;
    .end local v16    # "rightRect":Landroid/graphics/Rect;
    .end local v18    # "topRect":Landroid/graphics/Rect;
    :cond_324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    add-int/lit8 v12, v27, 0x1

    .line 159
    .local v12, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    add-int/lit8 v15, v27, 0x1

    .line 160
    .local v15, "right":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    add-int/lit8 v17, v27, 0x4

    .line 161
    .local v17, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    add-int/lit8 v6, v27, 0x3

    .line 164
    .local v6, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v27

    div-int/lit8 v22, v27, 0x2

    .line 166
    .local v22, "widthWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v27

    div-int/lit8 v21, v27, 0x2

    .line 168
    .local v21, "widthHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v27

    div-int/lit8 v10, v27, 0x2

    .line 170
    .local v10, "heightHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v27

    div-int/lit8 v11, v27, 0x2

    .line 172
    .local v11, "heightWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    .line 172
    add-int v24, v27, v28

    .line 174
    .local v24, "xMiddle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    .line 174
    add-int v26, v27, v28

    .line 177
    .local v26, "yMiddle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    sub-int v28, v12, v22

    .line 178
    sub-int v29, v26, v21

    .line 179
    add-int v30, v12, v22

    .line 180
    add-int v31, v26, v21

    .line 177
    invoke-virtual/range {v27 .. v31}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    sub-int v28, v15, v22

    .line 184
    sub-int v29, v26, v21

    .line 185
    add-int v30, v15, v22

    .line 186
    add-int v31, v26, v21

    .line 183
    invoke-virtual/range {v27 .. v31}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    sub-int v28, v24, v11

    .line 190
    sub-int v29, v17, v10

    .line 191
    add-int v30, v24, v11

    .line 192
    add-int v31, v17, v10

    .line 189
    invoke-virtual/range {v27 .. v31}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    sub-int v28, v24, v11

    .line 196
    sub-int v29, v6, v10

    .line 197
    add-int v30, v24, v11

    .line 198
    add-int v31, v6, v10

    .line 195
    invoke-virtual/range {v27 .. v31}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/control/imagecropper/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 6

    .prologue
    .line 395
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    .line 396
    iget-object v3, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    .line 395
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHit(FF)I
    .registers 15
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/control/imagecropper/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v6

    .line 222
    .local v6, "r":Landroid/graphics/Rect;
    const/high16 v5, 0x41a00000

    .line 223
    .local v5, "hysteresis":F
    const/4 v8, 0x1

    .line 225
    .local v8, "retval":I
    iget-boolean v10, p0, Lcom/control/imagecropper/HighlightView;->mCircle:Z

    if-eqz v10, :cond_60

    .line 226
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float v1, p1, v10

    .line 227
    .local v1, "distX":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float v2, p2, v10

    .line 229
    .local v2, "distY":F
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 230
    .local v3, "distanceFromCenter":I
    iget-object v10, p0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v7, v10, 0x2

    .line 231
    .local v7, "radius":I
    sub-int v0, v3, v7

    .line 232
    .local v0, "delta":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41a00000

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_59

    .line 233
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_50

    .line 234
    const/4 v10, 0x0

    cmpg-float v10, v2, v10

    if-gez v10, :cond_4d

    .line 235
    const/16 v8, 0x8

    .line 278
    .end local v0    # "delta":I
    .end local v1    # "distX":F
    .end local v2    # "distY":F
    .end local v3    # "distanceFromCenter":I
    .end local v7    # "radius":I
    :cond_4c
    :goto_4c
    return v8

    .line 237
    .restart local v0    # "delta":I
    .restart local v1    # "distX":F
    .restart local v2    # "distY":F
    .restart local v3    # "distanceFromCenter":I
    .restart local v7    # "radius":I
    :cond_4d
    const/16 v8, 0x10

    .line 239
    goto :goto_4c

    .line 240
    :cond_50
    const/4 v10, 0x0

    cmpg-float v10, v1, v10

    if-gez v10, :cond_57

    .line 241
    const/4 v8, 0x2

    .line 242
    goto :goto_4c

    .line 243
    :cond_57
    const/4 v8, 0x4

    .line 246
    goto :goto_4c

    :cond_59
    if-ge v3, v7, :cond_5e

    .line 247
    const/16 v8, 0x20

    .line 248
    goto :goto_4c

    .line 249
    :cond_5e
    const/4 v8, 0x1

    .line 251
    goto :goto_4c

    .line 254
    .end local v0    # "delta":I
    .end local v1    # "distX":F
    .end local v2    # "distY":F
    .end local v3    # "distanceFromCenter":I
    .end local v7    # "radius":I
    :cond_60
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    const/high16 v11, 0x41a00000

    sub-float/2addr v10, v11

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_e1

    .line 255
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    const/high16 v11, 0x41a00000

    add-float/2addr v10, v11

    .line 254
    cmpg-float v10, p2, v10

    if-gez v10, :cond_e1

    const/4 v9, 0x1

    .line 256
    .local v9, "verticalCheck":Z
    :goto_75
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    const/high16 v11, 0x41a00000

    sub-float/2addr v10, v11

    cmpl-float v10, p1, v10

    if-ltz v10, :cond_e3

    .line 257
    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    const/high16 v11, 0x41a00000

    add-float/2addr v10, v11

    .line 256
    cmpg-float v10, p1, v10

    if-gez v10, :cond_e3

    const/4 v4, 0x1

    .line 260
    .local v4, "horizCheck":Z
    :goto_8a
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a00000

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9c

    if-eqz v9, :cond_9c

    .line 261
    or-int/lit8 v8, v8, 0x2

    .line 263
    :cond_9c
    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a00000

    cmpg-float v10, v10, v11

    if-gez v10, :cond_ae

    if-eqz v9, :cond_ae

    .line 264
    or-int/lit8 v8, v8, 0x4

    .line 266
    :cond_ae
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a00000

    cmpg-float v10, v10, v11

    if-gez v10, :cond_c0

    if-eqz v4, :cond_c0

    .line 267
    or-int/lit8 v8, v8, 0x8

    .line 269
    :cond_c0
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a00000

    cmpg-float v10, v10, v11

    if-gez v10, :cond_d2

    if-eqz v4, :cond_d2

    .line 270
    or-int/lit8 v8, v8, 0x10

    .line 274
    :cond_d2
    const/4 v10, 0x1

    if-ne v8, v10, :cond_4c

    float-to-int v10, p1

    float-to-int v11, p2

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 275
    const/16 v8, 0x20

    goto/16 :goto_4c

    .line 254
    .end local v4    # "horizCheck":Z
    .end local v9    # "verticalCheck":Z
    :cond_e1
    const/4 v9, 0x0

    goto :goto_75

    .line 256
    .restart local v9    # "verticalCheck":Z
    :cond_e3
    const/4 v4, 0x0

    goto :goto_8a
.end method

.method public getMode()Lcom/control/imagecropper/HighlightView$ModifyMode;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/control/imagecropper/HighlightView;->mMode:Lcom/control/imagecropper/HighlightView$ModifyMode;

    return-object v0
.end method

.method growBy(FF)V
    .registers 11
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/high16 v1, 0x41c80000

    const/high16 v7, 0x40000000

    const/4 v6, 0x0

    .line 334
    iget-boolean v4, p0, Lcom/control/imagecropper/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_11

    .line 335
    cmpl-float v4, p1, v6

    if-eqz v4, :cond_db

    .line 336
    iget v4, p0, Lcom/control/imagecropper/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 345
    :cond_11
    :goto_11
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 346
    .local v2, "r":Landroid/graphics/RectF;
    cmpl-float v4, p1, v6

    if-lez v4, :cond_43

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v7, p1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_43

    .line 347
    iget-object v4, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    .line 348
    .local v0, "adjustment":F
    move p1, v0

    .line 349
    iget-boolean v4, p0, Lcom/control/imagecropper/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_43

    .line 350
    iget v4, p0, Lcom/control/imagecropper/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 353
    .end local v0    # "adjustment":F
    :cond_43
    cmpl-float v4, p2, v6

    if-lez v4, :cond_6e

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, p2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6e

    .line 354
    iget-object v4, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    .line 355
    .restart local v0    # "adjustment":F
    move p2, v0

    .line 356
    iget-boolean v4, p0, Lcom/control/imagecropper/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_6e

    .line 357
    iget v4, p0, Lcom/control/imagecropper/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    .line 361
    .end local v0    # "adjustment":F
    :cond_6e
    neg-float v4, p1

    neg-float v5, p2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 364
    const/high16 v3, 0x41c80000

    .line 365
    .local v3, "widthCap":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_88

    .line 366
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 368
    :cond_88
    iget-boolean v4, p0, Lcom/control/imagecropper/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_8f

    .line 369
    iget v4, p0, Lcom/control/imagecropper/HighlightView;->mInitialAspectRatio:F

    div-float/2addr v1, v4

    .line 371
    .local v1, "heightCap":F
    :cond_8f
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_a2

    .line 372
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 376
    :cond_a2
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e5

    .line 377
    iget-object v4, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 381
    :cond_b6
    :goto_b6
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_fb

    .line 382
    iget-object v4, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 387
    :cond_ca
    :goto_ca
    iget-object v4, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 388
    invoke-direct {p0}, Lcom/control/imagecropper/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 389
    iget-object v4, p0, Lcom/control/imagecropper/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 390
    return-void

    .line 337
    .end local v1    # "heightCap":F
    .end local v2    # "r":Landroid/graphics/RectF;
    .end local v3    # "widthCap":F
    :cond_db
    cmpl-float v4, p2, v6

    if-eqz v4, :cond_11

    .line 338
    iget v4, p0, Lcom/control/imagecropper/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    goto/16 :goto_11

    .line 378
    .restart local v1    # "heightCap":F
    .restart local v2    # "r":Landroid/graphics/RectF;
    .restart local v3    # "widthCap":F
    :cond_e5
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b6

    .line 379
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_b6

    .line 383
    :cond_fb
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_ca

    .line 384
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_ca
.end method

.method handleMotion(IFF)V
    .registers 11
    .param p1, "edge"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 285
    invoke-direct {p0}, Lcom/control/imagecropper/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 286
    .local v0, "r":Landroid/graphics/Rect;
    if-ne p1, v4, :cond_9

    .line 307
    :goto_8
    return-void

    .line 288
    :cond_9
    const/16 v5, 0x20

    if-ne p1, v5, :cond_2b

    .line 290
    iget-object v3, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    .line 291
    iget-object v4, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, p3

    .line 290
    invoke-virtual {p0, v3, v4}, Lcom/control/imagecropper/HighlightView;->moveBy(FF)V

    goto :goto_8

    .line 293
    :cond_2b
    and-int/lit8 v5, p1, 0x6

    if-nez v5, :cond_30

    .line 294
    const/4 p2, 0x0

    .line 297
    :cond_30
    and-int/lit8 v5, p1, 0x18

    if-nez v5, :cond_35

    .line 298
    const/4 p3, 0x0

    .line 302
    :cond_35
    iget-object v5, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v1, p2, v5

    .line 303
    .local v1, "xDelta":F
    iget-object v5, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, p3, v5

    .line 304
    .local v2, "yDelta":F
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_62

    move v5, v3

    :goto_56
    int-to-float v5, v5

    mul-float/2addr v5, v1

    .line 305
    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_64

    :goto_5c
    int-to-float v3, v3

    mul-float/2addr v3, v2

    .line 304
    invoke-virtual {p0, v5, v3}, Lcom/control/imagecropper/HighlightView;->growBy(FF)V

    goto :goto_8

    :cond_62
    move v5, v4

    goto :goto_56

    :cond_64
    move v3, v4

    .line 305
    goto :goto_5c
.end method

.method public hasFocus()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/control/imagecropper/HighlightView;->mIsFocused:Z

    return v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/control/imagecropper/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 412
    return-void
.end method

.method moveBy(FF)V
    .registers 10
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    .line 312
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 314
    .local v0, "invalRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 317
    iget-object v1, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 318
    iget-object v2, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 319
    iget-object v3, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 317
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 321
    iget-object v1, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 322
    iget-object v2, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 323
    iget-object v3, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 321
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 325
    invoke-direct {p0}, Lcom/control/imagecropper/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 326
    iget-object v1, p0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 327
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 328
    iget-object v1, p0, Lcom/control/imagecropper/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 329
    return-void
.end method

.method public setFocus(Z)V
    .registers 2
    .param p1, "f"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/control/imagecropper/HighlightView;->mIsFocused:Z

    .line 75
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "hidden"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/control/imagecropper/HighlightView;->mHidden:Z

    .line 80
    return-void
.end method

.method public setMode(Lcom/control/imagecropper/HighlightView$ModifyMode;)V
    .registers 3
    .param p1, "mode"    # Lcom/control/imagecropper/HighlightView$ModifyMode;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/control/imagecropper/HighlightView;->mMode:Lcom/control/imagecropper/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_b

    .line 213
    iput-object p1, p0, Lcom/control/imagecropper/HighlightView;->mMode:Lcom/control/imagecropper/HighlightView$ModifyMode;

    .line 214
    iget-object v0, p0, Lcom/control/imagecropper/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 216
    :cond_b
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .registers 10
    .param p1, "m"    # Landroid/graphics/Matrix;
    .param p2, "imageRect"    # Landroid/graphics/Rect;
    .param p3, "cropRect"    # Landroid/graphics/RectF;
    .param p4, "circle"    # Z
    .param p5, "maintainAspectRatio"    # Z

    .prologue
    const/16 v3, 0x7d

    const/16 v2, 0x32

    .line 417
    if-eqz p4, :cond_7

    .line 418
    const/4 p5, 0x1

    .line 420
    :cond_7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/control/imagecropper/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    .line 422
    iput-object p3, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 423
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/control/imagecropper/HighlightView;->mImageRect:Landroid/graphics/RectF;

    .line 424
    iput-boolean p5, p0, Lcom/control/imagecropper/HighlightView;->mMaintainAspectRatio:Z

    .line 425
    iput-boolean p4, p0, Lcom/control/imagecropper/HighlightView;->mCircle:Z

    .line 427
    iget-object v0, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/control/imagecropper/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/control/imagecropper/HighlightView;->mInitialAspectRatio:F

    .line 428
    invoke-direct {p0}, Lcom/control/imagecropper/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/control/imagecropper/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 430
    iget-object v0, p0, Lcom/control/imagecropper/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 431
    iget-object v0, p0, Lcom/control/imagecropper/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 432
    iget-object v0, p0, Lcom/control/imagecropper/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 433
    iget-object v0, p0, Lcom/control/imagecropper/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 434
    iget-object v0, p0, Lcom/control/imagecropper/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 436
    sget-object v0, Lcom/control/imagecropper/HighlightView$ModifyMode;->None:Lcom/control/imagecropper/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/control/imagecropper/HighlightView;->mMode:Lcom/control/imagecropper/HighlightView$ModifyMode;

    .line 437
    invoke-direct {p0}, Lcom/control/imagecropper/HighlightView;->init()V

    .line 438
    return-void
.end method
