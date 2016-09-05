.class public Lit/sephiroth/android/library/widget/HListView;
.super Lit/sephiroth/android/library/widget/AbsHListView;
.source "HListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private aA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private final aH:Landroid/graphics/Rect;

.field private aI:Landroid/graphics/Paint;

.field private final aJ:Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;

.field private aK:Lit/sephiroth/android/library/widget/HListView$FocusSelector;

.field au:Landroid/graphics/drawable/Drawable;

.field av:I

.field aw:I

.field ax:Landroid/graphics/drawable/Drawable;

.field ay:Landroid/graphics/drawable/Drawable;

.field private az:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 147
    sget v0, Lit/sephiroth/android/library/R$attr;->hlv_listViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->aA:Ljava/util/ArrayList;

    .line 127
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z

    .line 129
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Z

    .line 132
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    .line 137
    new-instance v4, Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;

    invoke-direct {v4, v3}, Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;-><init>(Lit/sephiroth/android/library/widget/HListView$1;)V

    iput-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 158
    sget-object v5, Lit/sephiroth/android/library/R$styleable;->HListView:[I

    invoke-virtual {v4, p2, v5, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 170
    if-eqz v8, :cond_84

    .line 171
    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 172
    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 173
    const/4 v3, 0x5

    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 174
    const/4 v3, 0x6

    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 175
    const/4 v3, 0x2

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 176
    const/4 v2, 0x3

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 177
    const/4 v9, 0x4

    invoke-virtual {v8, v9, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 178
    const/4 v9, 0x7

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 179
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    :goto_5c
    if-eqz v7, :cond_69

    .line 193
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x1090003

    invoke-direct {v8, p1, v9, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/widget/ListAdapter;)V

    .line 196
    :cond_69
    if-eqz v6, :cond_6e

    .line 198
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :cond_6e
    if-eqz v5, :cond_73

    .line 202
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->c(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_73
    if-eqz v4, :cond_78

    .line 206
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->d(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :cond_78
    if-eqz v3, :cond_7d

    .line 211
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 214
    :cond_7d
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->aD:Z

    .line 215
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->aE:Z

    .line 216
    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->aw:I

    .line 218
    return-void

    :cond_84
    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move v3, v2

    move v2, v1

    goto :goto_5c
.end method

.method private B()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v2

    .line 234
    if-lez v2, :cond_27

    .line 237
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z

    if-nez v1, :cond_28

    .line 240
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 242
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    if-eqz v2, :cond_1f

    .line 245
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    sub-int/2addr v1, v2

    .line 247
    :cond_1f
    if-gez v1, :cond_48

    .line 267
    :cond_21
    :goto_21
    if-eqz v0, :cond_27

    .line 268
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->d(I)V

    .line 271
    :cond_27
    return-void

    .line 253
    :cond_28
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 256
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v2, v3

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-ge v2, v3, :cond_46

    .line 259
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    add-int/2addr v1, v2

    .line 262
    :cond_46
    if-gtz v1, :cond_21

    :cond_48
    move v0, v1

    goto :goto_21
.end method

.method private C()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 548
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 549
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    if-gtz v2, :cond_18

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v1, :cond_19

    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private D()Z
    .registers 5

    .prologue
    .line 556
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    .line 557
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 558
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 560
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 562
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_29

    if-ge v1, v2, :cond_2b

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private a(ILandroid/view/View;I)I
    .registers 7

    .prologue
    .line 2959
    const/4 v0, 0x0

    .line 2960
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2961
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2962
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2a

    .line 2963
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_29

    .line 2964
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 2965
    if-lez p3, :cond_29

    .line 2966
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 2978
    :cond_29
    :goto_29
    return v0

    .line 2970
    :cond_2a
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 2971
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_29

    .line 2972
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 2973
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_29

    .line 2974
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_29
.end method

.method private a(III)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v3, 0x1

    .line 825
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 826
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    .line 830
    invoke-direct {p0, p2, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->c(III)I

    move-result v6

    .line 831
    invoke-direct {p0, p3, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->b(III)I

    move-result v7

    .line 833
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 836
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v7, :cond_41

    .line 839
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v6

    .line 843
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v7

    .line 844
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 847
    neg-int v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 863
    :cond_32
    :goto_32
    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;I)V

    .line 865
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z

    if-nez v1, :cond_5b

    .line 866
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->l(I)V

    .line 871
    :goto_40
    return-object v0

    .line 848
    :cond_41
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v6, :cond_32

    .line 851
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v6, v2

    .line 855
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v3, v7, v3

    .line 856
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 859
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_32

    .line 868
    :cond_5b
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->m(I)V

    goto :goto_40
.end method

.method private a(IIZIZ)Landroid/view/View;
    .registers 14

    .prologue
    .line 1874
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aj:Z

    if-nez v0, :cond_17

    .line 1876
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->c(I)Landroid/view/View;

    move-result-object v1

    .line 1877
    if-eqz v1, :cond_17

    .line 1880
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZIZZ)V

    .line 1892
    :goto_16
    return-object v1

    .line 1887
    :cond_17
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1890
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZIZZ)V

    goto :goto_16
.end method

.method private a(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .registers 17

    .prologue
    .line 954
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 955
    iget v6, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    .line 959
    invoke-direct {p0, p4, v0, v6}, Lit/sephiroth/android/library/widget/HListView;->c(III)I

    move-result v7

    .line 960
    invoke-direct {p0, p4, v0, v6}, Lit/sephiroth/android/library/widget/HListView;->b(III)I

    move-result v8

    .line 962
    if-lez p3, :cond_95

    .line 975
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v9

    .line 977
    iget v10, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    .line 980
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    add-int v2, v0, v10

    const/4 v3, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 983
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v8, :cond_59

    .line 986
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    .line 989
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v8

    .line 992
    sub-int v3, p5, p4

    div-int/lit8 v3, v3, 0x2

    .line 993
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 994
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 997
    neg-int v2, v1

    invoke-virtual {v9, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 999
    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1003
    :cond_59
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z

    if-nez v1, :cond_79

    .line 1004
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;

    .line 1005
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V

    .line 1006
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v10

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;

    .line 1076
    :goto_78
    return-object v0

    .line 1008
    :cond_79
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v10

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;

    .line 1009
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V

    .line 1010
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;

    goto :goto_78

    .line 1012
    :cond_95
    if-gez p3, :cond_df

    .line 1024
    if-eqz p2, :cond_ce

    .line 1026
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1034
    :goto_a9
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v7, :cond_ca

    .line 1036
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v7, v1

    .line 1039
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v2, v8, v2

    .line 1042
    sub-int v3, p5, p4

    div-int/lit8 v3, v3, 0x2

    .line 1043
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1044
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1047
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1051
    :cond_ca
    invoke-direct {p0, v0, v6}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;I)V

    goto :goto_78

    .line 1030
    :cond_ce
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_a9

    .line 1054
    :cond_df
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1059
    const/4 v3, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1062
    if-ge v2, p4, :cond_102

    .line 1065
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1066
    add-int/lit8 v2, p4, 0x14

    if-ge v1, v2, :cond_102

    .line 1068
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, p4, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1073
    :cond_102
    invoke-direct {p0, v0, v6}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;I)V

    goto/16 :goto_78
.end method

.method private a(Landroid/view/View;I)V
    .registers 6

    .prologue
    .line 800
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    .line 801
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z

    if-nez v1, :cond_1e

    .line 802
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;

    .line 803
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V

    .line 804
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;

    .line 810
    :goto_1d
    return-void

    .line 806
    :cond_1e
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;

    .line 807
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V

    .line 808
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, v2, v0

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;

    goto :goto_1d
.end method

.method private a(Landroid/view/View;II)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1183
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 1184
    if-nez v0, :cond_12

    .line 1185
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 1186
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    :cond_12
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 1189
    const/4 v1, 0x1

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->c:Z

    .line 1191
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->height:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1192
    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->width:I

    .line 1194
    if-lez v0, :cond_3a

    .line 1195
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1199
    :goto_36
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1200
    return-void

    .line 1197
    :cond_3a
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_36
.end method

.method private a(Landroid/view/View;IIZ)V
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2568
    const/4 v0, -0x1

    if-ne p3, v0, :cond_e

    .line 2569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2580
    :cond_e
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    sub-int/2addr v0, v3

    .line 2581
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    sub-int v3, p3, v3

    .line 2583
    const/16 v4, 0x21

    if-ne p2, v4, :cond_41

    .line 2586
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    move v4, v3

    move v3, v0

    move v0, v1

    .line 2596
    :goto_23
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v7

    .line 2599
    if-eqz v5, :cond_34

    .line 2600
    if-nez p4, :cond_4a

    if-eqz v0, :cond_4a

    move v6, v1

    :goto_2e
    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 2601
    invoke-direct {p0, v5, v4, v7}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;II)V

    .line 2605
    :cond_34
    if-eqz p1, :cond_40

    .line 2606
    if-nez p4, :cond_4c

    if-nez v0, :cond_4c

    :goto_3a
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2607
    invoke-direct {p0, p1, v3, v7}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;II)V

    .line 2609
    :cond_40
    return-void

    .line 2593
    :cond_41
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v5, p1

    move-object p1, v4

    move v4, v0

    move v0, v2

    goto :goto_23

    :cond_4a
    move v6, v2

    .line 2600
    goto :goto_2e

    :cond_4c
    move v1, v2

    .line 2606
    goto :goto_3a
.end method

.method private a(Landroid/view/View;IIZIZZ)V
    .registers 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1915
    if-eqz p6, :cond_e1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->i()Z

    move-result v0

    if-eqz v0, :cond_e1

    const/4 v0, 0x1

    move v1, v0

    .line 1916
    :goto_a
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v1, v0, :cond_e5

    const/4 v0, 0x1

    move v2, v0

    .line 1917
    :goto_12
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->F:I

    .line 1918
    if-lez v0, :cond_e9

    const/4 v3, 0x3

    if-ge v0, v3, :cond_e9

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->A:I

    if-ne v0, p2, :cond_e9

    const/4 v0, 0x1

    move v3, v0

    .line 1919
    :goto_1f
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq v3, v0, :cond_ed

    const/4 v0, 0x1

    move v6, v0

    .line 1920
    :goto_27
    if-eqz p7, :cond_31

    if-nez v2, :cond_31

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_f1

    :cond_31
    const/4 v0, 0x1

    move v4, v0

    .line 1924
    :goto_33
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 1925
    if-nez v0, :cond_14e

    .line 1926
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    move-object v5, v0

    .line 1928
    :goto_42
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    iput v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 1930
    if-eqz p7, :cond_50

    iget-boolean v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->c:Z

    if-eqz v0, :cond_59

    :cond_50
    iget-boolean v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->b:Z

    if-eqz v0, :cond_f8

    iget v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    const/4 v7, -0x2

    if-ne v0, v7, :cond_f8

    .line 1931
    :cond_59
    if-eqz p4, :cond_f5

    const/4 v0, -0x1

    :goto_5c
    invoke-virtual {p0, p1, v0, v5}, Lit/sephiroth/android/library/widget/HListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1940
    :goto_5f
    if-eqz v2, :cond_64

    .line 1941
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1944
    :cond_64
    if-eqz v6, :cond_69

    .line 1945
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1948
    :cond_69
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->b:I

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_8c

    .line 1949
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_10e

    move-object v0, p1

    .line 1950
    check-cast v0, Landroid/widget/Checkable;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/util/SparseArrayCompat;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1956
    :cond_8c
    :goto_8c
    if-eqz v4, :cond_132

    .line 1957
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->height:I

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1958
    iget v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->width:I

    .line 1960
    if-lez v0, :cond_12a

    .line 1961
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1965
    :goto_a9
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1970
    :goto_ac
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1971
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1972
    if-eqz p4, :cond_137

    .line 1974
    :goto_b6
    if-eqz v4, :cond_13a

    .line 1975
    add-int/2addr v1, p5

    .line 1976
    add-int/2addr v0, p3

    .line 1977
    invoke-virtual {p1, p3, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1983
    :goto_bd
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->y:Z

    if-eqz v0, :cond_cb

    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_cb

    .line 1984
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1987
    :cond_cb
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e0

    .line 1988
    if-eqz p7, :cond_e0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I

    if-eq v0, p2, :cond_e0

    .line 1989
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1992
    :cond_e0
    return-void

    .line 1915
    :cond_e1
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_a

    .line 1916
    :cond_e5
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_12

    .line 1918
    :cond_e9
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_1f

    .line 1919
    :cond_ed
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_27

    .line 1920
    :cond_f1
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_33

    .line 1931
    :cond_f5
    const/4 v0, 0x0

    goto/16 :goto_5c

    .line 1933
    :cond_f8
    const/4 v0, 0x0

    iput-boolean v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->c:Z

    .line 1934
    iget v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    const/4 v7, -0x2

    if-ne v0, v7, :cond_103

    .line 1935
    const/4 v0, 0x1

    iput-boolean v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->b:Z

    .line 1937
    :cond_103
    if-eqz p4, :cond_10c

    const/4 v0, -0x1

    :goto_106
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v0, v5, v7}, Lit/sephiroth/android/library/widget/HListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5f

    :cond_10c
    const/4 v0, 0x0

    goto :goto_106

    .line 1951
    :cond_10e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8c

    .line 1952
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/util/SparseArrayCompat;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_8c

    .line 1963
    :cond_12a
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto/16 :goto_a9

    .line 1967
    :cond_132
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_ac

    .line 1972
    :cond_137
    sub-int/2addr p3, v0

    goto/16 :goto_b6

    .line 1979
    :cond_13a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1980
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_bd

    :cond_14e
    move-object v5, v0

    goto/16 :goto_42
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 531
    if-eqz p1, :cond_20

    .line 532
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 534
    :goto_8
    if-ge v1, v3, :cond_20

    .line 535
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;->a:Landroid/view/View;

    .line 536
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 537
    if-eqz v0, :cond_1c

    .line 538
    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->b:Z

    .line 534
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 542
    :cond_20
    return-void
.end method

.method private a(IILandroid/view/KeyEvent;)Z
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2177
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->S:Z

    if-nez v0, :cond_10

    .line 2310
    :cond_f
    :goto_f
    return v1

    .line 2181
    :cond_10
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aj:Z

    if-eqz v0, :cond_17

    .line 2182
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->e()V

    .line 2185
    :cond_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_f

    .line 2190
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    .line 2192
    if-eq v4, v2, :cond_26

    .line 2193
    sparse-switch p1, :sswitch_data_18e

    :cond_26
    move v0, v1

    .line 2295
    :cond_27
    :goto_27
    if-eqz v0, :cond_177

    move v1, v2

    .line 2296
    goto :goto_f

    .line 2195
    :sswitch_2b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2196
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->o()Z

    move-result v0

    .line 2197
    if-nez v0, :cond_27

    move v3, p2

    .line 2198
    :goto_38
    add-int/lit8 p2, v3, -0x1

    if-lez v3, :cond_27

    .line 2199
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->j(I)Z

    move-result v3

    if-eqz v3, :cond_27

    move v0, v2

    move v3, p2

    .line 2200
    goto :goto_38

    .line 2206
    :cond_45
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2207
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->o()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_57
    move v0, v2

    goto :goto_27

    :cond_59
    move v0, v1

    goto :goto_27

    .line 2212
    :sswitch_5b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2213
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->o()Z

    move-result v0

    .line 2214
    if-nez v0, :cond_27

    move v3, p2

    .line 2215
    :goto_68
    add-int/lit8 p2, v3, -0x1

    if-lez v3, :cond_27

    .line 2216
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->j(I)Z

    move-result v3

    if-eqz v3, :cond_27

    move v0, v2

    move v3, p2

    .line 2217
    goto :goto_68

    .line 2223
    :cond_75
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2224
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->o()Z

    move-result v0

    if-nez v0, :cond_87

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_89

    :cond_87
    move v0, v2

    goto :goto_27

    :cond_89
    move v0, v1

    goto :goto_27

    .line 2229
    :sswitch_8b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2230
    invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->n(I)Z

    move-result v0

    goto :goto_27

    .line 2235
    :sswitch_96
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2236
    invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->n(I)Z

    move-result v0

    goto :goto_27

    .line 2242
    :sswitch_a1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2243
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->o()Z

    move-result v0

    .line 2244
    if-nez v0, :cond_27

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_27

    .line 2246
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()V

    move v0, v2

    .line 2247
    goto/16 :goto_27

    .line 2254
    :sswitch_bf
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 2255
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->o()Z

    move-result v0

    if-nez v0, :cond_d1

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->h(I)Z

    move-result v0

    if-eqz v0, :cond_d1

    :cond_d1
    :goto_d1
    move v0, v2

    .line 2260
    goto/16 :goto_27

    .line 2256
    :cond_d4
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 2257
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->o()Z

    move-result v0

    if-nez v0, :cond_d1

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->h(I)Z

    move-result v0

    if-eqz v0, :cond_d1

    goto :goto_d1

    .line 2263
    :sswitch_e7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 2264
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->o()Z

    move-result v0

    if-nez v0, :cond_f9

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->h(I)Z

    move-result v0

    if-eqz v0, :cond_fc

    :cond_f9
    move v0, v2

    goto/16 :goto_27

    :cond_fc
    move v0, v1

    goto/16 :goto_27

    .line 2265
    :cond_ff
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2266
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->o()Z

    move-result v0

    if-nez v0, :cond_111

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_114

    :cond_111
    move v0, v2

    goto/16 :goto_27

    :cond_114
    move v0, v1

    goto/16 :goto_27

    .line 2271
    :sswitch_117
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 2272
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->o()Z

    move-result v0

    if-nez v0, :cond_129

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->h(I)Z

    move-result v0

    if-eqz v0, :cond_12c

    :cond_129
    move v0, v2

    goto/16 :goto_27

    :cond_12c
    move v0, v1

    goto/16 :goto_27

    .line 2273
    :cond_12f
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2274
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->o()Z

    move-result v0

    if-nez v0, :cond_141

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_144

    :cond_141
    move v0, v2

    goto/16 :goto_27

    :cond_144
    move v0, v1

    goto/16 :goto_27

    .line 2279
    :sswitch_147
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2280
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->o()Z

    move-result v0

    if-nez v0, :cond_159

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_15c

    :cond_159
    move v0, v2

    goto/16 :goto_27

    :cond_15c
    move v0, v1

    goto/16 :goto_27

    .line 2285
    :sswitch_15f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2286
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->o()Z

    move-result v0

    if-nez v0, :cond_171

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_174

    :cond_171
    move v0, v2

    goto/16 :goto_27

    :cond_174
    move v0, v1

    goto/16 :goto_27

    .line 2299
    :cond_177
    packed-switch v4, :pswitch_data_1bc

    goto/16 :goto_f

    .line 2301
    :pswitch_17c
    invoke-super {p0, p1, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_f

    .line 2304
    :pswitch_182
    invoke-super {p0, p1, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_f

    .line 2307
    :pswitch_188
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_f

    .line 2193
    :sswitch_data_18e
    .sparse-switch
        0x13 -> :sswitch_8b
        0x14 -> :sswitch_96
        0x15 -> :sswitch_2b
        0x16 -> :sswitch_5b
        0x17 -> :sswitch_a1
        0x3e -> :sswitch_bf
        0x42 -> :sswitch_a1
        0x5c -> :sswitch_e7
        0x5d -> :sswitch_117
        0x7a -> :sswitch_147
        0x7b -> :sswitch_15f
    .end sparse-switch

    .line 2299
    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_17c
        :pswitch_182
        :pswitch_188
    .end packed-switch
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 2939
    if-ne p1, p2, :cond_4

    .line 2944
    :goto_3
    return v1

    .line 2943
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2944
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_17

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_15
    move v1, v0

    goto :goto_3

    :cond_17
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private b(III)I
    .registers 5

    .prologue
    .line 886
    .line 887
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    if-eq p3, v0, :cond_7

    .line 888
    sub-int/2addr p1, p2

    .line 890
    :cond_7
    return p1
.end method

.method private b(Landroid/view/View;I)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 3084
    add-int/lit8 v2, p2, -0x1

    .line 3085
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z

    invoke-virtual {p0, v2, v0}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3086
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    sub-int v3, v0, v3

    .line 3087
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZIZZ)V

    .line 3088
    return-object v1
.end method

.method private b(Landroid/view/View;II)V
    .registers 7

    .prologue
    .line 2622
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2623
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->d(Landroid/view/View;)V

    .line 2624
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v1, v0, :cond_23

    .line 2626
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->e(Landroid/view/View;)V

    .line 2629
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2630
    add-int/lit8 v0, p2, 0x1

    :goto_17
    if-ge v0, p3, :cond_23

    .line 2631
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2630
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 2634
    :cond_23
    return-void
.end method

.method private c(III)I
    .registers 4

    .prologue
    .line 906
    .line 907
    if-lez p3, :cond_3

    .line 908
    add-int/2addr p1, p2

    .line 910
    :cond_3
    return p1
.end method

.method private c(Landroid/view/View;I)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 3092
    add-int/lit8 v2, p2, 0x1

    .line 3093
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z

    invoke-virtual {p0, v2, v0}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3094
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    add-int/2addr v3, v0

    .line 3095
    const/4 v4, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZIZZ)V

    .line 3096
    return-object v1
.end method

.method private c(Landroid/view/View;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1838
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    .line 1839
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 1840
    :goto_9
    if-ge v3, v5, :cond_1b

    .line 1841
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;->a:Landroid/view/View;

    if-ne p1, v0, :cond_17

    move v0, v1

    .line 1852
    :goto_16
    return v0

    .line 1840
    :cond_17
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9

    .line 1845
    :cond_1b
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->aA:Ljava/util/ArrayList;

    .line 1846
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 1847
    :goto_22
    if-ge v3, v5, :cond_34

    .line 1848
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;->a:Landroid/view/View;

    if-ne p1, v0, :cond_30

    move v0, v1

    .line 1849
    goto :goto_16

    .line 1847
    :cond_30
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_22

    :cond_34
    move v0, v2

    .line 1852
    goto :goto_16
.end method

.method private d(II)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v3, 0x1

    .line 682
    const/4 v6, 0x0

    .line 684
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v1

    sub-int v7, v0, v1

    move v2, p2

    move v1, p1

    .line 689
    :goto_e
    if-ge v2, v7, :cond_31

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-ge v1, v0, :cond_31

    .line 691
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-ne v1, v0, :cond_2f

    move v5, v3

    .line 692
    :goto_19
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    add-int/2addr v2, v4

    .line 695
    if-eqz v5, :cond_40

    .line 698
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    move-object v6, v0

    .line 699
    goto :goto_e

    .line 691
    :cond_2f
    const/4 v5, 0x0

    goto :goto_19

    .line 701
    :cond_31
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setVisibleRangeHint(II)V

    .line 702
    return-object v6

    :cond_40
    move-object v0, v6

    goto :goto_2b
.end method

.method private d(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 2643
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2644
    if-nez v0, :cond_e

    .line 2645
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2650
    :cond_e
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->v:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2651
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2653
    if-lez v0, :cond_2d

    .line 2654
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2658
    :goto_29
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 2659
    return-void

    .line 2656
    :cond_2d
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_29
.end method

.method private e(II)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 717
    const/4 v6, 0x0

    move v2, p2

    move v1, p1

    .line 724
    :goto_4
    if-le v2, v3, :cond_25

    if-ltz v1, :cond_25

    .line 726
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-ne v1, v0, :cond_23

    const/4 v5, 0x1

    .line 727
    :goto_d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 728
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    sub-int/2addr v2, v4

    .line 729
    if-eqz v5, :cond_38

    .line 732
    :goto_1f
    add-int/lit8 v1, v1, -0x1

    move-object v6, v0

    .line 733
    goto :goto_4

    :cond_23
    move v5, v3

    .line 726
    goto :goto_d

    .line 735
    :cond_25
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    .line 736
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setVisibleRangeHint(II)V

    .line 737
    return-object v6

    :cond_38
    move-object v0, v6

    goto :goto_1f
.end method

.method private e(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2668
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2669
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2671
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 2672
    add-int/2addr v1, v2

    .line 2674
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2675
    add-int/2addr v0, v3

    .line 2677
    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 2678
    return-void
.end method

.method private f(Landroid/view/View;)I
    .registers 5

    .prologue
    .line 2924
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    .line 2925
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_18

    .line 2926
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2927
    invoke-direct {p0, p1, v2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2928
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v0, v1

    return v0

    .line 2925
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2931
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f(II)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v3, 0x1

    .line 768
    sub-int v6, p2, p1

    .line 770
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()I

    move-result v1

    .line 772
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 773
    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    .line 775
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 776
    if-gt v2, v6, :cond_21

    .line 777
    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 780
    :cond_21
    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;I)V

    .line 782
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z

    if-nez v1, :cond_30

    .line 783
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->l(I)V

    .line 788
    :goto_2f
    return-object v0

    .line 785
    :cond_30
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->m(I)V

    goto :goto_2f
.end method

.method private g(Landroid/view/View;)I
    .registers 6

    .prologue
    .line 2989
    const/4 v0, 0x0

    .line 2990
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2991
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2992
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 2993
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_2d

    .line 2994
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 2998
    :cond_2c
    :goto_2c
    return v0

    .line 2995
    :cond_2d
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_2c

    .line 2996
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    goto :goto_2c
.end method

.method private g(II)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 1387
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-ne p1, v0, :cond_3e

    move v5, v3

    .line 1388
    :goto_6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1390
    iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    .line 1395
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    .line 1396
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z

    if-nez v1, :cond_40

    .line 1397
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;

    move-result-object v1

    .line 1399
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V

    .line 1400
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;

    move-result-object v2

    .line 1401
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v3

    .line 1402
    if-lez v3, :cond_3b

    .line 1403
    invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->l(I)V

    .line 1416
    :cond_3b
    :goto_3b
    if-eqz v5, :cond_64

    .line 1421
    :goto_3d
    return-object v0

    .line 1387
    :cond_3e
    const/4 v5, 0x0

    goto :goto_6

    .line 1406
    :cond_40
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;

    move-result-object v2

    .line 1408
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V

    .line 1409
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v3, v4, v3

    invoke-direct {p0, v1, v3}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;

    move-result-object v1

    .line 1410
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v3

    .line 1411
    if-lez v3, :cond_3b

    .line 1412
    invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->m(I)V

    goto :goto_3b

    .line 1418
    :cond_64
    if-eqz v1, :cond_68

    move-object v0, v1

    .line 1419
    goto :goto_3d

    :cond_68
    move-object v0, v2

    .line 1421
    goto :goto_3d
.end method

.method private getArrowScrollPreviewLength()I
    .registers 3

    .prologue
    .line 2684
    const/4 v0, 0x2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private h(II)I
    .registers 10

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 2698
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, v0, v1

    .line 2699
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 2701
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v4

    .line 2703
    const/16 v0, 0x82

    if-ne p1, v0, :cond_6e

    .line 2704
    add-int/lit8 v0, v4, -0x1

    .line 2705
    if-eq p2, v6, :cond_20

    .line 2706
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    sub-int v0, p2, v0

    .line 2709
    :cond_20
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v3, v0

    .line 2710
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2713
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_b9

    .line 2714
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    move-result v0

    sub-int v0, v1, v0

    .line 2717
    :goto_33
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt v3, v0, :cond_3a

    .line 2765
    :cond_39
    :goto_39
    return v2

    .line 2722
    :cond_3a
    if-eq p2, v6, :cond_48

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    move-result v6

    if-ge v3, v6, :cond_39

    .line 2728
    :cond_48
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v0, v2, v0

    .line 2730
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v2, v4

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-ne v2, v3, :cond_65

    .line 2732
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v1, v2, v1

    .line 2733
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2736
    :cond_65
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_39

    .line 2739
    :cond_6e
    if-eq p2, v6, :cond_b7

    .line 2740
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    sub-int v0, p2, v0

    .line 2742
    :goto_74
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v1, v0

    .line 2743
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2745
    if-lez v1, :cond_b5

    .line 2746
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    move-result v0

    add-int/2addr v0, v3

    .line 2748
    :goto_82
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v0, :cond_39

    .line 2753
    if-eq p2, v6, :cond_95

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    move-result v5

    if-ge v1, v5, :cond_39

    .line 2759
    :cond_95
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2760
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    if-nez v1, :cond_ac

    .line 2762
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v3, v1

    .line 2763
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2765
    :cond_ac
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_39

    :cond_b5
    move v0, v3

    goto :goto_82

    :cond_b7
    move v0, v2

    goto :goto_74

    :cond_b9
    move v0, v1

    goto/16 :goto_33
.end method

.method private k(I)Landroid/view/View;
    .registers 4

    .prologue
    .line 749
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    .line 750
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    .line 751
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    if-gez v0, :cond_1d

    .line 752
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    .line 754
    :cond_1d
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private l(I)V
    .registers 6

    .prologue
    .line 1435
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1436
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_62

    if-lez p1, :cond_62

    .line 1439
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1442
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1445
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1449
    sub-int v0, v1, v0

    .line 1450
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1451
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1455
    if-lez v0, :cond_62

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    if-gtz v3, :cond_3c

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_62

    .line 1456
    :cond_3c
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    if-nez v3, :cond_4a

    .line 1458
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1461
    :cond_4a
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->d(I)V

    .line 1462
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    if-lez v0, :cond_62

    .line 1465
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;

    .line 1467
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V

    .line 1472
    :cond_62
    return-void
.end method

.method private m(I)V
    .registers 8

    .prologue
    .line 1484
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    if-nez v0, :cond_60

    if-lez p1, :cond_60

    .line 1487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1490
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1493
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 1496
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 1500
    sub-int/2addr v0, v1

    .line 1501
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1502
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1503
    iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    .line 1507
    if-lez v0, :cond_60

    .line 1508
    iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_3b

    if-le v3, v2, :cond_61

    .line 1509
    :cond_3b
    iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_47

    .line 1511
    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1514
    :cond_47
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->d(I)V

    .line 1515
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_60

    .line 1518
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;

    .line 1520
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V

    .line 1527
    :cond_60
    :goto_60
    return-void

    .line 1522
    :cond_61
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_60

    .line 1523
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V

    goto :goto_60
.end method

.method private n(I)Z
    .registers 5

    .prologue
    .line 2409
    const/16 v0, 0x21

    if-eq p1, v0, :cond_11

    const/16 v0, 0x82

    if-eq p1, v0, :cond_11

    .line 2410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2414
    :cond_11
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    .line 2415
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Z

    if-eqz v1, :cond_6e

    if-lez v0, :cond_6e

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6e

    .line 2416
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->g()Landroid/view/View;

    move-result-object v0

    .line 2417
    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_6e

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6e

    .line 2420
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2421
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2423
    if-eqz v0, :cond_59

    .line 2425
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2426
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2427
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/HListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2428
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2429
    const/4 v0, 0x1

    .line 2443
    :goto_58
    return v0

    .line 2436
    :cond_59
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2438
    if-eqz v0, :cond_6e

    .line 2439
    invoke-direct {p0, v0, p0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    goto :goto_58

    .line 2443
    :cond_6e
    const/4 v0, 0x0

    goto :goto_58
.end method

.method private o(I)Z
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2476
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_b

    .line 2548
    :cond_a
    :goto_a
    return v2

    .line 2480
    :cond_b
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->g()Landroid/view/View;

    move-result-object v6

    .line 2481
    iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    .line 2483
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->p(I)I

    move-result v7

    .line 2484
    invoke-direct {p0, p1, v7}, Lit/sephiroth/android/library/widget/HListView;->h(II)I

    move-result v3

    .line 2487
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Z

    if-eqz v0, :cond_ad

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->q(I)Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;

    move-result-object v0

    move-object v8, v0

    .line 2488
    :goto_22
    if-eqz v8, :cond_2c

    .line 2489
    invoke-virtual {v8}, Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;->a()I

    move-result v7

    .line 2490
    invoke-virtual {v8}, Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;->b()I

    move-result v3

    .line 2493
    :cond_2c
    if-eqz v8, :cond_b0

    move v0, v1

    .line 2494
    :goto_2f
    if-eq v7, v9, :cond_b9

    .line 2495
    if-eqz v8, :cond_b3

    move v0, v1

    :goto_34
    invoke-direct {p0, v6, p1, v7, v0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZ)V

    .line 2496
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V

    .line 2497
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V

    .line 2498
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->g()Landroid/view/View;

    move-result-object v5

    .line 2500
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Z

    if-eqz v0, :cond_50

    if-nez v8, :cond_50

    .line 2503
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2504
    if-eqz v0, :cond_50

    .line 2505
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2509
    :cond_50
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->w()V

    move v0, v1

    move v6, v7

    .line 2512
    :goto_55
    if-lez v3, :cond_60

    .line 2513
    const/16 v0, 0x21

    if-ne p1, v0, :cond_b5

    move v0, v3

    :goto_5c
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->r(I)V

    move v0, v1

    .line 2519
    :cond_60
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Z

    if-eqz v3, :cond_81

    if-nez v8, :cond_81

    if-eqz v5, :cond_81

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 2520
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 2521
    invoke-direct {p0, v3, p0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_7e

    invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->g(Landroid/view/View;)I

    move-result v8

    if-lez v8, :cond_81

    .line 2522
    :cond_7e
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 2527
    :cond_81
    if-ne v7, v9, :cond_b7

    if-eqz v5, :cond_b7

    invoke-direct {p0, v5, p0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_b7

    .line 2529
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->m()V

    .line 2533
    iput v9, p0, Lit/sephiroth/android/library/widget/HListView;->M:I

    move-object v3, v4

    .line 2536
    :goto_91
    if-eqz v0, :cond_a

    .line 2537
    if-eqz v3, :cond_9e

    .line 2538
    invoke-virtual {p0, v6, v3}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V

    .line 2539
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->J:I

    .line 2541
    :cond_9e
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 2542
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 2544
    :cond_a7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->b()V

    move v2, v1

    .line 2545
    goto/16 :goto_a

    :cond_ad
    move-object v8, v4

    .line 2487
    goto/16 :goto_22

    :cond_b0
    move v0, v2

    .line 2493
    goto/16 :goto_2f

    :cond_b3
    move v0, v2

    .line 2495
    goto :goto_34

    .line 2513
    :cond_b5
    neg-int v0, v3

    goto :goto_5c

    :cond_b7
    move-object v3, v5

    goto :goto_91

    :cond_b9
    move v10, v5

    move-object v5, v6

    move v6, v10

    goto :goto_55
.end method

.method private p(I)I
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 2802
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    .line 2803
    const/16 v0, 0x82

    if-ne p1, v0, :cond_3d

    .line 2804
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-eq v0, v3, :cond_19

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    add-int/lit8 v0, v0, 0x1

    .line 2807
    :goto_f
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_1b

    move v0, v3

    .line 2842
    :cond_18
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 2804
    goto :goto_f

    .line 2810
    :cond_1b
    if-ge v0, v1, :cond_1e

    move v0, v1

    .line 2814
    :cond_1e
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLastVisiblePosition()I

    move-result v2

    .line 2815
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->z()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 2816
    :goto_26
    if-gt v0, v2, :cond_7d

    .line 2817
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3a

    sub-int v5, v0, v1

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_18

    .line 2816
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 2823
    :cond_3d
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 2824
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-eq v2, v3, :cond_58

    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    add-int/lit8 v2, v2, -0x1

    .line 2827
    :goto_4c
    if-ltz v2, :cond_56

    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v2, v4, :cond_60

    :cond_56
    move v0, v3

    .line 2828
    goto :goto_18

    .line 2824
    :cond_58
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_4c

    .line 2830
    :cond_60
    if-le v2, v0, :cond_7f

    .line 2834
    :goto_62
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->z()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 2835
    :goto_66
    if-lt v0, v1, :cond_7d

    .line 2836
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7a

    sub-int v4, v0, v1

    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_18

    .line 2835
    :cond_7a
    add-int/lit8 v0, v0, -0x1

    goto :goto_66

    :cond_7d
    move v0, v3

    .line 2842
    goto :goto_18

    :cond_7f
    move v0, v2

    goto :goto_62
.end method

.method private q(I)Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x82

    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 2854
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->g()Landroid/view/View;

    move-result-object v3

    .line 2856
    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2857
    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2858
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2883
    :goto_1e
    if-eqz v0, :cond_ca

    .line 2884
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->f(Landroid/view/View;)I

    move-result v1

    .line 2888
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-eq v3, v6, :cond_a3

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-eq v1, v3, :cond_a3

    .line 2889
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->p(I)I

    move-result v3

    .line 2890
    if-eq v3, v6, :cond_a3

    if-ne p1, v7, :cond_36

    if-lt v3, v1, :cond_3c

    :cond_36
    const/16 v4, 0x21

    if-ne p1, v4, :cond_a3

    if-le v3, v1, :cond_a3

    :cond_3c
    move-object v0, v2

    .line 2915
    :goto_3d
    return-object v0

    .line 2860
    :cond_3e
    if-ne p1, v7, :cond_6f

    .line 2861
    iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    if-lez v4, :cond_6b

    .line 2862
    :goto_44
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_6d

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    move-result v0

    :goto_4e
    add-int/2addr v0, v4

    .line 2864
    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    if-le v4, v0, :cond_5b

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2868
    :cond_5b
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2880
    :goto_60
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1e

    :cond_6b
    move v0, v1

    .line 2861
    goto :goto_44

    :cond_6d
    move v0, v1

    .line 2862
    goto :goto_4e

    .line 2870
    :cond_6f
    iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-ge v4, v5, :cond_9f

    .line 2872
    :goto_7c
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-eqz v0, :cond_a1

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    move-result v0

    :goto_8b
    sub-int v0, v4, v0

    .line 2874
    if-eqz v3, :cond_99

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-ge v4, v0, :cond_99

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    .line 2878
    :cond_99
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_60

    :cond_9f
    move v0, v1

    .line 2870
    goto :goto_7c

    :cond_a1
    move v0, v1

    .line 2872
    goto :goto_8b

    .line 2897
    :cond_a3
    invoke-direct {p0, p1, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;I)I

    move-result v3

    .line 2899
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    move-result v4

    .line 2900
    if-ge v3, v4, :cond_b8

    .line 2902
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2903
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;

    invoke-virtual {v0, v1, v3}, Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;->a(II)V

    .line 2904
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;

    goto :goto_3d

    .line 2905
    :cond_b8
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->g(Landroid/view/View;)I

    move-result v3

    if-ge v3, v4, :cond_ca

    .line 2910
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2911
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;

    invoke-virtual {v0, v1, v4}, Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;->a(II)V

    .line 2912
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/HListView$ArrowScrollFocusResult;

    goto/16 :goto_3d

    :cond_ca
    move-object v0, v2

    .line 2915
    goto/16 :goto_3d
.end method

.method private r(I)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 3008
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->d(I)V

    .line 3010
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, v1

    .line 3011
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 3012
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    .line 3014
    if-gez p1, :cond_78

    .line 3018
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    .line 3019
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3020
    :goto_20
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v3, :cond_38

    .line 3021
    iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    .line 3022
    iget v6, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_38

    .line 3023
    invoke-direct {p0, v0, v5}, Lit/sephiroth/android/library/widget/HListView;->c(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3024
    add-int/lit8 v1, v1, 0x1

    .line 3028
    goto :goto_20

    .line 3033
    :cond_38
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge v1, v3, :cond_47

    .line 3034
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->d(I)V

    .line 3038
    :cond_47
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 3039
    :goto_4c
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge v0, v2, :cond_d8

    .line 3040
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 3041
    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    invoke-virtual {v4, v0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->b(I)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 3042
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3043
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    invoke-virtual {v4, v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a(Landroid/view/View;I)V

    .line 3047
    :goto_68
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3048
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    move-object v1, v0

    .line 3049
    goto :goto_4c

    .line 3045
    :cond_74
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_68

    .line 3052
    :cond_78
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3055
    :goto_7c
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le v1, v2, :cond_93

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    if-lez v1, :cond_93

    .line 3056
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3057
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    goto :goto_7c

    .line 3062
    :cond_93
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le v1, v2, :cond_a2

    .line 3063
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->d(I)V

    .line 3066
    :cond_a2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 3067
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    .line 3070
    :goto_ae
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v3, :cond_d8

    .line 3071
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 3072
    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    invoke-virtual {v4, v0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 3073
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3074
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v0, v2

    invoke-virtual {v4, v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a(Landroid/view/View;I)V

    .line 3078
    :goto_cb
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    .line 3079
    goto :goto_ae

    .line 3076
    :cond_d4
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_cb

    .line 3081
    :cond_d8
    return-void
.end method


# virtual methods
.method protected A()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1217
    const/4 v0, 0x1

    return v0
.end method

.method final a(IIIII)I
    .registers 15

    .prologue
    const/4 v1, 0x0

    const/4 v8, -0x1

    .line 1247
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    .line 1248
    if-nez v4, :cond_11

    .line 1249
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int p4, v0, v1

    .line 1301
    :cond_10
    :goto_10
    return p4

    .line 1253
    :cond_11
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 1254
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    if-lez v2, :cond_66

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->au:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_66

    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    move v3, v2

    .line 1262
    :goto_25
    if-ne p3, v8, :cond_2d

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 p3, v2, -0x1

    .line 1263
    :cond_2d
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    .line 1264
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->A()Z

    move-result v5

    .line 1265
    iget-object v6, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z

    .line 1267
    :goto_35
    if-gt p2, p3, :cond_70

    .line 1268
    invoke-virtual {p0, p2, v6}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;

    move-result-object v7

    .line 1270
    invoke-direct {p0, v7, p2, p1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;II)V

    .line 1272
    if-lez p2, :cond_72

    .line 1274
    add-int/2addr v0, v3

    move v2, v0

    .line 1278
    :goto_42
    if-eqz v5, :cond_55

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    invoke-virtual {v4, v0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->b(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1279
    invoke-virtual {v4, v7, v8}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a(Landroid/view/View;I)V

    .line 1282
    :cond_55
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    .line 1284
    if-lt v0, p4, :cond_68

    .line 1287
    if-ltz p5, :cond_10

    if-le p2, p5, :cond_10

    if-lez v1, :cond_10

    if-eq v0, p4, :cond_10

    move p4, v1

    goto :goto_10

    :cond_66
    move v3, v1

    .line 1254
    goto :goto_25

    .line 1294
    :cond_68
    if-ltz p5, :cond_6d

    if-lt p2, p5, :cond_6d

    move v1, v0

    .line 1267
    :cond_6d
    add-int/lit8 p2, p2, 0x1

    goto :goto_35

    :cond_70
    move p4, v0

    .line 1301
    goto :goto_10

    :cond_72
    move v2, v0

    goto :goto_42
.end method

.method protected a(IZ)I
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 2094
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    .line 2095
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    move p1, v0

    .line 2121
    :cond_c
    :goto_c
    return p1

    .line 2099
    :cond_d
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2100
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z

    if-nez v3, :cond_3e

    .line 2101
    if-eqz p2, :cond_27

    .line 2102
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2103
    :goto_1c
    if-ge p1, v2, :cond_38

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_38

    .line 2104
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 2107
    :cond_27
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2108
    :goto_2d
    if-ltz p1, :cond_38

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_38

    .line 2109
    add-int/lit8 p1, p1, -0x1

    goto :goto_2d

    .line 2113
    :cond_38
    if-ltz p1, :cond_3c

    if-lt p1, v2, :cond_c

    :cond_3c
    move p1, v0

    .line 2114
    goto :goto_c

    .line 2118
    :cond_3e
    if-ltz p1, :cond_42

    if-lt p1, v2, :cond_c

    :cond_42
    move p1, v0

    .line 2119
    goto :goto_c
.end method

.method a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 5

    .prologue
    .line 3359
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->au:Landroid/graphics/drawable/Drawable;

    .line 3361
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3362
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3363
    return-void
.end method

.method a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 7

    .prologue
    .line 3152
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 3154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3155
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3157
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 3158
    if-ge v1, v0, :cond_17

    .line 3159
    iget v1, p3, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3162
    :cond_17
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3163
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3166
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6

    .prologue
    .line 289
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lit/sephiroth/android/library/widget/HeaderViewListAdapter;

    if-nez v0, :cond_13

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_13
    new-instance v0, Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;-><init>()V

    .line 295
    iput-object p1, v0, Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;->a:Landroid/view/View;

    .line 296
    iput-object p2, v0, Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;->b:Ljava/lang/Object;

    .line 297
    iput-boolean p3, v0, Lit/sephiroth/android/library/widget/HListView$FixedViewInfo;->c:Z

    .line 298
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    if-eqz v0, :cond_30

    .line 303
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;->onChanged()V

    .line 305
    :cond_30
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    if-eqz v0, :cond_11

    .line 463
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 466
    :cond_11
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->d()V

    .line 467
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->b()V

    .line 469
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_29

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8f

    .line 470
    :cond_29
    new-instance v0, Lit/sephiroth/android/library/widget/HeaderViewListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aA:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lit/sephiroth/android/library/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    .line 475
    :goto_34
    const/4 v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->ar:I

    .line 476
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/HListView;->as:J

    .line 479
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/widget/ListAdapter;)V

    .line 481
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_97

    .line 482
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z

    .line 483
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->ap:I

    .line 484
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    .line 485
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->u()V

    .line 487
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    .line 488
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 490
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a(I)V

    .line 493
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z

    if-eqz v0, :cond_92

    .line 494
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v3}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I

    move-result v0

    .line 498
    :goto_7e
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V

    .line 499
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V

    .line 501
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-nez v0, :cond_8b

    .line 503
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->w()V

    .line 512
    :cond_8b
    :goto_8b
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V

    .line 513
    return-void

    .line 472
    :cond_8f
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    goto :goto_34

    .line 496
    :cond_92
    invoke-virtual {p0, v3, v4}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I

    move-result v0

    goto :goto_7e

    .line 506
    :cond_97
    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z

    .line 507
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->u()V

    .line 509
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->w()V

    goto :goto_8b
.end method

.method protected a(Z)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 650
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    .line 651
    if-eqz p1, :cond_24

    .line 656
    if-lez v1, :cond_16

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    add-int/2addr v0, v2

    .line 657
    :cond_16
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;

    .line 658
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->l(I)V

    .line 668
    :goto_23
    return-void

    .line 664
    :cond_24
    if-lez v1, :cond_40

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    sub-int/2addr v0, v1

    .line 665
    :goto_31
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;

    .line 666
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->m(I)V

    goto :goto_23

    .line 664
    :cond_40
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    goto :goto_31
.end method

.method final a(IIIIII)[I
    .registers 17

    .prologue
    .line 1309
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    .line 1310
    if-nez v2, :cond_20

    .line 1311
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1349
    :goto_1f
    return-object v0

    .line 1315
    :cond_20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v1

    .line 1316
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, v1

    .line 1318
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    if-lez v0, :cond_86

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->au:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_86

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    move v3, v0

    .line 1320
    :goto_3f
    const/4 v1, 0x0

    .line 1321
    const/4 v0, 0x0

    .line 1327
    const/4 v6, -0x1

    if-ne p3, v6, :cond_4a

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 p3, v2, -0x1

    .line 1328
    :cond_4a
    iget-object v6, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    .line 1329
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->A()Z

    move-result v7

    .line 1330
    iget-object v8, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z

    move v2, v1

    move v1, v0

    .line 1332
    :goto_54
    if-gt p2, p3, :cond_89

    .line 1333
    invoke-virtual {p0, p2, v8}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;

    move-result-object v9

    .line 1335
    invoke-direct {p0, v9, p2, p1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;II)V

    .line 1338
    if-eqz v7, :cond_71

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    invoke-virtual {v6, v0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->b(I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1339
    const/4 v0, -0x1

    invoke-virtual {v6, v9, v0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a(Landroid/view/View;I)V

    .line 1342
    :cond_71
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1343
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1332
    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_54

    .line 1318
    :cond_86
    const/4 v0, 0x0

    move v3, v0

    goto :goto_3f

    .line 1346
    :cond_89
    add-int/2addr v2, v4

    .line 1347
    add-int/2addr v1, v5

    .line 1349
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v3

    const/4 v2, 0x1

    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v0, v2

    goto :goto_1f
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 7

    .prologue
    .line 3169
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 3171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3172
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3174
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 3175
    if-ge v1, v0, :cond_16

    .line 3176
    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3179
    :cond_16
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3180
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3182
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3183
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 3386
    if-eqz p1, :cond_1e

    .line 3387
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    .line 3391
    :goto_9
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->au:Landroid/graphics/drawable/Drawable;

    .line 3392
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aC:Z

    .line 3393
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V

    .line 3394
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 3395
    return-void

    .line 3389
    :cond_1e
    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    goto :goto_9
.end method

.method public b(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 318
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 319
    return-void
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 921
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->c(I)V

    .line 922
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 3456
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->ax:Landroid/graphics/drawable/Drawable;

    .line 3457
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v0

    if-gez v0, :cond_b

    .line 3458
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 3460
    :cond_b
    return-void
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 1996
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected d()V
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->a(Ljava/util/ArrayList;)V

    .line 523
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aA:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->a(Ljava/util/ArrayList;)V

    .line 525
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V

    .line 527
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->h:I

    .line 528
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 3477
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Landroid/graphics/drawable/Drawable;

    .line 3478
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 3479
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 27

    .prologue
    .line 3187
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->y:Z

    if-eqz v2, :cond_b

    .line 3188
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->z:Z

    .line 3192
    :cond_b
    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/HListView;->av:I

    .line 3193
    move-object/from16 v0, p0

    iget-object v9, v0, Lit/sephiroth/android/library/widget/HListView;->ax:Landroid/graphics/drawable/Drawable;

    .line 3194
    move-object/from16 v0, p0

    iget-object v10, v0, Lit/sephiroth/android/library/widget/HListView;->ay:Landroid/graphics/drawable/Drawable;

    .line 3195
    if-eqz v9, :cond_140

    const/4 v2, 0x1

    move v7, v2

    .line 3196
    :goto_1b
    if-eqz v10, :cond_144

    const/4 v2, 0x1

    move v6, v2

    .line 3197
    :goto_1f
    if-lez v8, :cond_148

    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->au:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_148

    const/4 v2, 0x1

    move v5, v2

    .line 3199
    :goto_29
    if-nez v5, :cond_2f

    if-nez v7, :cond_2f

    if-eqz v6, :cond_18d

    .line 3201
    :cond_2f
    move-object/from16 v0, p0

    iget-object v11, v0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    .line 3202
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingTop()I

    move-result v2

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3203
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getBottom()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 3205
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v12

    .line 3206
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3207
    move-object/from16 v0, p0

    iget v14, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    .line 3208
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v14, v2

    add-int/lit8 v15, v2, -0x1

    .line 3209
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/HListView;->aD:Z

    move/from16 v16, v0

    .line 3210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/HListView;->aE:Z

    move/from16 v17, v0

    .line 3211
    move-object/from16 v0, p0

    iget v0, v0, Lit/sephiroth/android/library/widget/HListView;->V:I

    move/from16 v18, v0

    .line 3212
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/HListView;->aF:Z

    move/from16 v19, v0

    .line 3213
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    .line 3218
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_14c

    invoke-super/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_14c

    const/4 v2, 0x1

    move v4, v2

    .line 3220
    :goto_91
    if-eqz v4, :cond_b3

    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->aI:Landroid/graphics/Paint;

    if-nez v2, :cond_b3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->aB:Z

    if-eqz v2, :cond_b3

    .line 3221
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->aI:Landroid/graphics/Paint;

    .line 3222
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->aI:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getCacheColorHint()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3224
    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/HListView;->aI:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    .line 3226
    const/4 v3, 0x0

    .line 3227
    const/4 v2, 0x0

    .line 3233
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v22

    add-int v22, v22, v2

    .line 3234
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->K:Z

    if-nez v2, :cond_191

    .line 3235
    const/4 v3, 0x0

    .line 3238
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v2

    .line 3239
    if-lez v12, :cond_ea

    if-gez v2, :cond_ea

    .line 3240
    if-eqz v7, :cond_150

    .line 3241
    const/4 v7, 0x0

    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3242
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3243
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v11}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3251
    :cond_ea
    :goto_ea
    const/4 v2, 0x0

    move/from16 v24, v2

    move v2, v3

    move/from16 v3, v24

    :goto_f0
    if-ge v3, v12, :cond_171

    .line 3252
    if-nez v16, :cond_f8

    add-int v7, v18, v3

    if-lt v7, v13, :cond_13d

    :cond_f8
    if-nez v17, :cond_fe

    add-int v7, v18, v3

    if-ge v7, v15, :cond_13d

    .line 3254
    :cond_fe
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3255
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 3258
    if-eqz v5, :cond_13d

    move/from16 v0, v22

    if-ge v2, v0, :cond_13d

    if-eqz v6, :cond_114

    add-int/lit8 v7, v12, -0x1

    if-eq v3, v7, :cond_13d

    .line 3260
    :cond_114
    if-nez v19, :cond_130

    add-int v7, v18, v3

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_161

    add-int/lit8 v7, v12, -0x1

    if-eq v3, v7, :cond_130

    add-int v7, v18, v3

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_161

    .line 3262
    :cond_130
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3263
    add-int v7, v2, v8

    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3264
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v3}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3251
    :cond_13d
    :goto_13d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f0

    .line 3195
    :cond_140
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_1b

    .line 3196
    :cond_144
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_1f

    .line 3197
    :cond_148
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_29

    .line 3218
    :cond_14c
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_91

    .line 3244
    :cond_150
    if-eqz v5, :cond_ea

    .line 3245
    const/4 v2, 0x0

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3246
    neg-int v2, v8

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3247
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_ea

    .line 3265
    :cond_161
    if-eqz v4, :cond_13d

    .line 3266
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3267
    add-int v7, v2, v8

    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3268
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_13d

    .line 3274
    :cond_171
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    .line 3275
    if-eqz v6, :cond_18d

    add-int v4, v18, v12

    if-ne v4, v14, :cond_18d

    if-le v3, v2, :cond_18d

    .line 3277
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3278
    iput v3, v11, Landroid/graphics/Rect;->right:I

    .line 3279
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3334
    :cond_18d
    :goto_18d
    invoke-super/range {p0 .. p1}, Lit/sephiroth/android/library/widget/AbsHListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3335
    return-void

    .line 3284
    :cond_191
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v14

    .line 3286
    if-lez v12, :cond_1af

    if-eqz v7, :cond_1af

    .line 3287
    iput v14, v11, Landroid/graphics/Rect;->left:I

    .line 3288
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3289
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v11}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3292
    :cond_1af
    if-eqz v7, :cond_1fa

    const/4 v2, 0x1

    .line 3293
    :goto_1b2
    if-ge v2, v12, :cond_20c

    .line 3294
    if-nez v16, :cond_1ba

    add-int v7, v18, v2

    if-lt v7, v13, :cond_1f7

    :cond_1ba
    if-nez v17, :cond_1c0

    add-int v7, v18, v2

    if-ge v7, v15, :cond_1f7

    .line 3296
    :cond_1c0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3297
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 3299
    if-le v7, v3, :cond_1f7

    .line 3300
    if-nez v19, :cond_1e8

    add-int v9, v18, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_1fc

    add-int/lit8 v9, v12, -0x1

    if-eq v2, v9, :cond_1e8

    add-int v9, v18, v2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_1fc

    .line 3302
    :cond_1e8
    sub-int v9, v7, v8

    iput v9, v11, Landroid/graphics/Rect;->left:I

    .line 3303
    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3308
    add-int/lit8 v7, v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3293
    :cond_1f7
    :goto_1f7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b2

    .line 3292
    :cond_1fa
    const/4 v2, 0x0

    goto :goto_1b2

    .line 3309
    :cond_1fc
    if-eqz v4, :cond_1f7

    .line 3310
    sub-int v9, v7, v8

    iput v9, v11, Landroid/graphics/Rect;->left:I

    .line 3311
    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3312
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1f7

    .line 3318
    :cond_20c
    if-lez v12, :cond_18d

    if-lez v14, :cond_18d

    .line 3319
    if-eqz v6, :cond_224

    .line 3320
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v2

    .line 3321
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3322
    add-int/2addr v2, v14

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3323
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_18d

    .line 3324
    :cond_224
    if-eqz v5, :cond_18d

    .line 3325
    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/Rect;->left:I

    .line 3326
    add-int v2, v22, v8

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3327
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_18d
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 2147
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2148
    if-nez v0, :cond_1a

    .line 2150
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 2151
    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1a

    .line 2154
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lit/sephiroth/android/library/widget/HListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2157
    :cond_1a
    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8

    .prologue
    .line 3339
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3340
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->z:Z

    if-eqz v1, :cond_b

    .line 3341
    const/4 v1, 0x0

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->z:Z

    .line 3343
    :cond_b
    return v0
.end method

.method protected e(I)I
    .registers 5

    .prologue
    .line 1355
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    .line 1356
    if-lez v1, :cond_33

    .line 1357
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z

    if-nez v0, :cond_1e

    .line 1358
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_33

    .line 1359
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1360
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    if-gt p1, v2, :cond_1b

    .line 1361
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v0, v1

    .line 1373
    :goto_1a
    return v0

    .line 1358
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1365
    :cond_1e
    add-int/lit8 v0, v1, -0x1

    :goto_20
    if-ltz v0, :cond_33

    .line 1366
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1367
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_30

    .line 1368
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v0, v1

    goto :goto_1a

    .line 1365
    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 1373
    :cond_33
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method protected e()V
    .registers 18

    .prologue
    .line 1531
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lit/sephiroth/android/library/widget/HListView;->at:Z

    .line 1532
    if-nez v10, :cond_24

    .line 1533
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->at:Z

    .line 1539
    :try_start_b
    invoke-super/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 1543
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    if-nez v1, :cond_25

    .line 1544
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->d()V

    .line 1545
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->b()V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_107

    .line 1807
    if-nez v10, :cond_24

    .line 1808
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->at:Z

    .line 1811
    :cond_24
    :goto_24
    return-void

    .line 1549
    :cond_25
    :try_start_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 1550
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v6, v1, v2

    .line 1552
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v11

    .line 1554
    const/4 v4, 0x0

    .line 1557
    const/4 v2, 0x0

    .line 1558
    const/4 v1, 0x0

    .line 1559
    const/4 v3, 0x0

    .line 1561
    const/4 v7, 0x0

    .line 1568
    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/HListView;->h:I

    packed-switch v8, :pswitch_data_344

    .line 1583
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->am:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->V:I

    sub-int v3, v1, v3

    .line 1584
    if-ltz v3, :cond_60

    if-ge v3, v11, :cond_60

    .line 1585
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1589
    :cond_60
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1591
    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/HListView;->ak:I

    if-ltz v8, :cond_76

    .line 1592
    move-object/from16 v0, p0

    iget v4, v0, Lit/sephiroth/android/library/widget/HListView;->ak:I

    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/HListView;->am:I

    sub-int/2addr v4, v8

    .line 1596
    :cond_76
    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v1

    .line 1599
    :goto_7e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lit/sephiroth/android/library/widget/HListView;->aj:Z

    .line 1600
    if-eqz v12, :cond_87

    .line 1601
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->r()V

    .line 1606
    :cond_87
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-nez v1, :cond_b2

    .line 1607
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->d()V

    .line 1608
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->b()V
    :try_end_93
    .catchall {:try_start_25 .. :try_end_93} :catchall_107

    .line 1807
    if-nez v10, :cond_24

    .line 1808
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->at:Z

    goto :goto_24

    .line 1570
    :pswitch_9b
    :try_start_9b
    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/HListView;->ak:I

    move-object/from16 v0, p0

    iget v9, v0, Lit/sephiroth/android/library/widget/HListView;->V:I

    sub-int/2addr v8, v9

    .line 1571
    if-ltz v8, :cond_340

    if-ge v8, v11, :cond_340

    .line 1572
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v1

    goto :goto_7e

    :pswitch_b0
    move-object v9, v1

    .line 1579
    goto :goto_7e

    .line 1610
    :cond_b2
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-eq v1, v8, :cond_110

    .line 1611
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") with Adapter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_107
    .catchall {:try_start_9b .. :try_end_107} :catchall_107

    .line 1807
    :catchall_107
    move-exception v1

    if-nez v10, :cond_10f

    .line 1808
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->at:Z

    :cond_10f
    throw v1

    .line 1618
    :cond_110
    :try_start_110
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ak:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V

    .line 1622
    move-object/from16 v0, p0

    iget v13, v0, Lit/sephiroth/android/library/widget/HListView;->V:I

    .line 1623
    move-object/from16 v0, p0

    iget-object v14, v0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    .line 1626
    const/4 v1, 0x0

    .line 1630
    if-eqz v12, :cond_135

    .line 1631
    const/4 v8, 0x0

    :goto_125
    if-ge v8, v11, :cond_138

    .line 1632
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    add-int v16, v13, v8

    invoke-virtual/range {v14 .. v16}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a(Landroid/view/View;I)V

    .line 1631
    add-int/lit8 v8, v8, 0x1

    goto :goto_125

    .line 1635
    :cond_135
    invoke-virtual {v14, v11, v13}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a(II)V

    .line 1642
    :cond_138
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1643
    if-eqz v8, :cond_33c

    .line 1648
    if-eqz v12, :cond_148

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lit/sephiroth/android/library/widget/HListView;->c(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_152

    .line 1651
    :cond_148
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->findFocus()Landroid/view/View;

    move-result-object v7

    .line 1652
    if-eqz v7, :cond_151

    .line 1654
    invoke-virtual {v7}, Landroid/view/View;->onStartTemporaryDetach()V

    :cond_151
    move-object v1, v8

    .line 1657
    :cond_152
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->requestFocus()Z

    move-object v8, v7

    move-object v7, v1

    .line 1672
    :goto_157
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->detachAllViewsFromParent()V

    .line 1673
    invoke-virtual {v14}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->d()V

    .line 1675
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->h:I

    packed-switch v1, :pswitch_data_352

    .line 1702
    if-nez v11, :cond_297

    .line 1703
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->K:Z

    if-nez v1, :cond_276

    .line 1704
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I

    move-result v1

    .line 1705
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V

    .line 1706
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lit/sephiroth/android/library/widget/HListView;->k(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1725
    :goto_180
    invoke-virtual {v14}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->e()V

    .line 1727
    if-eqz v2, :cond_2fb

    .line 1730
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->aG:Z

    if-eqz v1, :cond_2f3

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2f3

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2f3

    .line 1731
    if-ne v2, v7, :cond_1a1

    if-eqz v8, :cond_1a1

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-nez v1, :cond_1a7

    :cond_1a1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_2e3

    :cond_1a7
    const/4 v1, 0x1

    .line 1734
    :goto_1a8
    if-nez v1, :cond_2e6

    .line 1738
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 1739
    if-eqz v1, :cond_1b3

    .line 1740
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1742
    :cond_1b3
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V

    .line 1750
    :goto_1b9
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HListView;->J:I

    .line 1785
    :cond_1c1
    :goto_1c1
    if-eqz v8, :cond_1cc

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1cc

    .line 1787
    invoke-virtual {v8}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1790
    :cond_1cc
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HListView;->h:I

    .line 1791
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->aj:Z

    .line 1792
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->O:Ljava/lang/Runnable;

    if-eqz v1, :cond_1ea

    .line 1793
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->O:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->post(Ljava/lang/Runnable;)Z

    .line 1794
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->O:Ljava/lang/Runnable;

    .line 1796
    :cond_1ea
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->ad:Z

    .line 1797
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->am:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V

    .line 1799
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->f()V

    .line 1801
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-lez v1, :cond_204

    .line 1802
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->w()V

    .line 1805
    :cond_204
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->b()V
    :try_end_207
    .catchall {:try_start_110 .. :try_end_207} :catchall_107

    .line 1807
    if-nez v10, :cond_24

    .line 1808
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->at:Z

    goto/16 :goto_24

    .line 1677
    :pswitch_210
    if-eqz v3, :cond_21f

    .line 1678
    :try_start_212
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5, v6}, Lit/sephiroth/android/library/widget/HListView;->a(III)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_180

    .line 1680
    :cond_21f
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lit/sephiroth/android/library/widget/HListView;->f(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1682
    goto/16 :goto_180

    .line 1684
    :pswitch_228
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->aa:I

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->W:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1685
    goto/16 :goto_180

    .line 1687
    :pswitch_239
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;

    move-result-object v1

    .line 1688
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->B()V

    move-object v2, v1

    .line 1689
    goto/16 :goto_180

    .line 1691
    :pswitch_24b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HListView;->V:I

    .line 1692
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lit/sephiroth/android/library/widget/HListView;->k(I)Landroid/view/View;

    move-result-object v1

    .line 1693
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->B()V

    move-object v2, v1

    .line 1694
    goto/16 :goto_180

    .line 1696
    :pswitch_25c
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->n()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->W:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1697
    goto/16 :goto_180

    :pswitch_26d
    move-object/from16 v1, p0

    .line 1699
    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1700
    goto/16 :goto_180

    .line 1708
    :cond_276
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I

    move-result v1

    .line 1709
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V

    .line 1710
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1711
    goto/16 :goto_180

    .line 1713
    :cond_297
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-ltz v1, :cond_2bb

    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->am:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-ge v1, v3, :cond_2bb

    .line 1714
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-nez v2, :cond_2b6

    :goto_2ad
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_180

    :cond_2b6
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_2ad

    .line 1715
    :cond_2bb
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->V:I

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-ge v1, v2, :cond_2d9

    .line 1716
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->V:I

    if-nez v9, :cond_2d4

    :goto_2cb
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_180

    :cond_2d4
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_2cb

    .line 1718
    :cond_2d9
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_180

    .line 1731
    :cond_2e3
    const/4 v1, 0x0

    goto/16 :goto_1a8

    .line 1744
    :cond_2e6
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_1b9

    .line 1748
    :cond_2f3
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V

    goto/16 :goto_1b9

    .line 1752
    :cond_2fb
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->F:I

    if-lez v1, :cond_32f

    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->F:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_32f

    .line 1753
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->A:I

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->V:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1754
    if-eqz v1, :cond_322

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->A:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V

    .line 1762
    :cond_322
    :goto_322
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1c1

    if-eqz v8, :cond_1c1

    .line 1763
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1c1

    .line 1756
    :cond_32f
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HListView;->J:I

    .line 1757
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_33b
    .catchall {:try_start_212 .. :try_end_33b} :catchall_107

    goto :goto_322

    :cond_33c
    move-object v8, v7

    move-object v7, v1

    goto/16 :goto_157

    :cond_340
    move-object v9, v1

    goto/16 :goto_7e

    .line 1568
    nop

    :pswitch_data_344
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_9b
        :pswitch_b0
        :pswitch_b0
        :pswitch_b0
    .end packed-switch

    .line 1675
    :pswitch_data_352
    .packed-switch 0x1
        :pswitch_24b
        :pswitch_210
        :pswitch_239
        :pswitch_25c
        :pswitch_228
        :pswitch_26d
    .end packed-switch
.end method

.method public getCheckItemIds()[J
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3588
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3589
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 3618
    :goto_11
    return-object v0

    .line 3594
    :cond_12
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->b:I

    if-eqz v0, :cond_53

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_53

    .line 3595
    iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    .line 3596
    invoke-virtual {v5}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v6

    .line 3597
    new-array v2, v6, [J

    .line 3598
    iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    move v3, v4

    move v1, v4

    .line 3601
    :goto_2a
    if-ge v3, v6, :cond_49

    .line 3602
    invoke-virtual {v5, v3}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3603
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v5, v3}, Landroid/support/v4/util/SparseArrayCompat;->e(I)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v2, v1

    .line 3601
    :goto_44
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_2a

    .line 3609
    :cond_49
    if-ne v1, v6, :cond_4d

    move-object v0, v2

    .line 3610
    goto :goto_11

    .line 3612
    :cond_4d
    new-array v0, v1, [J

    .line 3613
    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11

    .line 3618
    :cond_53
    new-array v0, v4, [J

    goto :goto_11

    :cond_56
    move v0, v1

    goto :goto_44
.end method

.method public getDividerWidth()I
    .registers 2

    .prologue
    .line 3401
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    return v0
.end method

.method public getFooterViewsCount()I
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .registers 2

    .prologue
    .line 3116
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 224
    const v0, 0x3ea8f5c3    # 0.33f

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method h(I)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2322
    const/4 v2, -0x1

    .line 2325
    const/16 v3, 0x21

    if-ne p1, v3, :cond_54

    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v2

    move v2, v1

    .line 2331
    :goto_16
    if-ltz v3, :cond_6c

    .line 2332
    invoke-virtual {p0, v3, v2}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I

    move-result v3

    .line 2333
    if-ltz v3, :cond_6c

    .line 2334
    const/4 v1, 0x4

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->h:I

    .line 2335
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    .line 2337
    if-eqz v2, :cond_3a

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v4

    sub-int/2addr v1, v4

    if-le v3, v1, :cond_3a

    .line 2338
    const/4 v1, 0x3

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->h:I

    .line 2341
    :cond_3a
    if-nez v2, :cond_44

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_44

    .line 2342
    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->h:I

    .line 2345
    :cond_44
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->setSelectionInt(I)V

    .line 2346
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->b()V

    .line 2347
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_53

    .line 2348
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 2355
    :cond_53
    :goto_53
    return v0

    .line 2326
    :cond_54
    const/16 v3, 0x82

    if-ne p1, v3, :cond_6e

    .line 2327
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    move v2, v0

    .line 2328
    goto :goto_16

    :cond_6c
    move v0, v1

    .line 2355
    goto :goto_53

    :cond_6e
    move v3, v2

    move v2, v1

    goto :goto_16
.end method

.method i(I)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2368
    .line 2369
    const/16 v2, 0x21

    if-ne p1, v2, :cond_27

    .line 2370
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-eqz v2, :cond_47

    .line 2371
    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I

    move-result v1

    .line 2372
    if-ltz v1, :cond_18

    .line 2373
    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->h:I

    .line 2374
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectionInt(I)V

    .line 2375
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->b()V

    .line 2391
    :cond_18
    :goto_18
    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_26

    .line 2392
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z

    .line 2393
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 2396
    :cond_26
    return v0

    .line 2379
    :cond_27
    const/16 v2, 0x82

    if-ne p1, v2, :cond_47

    .line 2380
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_47

    .line 2381
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I

    move-result v1

    .line 2382
    if-ltz v1, :cond_18

    .line 2383
    const/4 v2, 0x3

    iput v2, p0, Lit/sephiroth/android/library/widget/HListView;->h:I

    .line 2384
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectionInt(I)V

    .line 2385
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->b()V

    goto :goto_18

    :cond_47
    move v0, v1

    goto :goto_18
.end method

.method public isOpaque()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3121
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->z:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aB:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aC:Z

    if-nez v0, :cond_13

    :cond_d
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_13
    const/4 v2, 0x1

    .line 3122
    :goto_14
    if-eqz v2, :cond_5a

    .line 3124
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 3125
    :goto_1e
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3126
    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v3, v0, :cond_33

    :cond_2a
    move v0, v1

    .line 3135
    :goto_2b
    return v0

    :cond_2c
    move v2, v1

    .line 3121
    goto :goto_14

    .line 3124
    :cond_2e
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingLeft()I

    move-result v0

    goto :goto_1e

    .line 3129
    :cond_33
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_3f
    sub-int v0, v3, v0

    .line 3130
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3131
    if-eqz v3, :cond_53

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v3, v0, :cond_5a

    :cond_53
    move v0, v1

    .line 3132
    goto :goto_2b

    .line 3129
    :cond_55
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingRight()I

    move-result v0

    goto :goto_3f

    :cond_5a
    move v0, v2

    .line 3135
    goto :goto_2b
.end method

.method j(I)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2456
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->af:Z

    .line 2457
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->o(I)Z

    move-result v0

    .line 2458
    if-eqz v0, :cond_11

    .line 2459
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->playSoundEffect(I)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_14

    .line 2463
    :cond_11
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->af:Z

    return v0

    :catchall_14
    move-exception v0

    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->af:Z

    throw v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 3546
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->onFinishInflate()V

    .line 3548
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    .line 3549
    if-lez v1, :cond_19

    .line 3550
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_16

    .line 3551
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;)V

    .line 3550
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3553
    :cond_16
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->removeAllViews()V

    .line 3555
    :cond_19
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 15

    .prologue
    const/4 v2, 0x0

    .line 3490
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3492
    iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    .line 3493
    const/4 v3, -0x1

    .line 3495
    if-eqz v5, :cond_60

    if-eqz p1, :cond_60

    if-eqz p3, :cond_60

    .line 3496
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollY()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3500
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v1, v4

    if-ge v0, v1, :cond_2a

    .line 3501
    iput v2, p0, Lit/sephiroth/android/library/widget/HListView;->h:I

    .line 3502
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->e()V

    .line 3507
    :cond_2a
    iget-object v6, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Rect;

    .line 3508
    const v0, 0x7fffffff

    .line 3509
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v7

    .line 3510
    iget v8, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    move v4, v2

    .line 3512
    :goto_36
    if-ge v4, v7, :cond_60

    .line 3514
    add-int v1, v8, v4

    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_47

    move v1, v2

    move v2, v3

    .line 3512
    :goto_42
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    move v2, v1

    goto :goto_36

    .line 3518
    :cond_47
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3519
    invoke-virtual {v9, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3520
    invoke-virtual {p0, v9, v6}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3521
    invoke-static {p3, v6, p2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v1

    .line 3523
    if-ge v1, v0, :cond_6d

    .line 3526
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v0

    move v2, v4

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_42

    .line 3531
    :cond_60
    if-ltz v3, :cond_69

    .line 3532
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/HListView;->setSelectionFromLeft(II)V

    .line 3536
    :goto_68
    return-void

    .line 3534
    :cond_69
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V

    goto :goto_68

    :cond_6d
    move v1, v2

    move v2, v3

    goto :goto_42
.end method

.method public onGlobalLayout()V
    .registers 1

    .prologue
    .line 3635
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .prologue
    .line 3623
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3624
    const-class v0, Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3625
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 3630
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3631
    const-class v0, Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3632
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 2162
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lit/sephiroth/android/library/widget/HListView;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 2167
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/HListView;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 2172
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lit/sephiroth/android/library/widget/HListView;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1118
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->onMeasure(II)V

    .line 1120
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1121
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 1122
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1123
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1125
    const/4 v3, 0x0

    .line 1126
    const/4 v2, 0x0

    .line 1127
    const/4 v1, 0x0

    .line 1129
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    if-nez v0, :cond_9f

    const/4 v0, 0x0

    :goto_1b
    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    .line 1131
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-lez v0, :cond_63

    if-eqz v8, :cond_25

    if-nez v6, :cond_63

    .line 1136
    :cond_25
    const/4 v0, 0x0

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z

    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;

    move-result-object v7

    .line 1138
    const/4 v0, 0x0

    invoke-direct {p0, v7, v0, p2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;II)V

    .line 1140
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1141
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v0, v9, :cond_47

    .line 1144
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v1, v0}, Lit/sephiroth/android/library/widget/HListView;->combineMeasuredStates(II)I

    move-result v0

    move v1, v0

    .line 1147
    :cond_47
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->A()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v9, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    invoke-virtual {v9, v0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->b(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1148
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    const/4 v9, -0x1

    invoke-virtual {v0, v7, v9}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a(Landroid/view/View;I)V

    :cond_63
    move v0, v2

    move v7, v3

    .line 1152
    if-nez v6, :cond_a7

    .line 1153
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalScrollbarHeight()I

    move-result v1

    add-int v5, v0, v1

    move v6, v5

    .line 1166
    :goto_78
    if-nez v8, :cond_8c

    .line 1167
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1170
    :cond_8c
    const/high16 v0, -0x80000000

    if-ne v8, v0, :cond_99

    .line 1171
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIIII)I

    move-result v4

    .line 1178
    :cond_99
    invoke-virtual {p0, v4, v6}, Lit/sephiroth/android/library/widget/HListView;->setMeasuredDimension(II)V

    .line 1179
    iput p2, p0, Lit/sephiroth/android/library/widget/HListView;->v:I

    .line 1180
    return-void

    .line 1129
    :cond_9f
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto/16 :goto_1b

    .line 1154
    :cond_a7
    const/high16 v0, -0x80000000

    if-ne v6, v0, :cond_c4

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-lez v0, :cond_c4

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->aw:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_c4

    .line 1157
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->aw:I

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->aw:I

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lit/sephiroth/android/library/widget/HListView;->a(IIIIII)[I

    move-result-object v0

    .line 1158
    const/4 v1, 0x1

    aget v5, v0, v1

    move v6, v5

    .line 1160
    goto :goto_78

    .line 1161
    :cond_c4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_d0

    .line 1162
    const/high16 v0, -0x1000000

    and-int/2addr v0, v1

    or-int/2addr v5, v0

    move v6, v5

    goto :goto_78

    :cond_d0
    move v6, v5

    goto :goto_78
.end method

.method protected onSizeChanged(IIII)V
    .registers 10

    .prologue
    .line 1098
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3d

    .line 1099
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1100
    if-eqz v0, :cond_3d

    .line 1101
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1102
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1103
    const/4 v3, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingLeft()I

    move-result v4

    sub-int v4, p1, v4

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1104
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    .line 1105
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aK:Lit/sephiroth/android/library/widget/HListView$FocusSelector;

    if-nez v2, :cond_34

    .line 1106
    new-instance v2, Lit/sephiroth/android/library/widget/HListView$FocusSelector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lit/sephiroth/android/library/widget/HListView$FocusSelector;-><init>(Lit/sephiroth/android/library/widget/HListView;Lit/sephiroth/android/library/widget/HListView$1;)V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aK:Lit/sephiroth/android/library/widget/HListView$FocusSelector;

    .line 1108
    :cond_34
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aK:Lit/sephiroth/android/library/widget/HListView$FocusSelector;

    invoke-virtual {v2, v1, v0}, Lit/sephiroth/android/library/widget/HListView$FocusSelector;->a(II)Lit/sephiroth/android/library/widget/HListView$FocusSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->post(Ljava/lang/Runnable;)Z

    .line 1111
    :cond_3d
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->onSizeChanged(IIII)V

    .line 1112
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 569
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 572
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 575
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v4

    .line 576
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v0

    .line 577
    add-int v1, v0, v4

    .line 578
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    .line 580
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->C()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 582
    iget v6, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-gtz v6, :cond_35

    if-le v3, v5, :cond_36

    .line 583
    :cond_35
    add-int/2addr v0, v5

    .line 587
    :cond_36
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v3

    .line 588
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    .line 590
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->D()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 592
    iget v6, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    iget v7, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_58

    iget v6, p2, Landroid/graphics/Rect;->right:I

    sub-int v7, v3, v5

    if-ge v6, v7, :cond_59

    .line 594
    :cond_58
    sub-int/2addr v1, v5

    .line 600
    :cond_59
    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-le v5, v1, :cond_8f

    iget v5, p2, Landroid/graphics/Rect;->left:I

    if-le v5, v0, :cond_8f

    .line 605
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v5, v4, :cond_8a

    .line 607
    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v0

    add-int/2addr v0, v2

    .line 614
    :goto_6c
    sub-int v1, v3, v1

    .line 615
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 635
    :goto_73
    if-eqz v1, :cond_b9

    const/4 v0, 0x1

    .line 636
    :goto_76
    if-eqz v0, :cond_89

    .line 637
    neg-int v1, v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->r(I)V

    .line 638
    const/4 v1, -0x1

    invoke-virtual {p0, v1, p1}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V

    .line 639
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->J:I

    .line 640
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 642
    :cond_89
    return v0

    .line 610
    :cond_8a
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_6c

    .line 616
    :cond_8f
    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v3, v0, :cond_bb

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v3, v1, :cond_bb

    .line 621
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v3, v4, :cond_b2

    .line 623
    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v1, v2, v1

    .line 630
    :goto_a2
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 631
    sub-int v0, v3, v0

    .line 632
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    goto :goto_73

    .line 626
    :cond_b2
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    sub-int v1, v2, v1

    goto :goto_a2

    :cond_b9
    move v0, v2

    .line 635
    goto :goto_76

    :cond_bb
    move v1, v2

    goto :goto_73
.end method

.method public synthetic s()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->z()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public setCacheColorHint(I)V
    .registers 4

    .prologue
    .line 3140
    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    .line 3141
    :goto_7
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aB:Z

    .line 3142
    if-eqz v0, :cond_1b

    .line 3143
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Landroid/graphics/Paint;

    if-nez v0, :cond_16

    .line 3144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Landroid/graphics/Paint;

    .line 3146
    :cond_16
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3148
    :cond_1b
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setCacheColorHint(I)V

    .line 3149
    return-void

    .line 3140
    :cond_1f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setDividerWidth(I)V
    .registers 2

    .prologue
    .line 3415
    iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    .line 3416
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V

    .line 3417
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 3418
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .registers 2

    .prologue
    .line 3444
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->aE:Z

    .line 3445
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 3446
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .registers 2

    .prologue
    .line 3430
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->aD:Z

    .line 3431
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 3432
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .registers 3

    .prologue
    .line 3106
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Z

    .line 3107
    if-nez p1, :cond_9

    .line 3108
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->setDescendantFocusability(I)V

    .line 3110
    :cond_9
    return-void
.end method

.method public setSelection(I)V
    .registers 3

    .prologue
    .line 2008
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->setSelectionFromLeft(II)V

    .line 2009
    return-void
.end method

.method public setSelectionFromLeft(II)V
    .registers 5

    .prologue
    .line 2021
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    .line 2048
    :cond_4
    :goto_4
    return-void

    .line 2025
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2026
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I

    move-result p1

    .line 2027
    if-ltz p1, :cond_15

    .line 2028
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V

    .line 2034
    :cond_15
    :goto_15
    if-ltz p1, :cond_4

    .line 2035
    const/4 v0, 0x4

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->h:I

    .line 2036
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    .line 2038
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->ad:Z

    if-eqz v0, :cond_2f

    .line 2039
    iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->aa:I

    .line 2040
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/HListView;->ab:J

    .line 2043
    :cond_2f
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    if-eqz v0, :cond_38

    .line 2044
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a()V

    .line 2046
    :cond_38
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V

    goto :goto_4

    .line 2031
    :cond_3c
    iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->M:I

    goto :goto_15
.end method

.method public setSelectionInt(I)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 2058
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V

    .line 2059
    const/4 v1, 0x0

    .line 2061
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    .line 2063
    if-ltz v2, :cond_23

    .line 2064
    add-int/lit8 v3, v2, -0x1

    if-ne p1, v3, :cond_1f

    .line 2071
    :cond_d
    :goto_d
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    if-eqz v1, :cond_16

    .line 2072
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a()V

    .line 2075
    :cond_16
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->e()V

    .line 2077
    if-eqz v0, :cond_1e

    .line 2078
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z

    .line 2080
    :cond_1e
    return-void

    .line 2066
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    if-eq p1, v2, :cond_d

    :cond_23
    move v0, v1

    goto :goto_d
.end method

.method public z()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;

    return-object v0
.end method
