.class public Lcom/facebook/internal/LikeBoxCountView;
.super Landroid/widget/FrameLayout;
.source "LikeBoxCountView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition:[I


# instance fields
.field private additionalTextPadding:I

.field private borderPaint:Landroid/graphics/Paint;

.field private borderRadius:F

.field private caretHeight:F

.field private caretPosition:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

.field private caretWidth:F

.field private likeCountLabel:Landroid/widget/TextView;

.field private textPadding:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition()[I
    .registers 3

    .prologue
    .line 33
    sget-object v0, Lcom/facebook/internal/LikeBoxCountView;->$SWITCH_TABLE$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->values()[Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->BOTTOM:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v1}, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v1}, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->RIGHT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v1}, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->TOP:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v1}, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/facebook/internal/LikeBoxCountView;->$SWITCH_TABLE$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    sget-object v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    iput-object v0, p0, Lcom/facebook/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/internal/LikeBoxCountView;->initialize(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;FFFF)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    const/high16 v6, 0x42b40000

    const/high16 v5, 0x40000000

    .line 165
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 167
    .local v0, "borderPath":Landroid/graphics/Path;
    iget v2, p0, Lcom/facebook/internal/LikeBoxCountView;->borderRadius:F

    mul-float v1, v5, v2

    .line 170
    .local v1, "ovalSize":F
    new-instance v2, Landroid/graphics/RectF;

    add-float v3, p2, v1

    add-float v4, p3, v1

    invoke-direct {v2, p2, p3, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, -0x3ccc0000

    invoke-virtual {v0, v2, v3, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 173
    iget-object v2, p0, Lcom/facebook/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v3, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->TOP:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v2, v3, :cond_40

    .line 174
    sub-float v2, p4, p2

    iget v3, p0, Lcom/facebook/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 175
    sub-float v2, p4, p2

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    iget v3, p0, Lcom/facebook/internal/LikeBoxCountView;->caretHeight:F

    sub-float v3, p3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    sub-float v2, p4, p2

    iget v3, p0, Lcom/facebook/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    :cond_40
    iget v2, p0, Lcom/facebook/internal/LikeBoxCountView;->borderRadius:F

    sub-float v2, p4, v2

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 183
    new-instance v2, Landroid/graphics/RectF;

    sub-float v3, p4, v1

    add-float v4, p3, v1

    invoke-direct {v2, v3, p3, p4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, -0x3d4c0000

    invoke-virtual {v0, v2, v3, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 186
    iget-object v2, p0, Lcom/facebook/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v3, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->RIGHT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v2, v3, :cond_79

    .line 187
    sub-float v2, p5, p3

    iget v3, p0, Lcom/facebook/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p3

    invoke-virtual {v0, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    iget v2, p0, Lcom/facebook/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v2, p4

    sub-float v3, p5, p3

    div-float/2addr v3, v5

    add-float/2addr v3, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 189
    sub-float v2, p5, p3

    iget v3, p0, Lcom/facebook/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p3

    invoke-virtual {v0, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 193
    :cond_79
    iget v2, p0, Lcom/facebook/internal/LikeBoxCountView;->borderRadius:F

    sub-float v2, p5, v2

    invoke-virtual {v0, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    new-instance v2, Landroid/graphics/RectF;

    sub-float v3, p4, v1

    sub-float v4, p5, v1

    invoke-direct {v2, v3, v4, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 199
    iget-object v2, p0, Lcom/facebook/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v3, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->BOTTOM:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v2, v3, :cond_b1

    .line 200
    sub-float v2, p4, p2

    iget v3, p0, Lcom/facebook/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    sub-float v2, p4, p2

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    iget v3, p0, Lcom/facebook/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v3, p5

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 202
    sub-float v2, p4, p2

    iget v3, p0, Lcom/facebook/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 206
    :cond_b1
    iget v2, p0, Lcom/facebook/internal/LikeBoxCountView;->borderRadius:F

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 209
    new-instance v2, Landroid/graphics/RectF;

    sub-float v3, p5, v1

    add-float v4, p2, v1

    invoke-direct {v2, p2, v3, v4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2, v6, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 212
    iget-object v2, p0, Lcom/facebook/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v3, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v2, v3, :cond_e8

    .line 213
    sub-float v2, p5, p3

    iget v3, p0, Lcom/facebook/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p3

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 214
    iget v2, p0, Lcom/facebook/internal/LikeBoxCountView;->caretHeight:F

    sub-float v2, p2, v2

    sub-float v3, p5, p3

    div-float/2addr v3, v5

    add-float/2addr v3, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 215
    sub-float v2, p5, p3

    iget v3, p0, Lcom/facebook/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, p3

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    :cond_e8
    iget v2, p0, Lcom/facebook/internal/LikeBoxCountView;->borderRadius:F

    add-float/2addr v2, p3

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    iget-object v2, p0, Lcom/facebook/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 222
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/internal/LikeBoxCountView;->setWillNotDraw(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_likeboxcountview_caret_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/internal/LikeBoxCountView;->caretHeight:F

    .line 124
    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_likeboxcountview_caret_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/internal/LikeBoxCountView;->caretWidth:F

    .line 125
    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_likeboxcountview_border_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/internal/LikeBoxCountView;->borderRadius:F

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/facebook/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$color;->com_facebook_likeboxcountview_border_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/facebook/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$dimen;->com_facebook_likeboxcountview_border_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iget-object v0, p0, Lcom/facebook/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/facebook/internal/LikeBoxCountView;->initializeLikeCountLabel(Landroid/content/Context;)V

    .line 134
    iget-object v0, p0, Lcom/facebook/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/internal/LikeBoxCountView;->addView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/facebook/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {p0, v0}, Lcom/facebook/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    .line 137
    return-void
.end method

.method private initializeLikeCountLabel(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 140
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    .line 141
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v0, "likeCountLabelLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v1, p0, Lcom/facebook/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    iget-object v1, p0, Lcom/facebook/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    .line 147
    const/4 v2, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/android/R$dimen;->com_facebook_likeboxcountview_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 149
    iget-object v1, p0, Lcom/facebook/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/android/R$color;->com_facebook_likeboxcountview_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$dimen;->com_facebook_likeboxcountview_text_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/internal/LikeBoxCountView;->textPadding:I

    .line 153
    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$dimen;->com_facebook_likeboxcountview_caret_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/internal/LikeBoxCountView;->additionalTextPadding:I

    .line 154
    return-void
.end method

.method private setAdditionalTextPadding(IIII)V
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    .line 158
    iget v1, p0, Lcom/facebook/internal/LikeBoxCountView;->textPadding:I

    add-int/2addr v1, p1

    .line 159
    iget v2, p0, Lcom/facebook/internal/LikeBoxCountView;->textPadding:I

    add-int/2addr v2, p2

    .line 160
    iget v3, p0, Lcom/facebook/internal/LikeBoxCountView;->textPadding:I

    add-int/2addr v3, p3

    .line 161
    iget v4, p0, Lcom/facebook/internal/LikeBoxCountView;->textPadding:I

    add-int/2addr v4, p4

    .line 157
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 162
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getPaddingTop()I

    move-result v9

    .local v9, "top":I
    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getPaddingLeft()I

    move-result v7

    .line 101
    .local v7, "left":I
    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getPaddingRight()I

    move-result v1

    sub-int v8, v0, v1

    .local v8, "right":I
    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/internal/LikeBoxCountView;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    .line 103
    .local v6, "bottom":I
    invoke-static {}, Lcom/facebook/internal/LikeBoxCountView;->$SWITCH_TABLE$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition()[I

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v1}, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 118
    :goto_2e
    int-to-float v2, v7

    int-to-float v3, v9

    int-to-float v4, v8

    int-to-float v5, v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/LikeBoxCountView;->drawBorder(Landroid/graphics/Canvas;FFFF)V

    .line 119
    return-void

    .line 105
    :pswitch_38
    int-to-float v0, v6

    iget v1, p0, Lcom/facebook/internal/LikeBoxCountView;->caretHeight:F

    sub-float/2addr v0, v1

    float-to-int v6, v0

    .line 106
    goto :goto_2e

    .line 108
    :pswitch_3e
    int-to-float v0, v7

    iget v1, p0, Lcom/facebook/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 109
    goto :goto_2e

    .line 111
    :pswitch_44
    int-to-float v0, v9

    iget v1, p0, Lcom/facebook/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 112
    goto :goto_2e

    .line 114
    :pswitch_4a
    int-to-float v0, v8

    iget v1, p0, Lcom/facebook/internal/LikeBoxCountView;->caretHeight:F

    sub-float/2addr v0, v1

    float-to-int v8, v0

    goto :goto_2e

    .line 103
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_44
        :pswitch_4a
        :pswitch_38
    .end packed-switch
.end method

.method public setCaretPosition(Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V
    .registers 5
    .param p1, "caretPosition"    # Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .prologue
    const/4 v2, 0x0

    .line 75
    iput-object p1, p0, Lcom/facebook/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 79
    invoke-static {}, Lcom/facebook/internal/LikeBoxCountView;->$SWITCH_TABLE$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 94
    :goto_10
    return-void

    .line 81
    :pswitch_11
    iget v0, p0, Lcom/facebook/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v0, v2, v2, v2}, Lcom/facebook/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    goto :goto_10

    .line 84
    :pswitch_17
    iget v0, p0, Lcom/facebook/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v2, v0, v2, v2}, Lcom/facebook/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    goto :goto_10

    .line 87
    :pswitch_1d
    iget v0, p0, Lcom/facebook/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v2, v2, v0, v2}, Lcom/facebook/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    goto :goto_10

    .line 90
    :pswitch_23
    iget v0, p0, Lcom/facebook/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v2, v2, v2, v0}, Lcom/facebook/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    goto :goto_10

    .line 79
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_17
        :pswitch_1d
        :pswitch_23
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method
