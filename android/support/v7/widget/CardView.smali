.class public Landroid/support/v7/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"

# interfaces
.implements Landroid/support/v7/widget/CardViewDelegate;


# static fields
.field private static final IMPL:Landroid/support/v7/widget/CardViewImpl;


# instance fields
.field private mCompatPadding:Z

.field private final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field private final mShadowBounds:Landroid/graphics/Rect;

.field private mUserSetMinHeight:I

.field private mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    .line 76
    new-instance v0, Landroid/support/v7/widget/CardViewApi21;

    invoke-direct {v0}, Landroid/support/v7/widget/CardViewApi21;-><init>()V

    sput-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    .line 82
    :goto_d
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v0}, Landroid/support/v7/widget/CardViewImpl;->a()V

    .line 83
    return-void

    .line 77
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_21

    .line 78
    new-instance v0, Landroid/support/v7/widget/CardViewJellybeanMr1;

    invoke-direct {v0}, Landroid/support/v7/widget/CardViewJellybeanMr1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    goto :goto_d

    .line 80
    :cond_21
    new-instance v0, Landroid/support/v7/widget/CardViewEclairMr1;

    invoke-direct {v0}, Landroid/support/v7/widget/CardViewEclairMr1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 212
    sget-object v0, Landroid/support/v7/cardview/R$styleable;->CardView:[I

    sget v1, Landroid/support/v7/cardview/R$style;->CardView_Light:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 214
    sget v1, Landroid/support/v7/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 215
    sget v1, Landroid/support/v7/cardview/R$styleable;->CardView_cardCornerRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 216
    sget v1, Landroid/support/v7/cardview/R$styleable;->CardView_cardElevation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 217
    sget v1, Landroid/support/v7/cardview/R$styleable;->CardView_cardMaxElevation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 218
    sget v1, Landroid/support/v7/cardview/R$styleable;->CardView_cardUseCompatPadding:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/CardView;->mCompatPadding:Z

    .line 219
    sget v1, Landroid/support/v7/cardview/R$styleable;->CardView_cardPreventCornerOverlap:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/CardView;->mPreventCornerOverlap:Z

    .line 220
    sget v1, Landroid/support/v7/cardview/R$styleable;->CardView_contentPadding:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 221
    iget-object v2, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v7, Landroid/support/v7/cardview/R$styleable;->CardView_contentPaddingLeft:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v2, Landroid/graphics/Rect;->left:I

    .line 223
    iget-object v2, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v7, Landroid/support/v7/cardview/R$styleable;->CardView_contentPaddingTop:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 225
    iget-object v2, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v7, Landroid/support/v7/cardview/R$styleable;->CardView_contentPaddingRight:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v2, Landroid/graphics/Rect;->right:I

    .line 227
    iget-object v2, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v7, Landroid/support/v7/cardview/R$styleable;->CardView_contentPaddingBottom:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 229
    cmpl-float v1, v5, v6

    if-lez v1, :cond_66

    move v6, v5

    .line 232
    :cond_66
    sget v1, Landroid/support/v7/cardview/R$styleable;->CardView_android_minWidth:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/CardView;->mUserSetMinWidth:I

    .line 233
    sget v1, Landroid/support/v7/cardview/R$styleable;->CardView_android_minHeight:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/CardView;->mUserSetMinHeight:I

    .line 234
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroid/support/v7/widget/CardViewImpl;->a(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/Context;IFFF)V

    .line 237
    return-void
.end method


# virtual methods
.method public getCardElevation()F
    .registers 2

    .prologue
    .line 366
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/CardViewImpl;->e(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .registers 2

    .prologue
    .line 392
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/CardViewImpl;->a(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .registers 2

    .prologue
    .line 404
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .registers 2

    .prologue
    .line 331
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/CardViewImpl;->d(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .registers 7

    .prologue
    .line 185
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    instance-of v0, v0, Landroid/support/v7/widget/CardViewApi21;

    if-nez v0, :cond_4a

    .line 186
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 187
    sparse-switch v0, :sswitch_data_4e

    .line 196
    :goto_d
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 197
    sparse-switch v0, :sswitch_data_58

    .line 205
    :goto_14
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 209
    :goto_17
    return-void

    .line 190
    :sswitch_18
    sget-object v1, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v1, p0}, Landroid/support/v7/widget/CardViewImpl;->b(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_d

    .line 200
    :sswitch_31
    sget-object v1, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v1, p0}, Landroid/support/v7/widget/CardViewImpl;->c(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 201
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_14

    .line 207
    :cond_4a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_17

    .line 187
    :sswitch_data_4e
    .sparse-switch
        -0x80000000 -> :sswitch_18
        0x40000000 -> :sswitch_18
    .end sparse-switch

    .line 197
    :sswitch_data_58
    .sparse-switch
        -0x80000000 -> :sswitch_31
        0x40000000 -> :sswitch_31
    .end sparse-switch
.end method

.method public setCardBackgroundColor(I)V
    .registers 3

    .prologue
    .line 274
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/CardViewImpl;->a(Landroid/support/v7/widget/CardViewDelegate;I)V

    .line 275
    return-void
.end method

.method public setCardElevation(F)V
    .registers 3

    .prologue
    .line 355
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/CardViewImpl;->c(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 356
    return-void
.end method

.method public setContentPadding(IIII)V
    .registers 6

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 180
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/CardViewImpl;->f(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 181
    return-void
.end method

.method public setMaxCardElevation(F)V
    .registers 3

    .prologue
    .line 381
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/CardViewImpl;->b(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 382
    return-void
.end method

.method public setMinWidthHeightInternal(II)V
    .registers 4

    .prologue
    .line 259
    iget v0, p0, Landroid/support/v7/widget/CardView;->mUserSetMinWidth:I

    if-le p1, v0, :cond_7

    .line 260
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 262
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/CardView;->mUserSetMinHeight:I

    if-le p2, v0, :cond_e

    .line 263
    invoke-super {p0, p2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 265
    :cond_e
    return-void
.end method

.method public setMinimumHeight(I)V
    .registers 2

    .prologue
    .line 247
    iput p1, p0, Landroid/support/v7/widget/CardView;->mUserSetMinHeight:I

    .line 248
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 249
    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2

    .prologue
    .line 241
    iput p1, p0, Landroid/support/v7/widget/CardView;->mUserSetMinWidth:I

    .line 242
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 243
    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    .prologue
    .line 121
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 5

    .prologue
    .line 125
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .registers 3

    .prologue
    .line 421
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->mPreventCornerOverlap:Z

    if-ne p1, v0, :cond_5

    .line 426
    :goto_4
    return-void

    .line 424
    :cond_5
    iput-boolean p1, p0, Landroid/support/v7/widget/CardView;->mPreventCornerOverlap:Z

    .line 425
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/CardViewImpl;->h(Landroid/support/v7/widget/CardViewDelegate;)V

    goto :goto_4
.end method

.method public setRadius(F)V
    .registers 3

    .prologue
    .line 321
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/CardViewImpl;->a(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 322
    return-void
.end method

.method public setShadowPadding(IIII)V
    .registers 9

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 342
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iget-object v2, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p3

    iget-object v3, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 344
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .registers 3

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->mCompatPadding:Z

    if-ne v0, p1, :cond_5

    .line 160
    :goto_4
    return-void

    .line 158
    :cond_5
    iput-boolean p1, p0, Landroid/support/v7/widget/CardView;->mCompatPadding:Z

    .line 159
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/CardViewImpl;->g(Landroid/support/v7/widget/CardViewDelegate;)V

    goto :goto_4
.end method
