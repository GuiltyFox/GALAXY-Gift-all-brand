.class public Landroid/support/v4/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/ScrollingView;


# static fields
.field private static final v:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

.field private static final w:[I


# instance fields
.field private A:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

.field private a:J

.field private final b:Landroid/graphics/Rect;

.field private c:Landroid/support/v4/widget/ScrollerCompat;

.field private d:Landroid/support/v4/widget/EdgeEffectCompat;

.field private e:Landroid/support/v4/widget/EdgeEffectCompat;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Landroid/view/VelocityTracker;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private final r:[I

.field private final s:[I

.field private t:I

.field private u:Landroid/support/v4/widget/NestedScrollView$SavedState;

.field private final x:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private final y:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 167
    new-instance v0, Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->v:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->w:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    .line 109
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->g:Z

    .line 110
    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    .line 124
    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 140
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->m:Z

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 155
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    .line 156
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->s:[I

    .line 190
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->a()V

    .line 192
    sget-object v0, Landroid/support/v4/widget/NestedScrollView;->w:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setFillViewport(Z)V

    .line 197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 200
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 203
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 205
    sget-object v0, Landroid/support/v4/widget/NestedScrollView;->v:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 206
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/NestedScrollView;)I
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method private a(ZII)Landroid/view/View;
    .registers 15

    .prologue
    .line 1028
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 1029
    const/4 v3, 0x0

    .line 1038
    const/4 v2, 0x0

    .line 1040
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1041
    const/4 v0, 0x0

    move v5, v0

    :goto_d
    if-ge v5, v7, :cond_5b

    .line 1042
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1043
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1044
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 1046
    if-ge p2, v8, :cond_5c

    if-ge v4, p3, :cond_5c

    .line 1052
    if-ge p2, v4, :cond_31

    if-ge v8, p3, :cond_31

    const/4 v1, 0x1

    .line 1054
    :goto_26
    if-nez v3, :cond_33

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 1041
    :goto_2b
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v1

    move v2, v0

    goto :goto_d

    .line 1052
    :cond_31
    const/4 v1, 0x0

    goto :goto_26

    .line 1059
    :cond_33
    if-eqz p1, :cond_3b

    .line 1060
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v4, v9, :cond_43

    :cond_3b
    if-nez p1, :cond_4d

    .line 1061
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v8, v4, :cond_4d

    :cond_43
    const/4 v4, 0x1

    .line 1063
    :goto_44
    if-eqz v2, :cond_4f

    .line 1064
    if-eqz v1, :cond_5c

    if-eqz v4, :cond_5c

    move-object v1, v0

    move v0, v2

    .line 1070
    goto :goto_2b

    .line 1061
    :cond_4d
    const/4 v4, 0x0

    goto :goto_44

    .line 1073
    :cond_4f
    if-eqz v1, :cond_56

    .line 1076
    const/4 v1, 0x1

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_2b

    .line 1077
    :cond_56
    if-eqz v4, :cond_5c

    move-object v1, v0

    move v0, v2

    .line 1082
    goto :goto_2b

    .line 1089
    :cond_5b
    return-object v3

    :cond_5c
    move v0, v2

    move-object v1, v3

    goto :goto_2b
.end method

.method private a()V
    .registers 3

    .prologue
    .line 356
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/ScrollerCompat;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    .line 357
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 358
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setWillNotDraw(Z)V

    .line 360
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->n:I

    .line 362
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->o:I

    .line 363
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->p:I

    .line 364
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    .line 877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 879
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 880
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    if-ne v1, v2, :cond_2b

    .line 884
    if-nez v0, :cond_2c

    const/4 v0, 0x1

    .line 885
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 886
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 887
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2b

    .line 888
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 891
    :cond_2b
    return-void

    .line 884
    :cond_2c
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private a(III)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1172
    .line 1174
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 1175
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    .line 1176
    add-int v5, v4, v0

    .line 1177
    const/16 v0, 0x21

    if-ne p1, v0, :cond_26

    move v0, v1

    .line 1179
    :goto_11
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->a(ZII)Landroid/view/View;

    move-result-object v3

    .line 1180
    if-nez v3, :cond_18

    move-object v3, p0

    .line 1184
    :cond_18
    if-lt p2, v4, :cond_28

    if-gt p3, v5, :cond_28

    .line 1191
    :goto_1c
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v3, v0, :cond_25

    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1193
    :cond_25
    return v2

    :cond_26
    move v0, v2

    .line 1177
    goto :goto_11

    .line 1187
    :cond_28
    if-eqz v0, :cond_31

    sub-int v0, p2, v4

    .line 1188
    :goto_2c
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->e(I)V

    move v2, v1

    goto :goto_1c

    .line 1187
    :cond_31
    sub-int v0, p3, v5

    goto :goto_2c
.end method

.method private a(Landroid/graphics/Rect;Z)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1470
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v2

    .line 1471
    if-eqz v2, :cond_10

    const/4 v0, 0x1

    .line 1472
    :goto_8
    if-eqz v0, :cond_f

    .line 1473
    if-eqz p2, :cond_12

    .line 1474
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 1479
    :cond_f
    :goto_f
    return v0

    :cond_10
    move v0, v1

    .line 1471
    goto :goto_8

    .line 1476
    :cond_12
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->a(II)V

    goto :goto_f
.end method

.method private a(Landroid/view/View;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1259
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private a(Landroid/view/View;II)Z
    .registers 6

    .prologue
    .line 1267
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1268
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1270
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    .line 1271
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1675
    if-ne p0, p1, :cond_4

    .line 1680
    :goto_3
    return v1

    .line 1679
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1680
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_17

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

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

.method private static b(III)I
    .registers 4

    .prologue
    .line 1791
    if-ge p1, p2, :cond_4

    if-gez p0, :cond_6

    .line 1807
    :cond_4
    const/4 p0, 0x0

    .line 1817
    :cond_5
    :goto_5
    return p0

    .line 1809
    :cond_6
    add-int v0, p1, p0

    if-le v0, p2, :cond_5

    .line 1815
    sub-int p0, p2, p1

    goto :goto_5
.end method

.method private b(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1449
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1452
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1454
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v0

    .line 1456
    if-eqz v0, :cond_16

    .line 1457
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 1459
    :cond_16
    return-void
.end method

.method private b()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_1c

    .line 421
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 422
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_1c

    const/4 v0, 0x1

    .line 424
    :cond_1c
    return v0
.end method

.method private c()V
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 578
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 582
    :goto_a
    return-void

    .line 580
    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private c(II)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2b

    .line 566
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 567
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 568
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_2b

    .line 569
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v1, v3, v1

    if-ge p2, v1, :cond_2b

    .line 570
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_2b

    .line 571
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_2b

    const/4 v0, 0x1

    .line 573
    :cond_2b
    return v0
.end method

.method private d()V
    .registers 2

    .prologue
    .line 585
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 586
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 588
    :cond_a
    return-void
.end method

.method private e()V
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 592
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 595
    :cond_c
    return-void
.end method

.method private e(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1280
    if-eqz p1, :cond_a

    .line 1281
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->m:Z

    if-eqz v0, :cond_b

    .line 1282
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->a(II)V

    .line 1287
    :cond_a
    :goto_a
    return-void

    .line 1284
    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_a
.end method

.method private f()V
    .registers 2

    .prologue
    .line 1715
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 1717
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->e()V

    .line 1718
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    .line 1720
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_17

    .line 1721
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    .line 1722
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    .line 1724
    :cond_17
    return-void
.end method

.method private f(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1703
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1704
    if-gtz v0, :cond_9

    if-lez p1, :cond_23

    .line 1705
    :cond_9
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_11

    if-gez p1, :cond_23

    :cond_11
    const/4 v0, 0x1

    .line 1706
    :goto_12
    int-to-float v1, p1

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1707
    int-to-float v1, p1

    invoke-virtual {p0, v2, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 1708
    if-eqz v0, :cond_22

    .line 1709
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->d(I)V

    .line 1712
    :cond_22
    return-void

    .line 1705
    :cond_23
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private g()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1745
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    .line 1746
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_1e

    .line 1747
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1748
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1749
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1755
    :cond_1e
    :goto_1e
    return-void

    .line 1752
    :cond_1f
    iput-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1753
    iput-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_1e
.end method

.method private getScrollRange()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1002
    .line 1003
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_22

    .line 1004
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1006
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1005
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1008
    :cond_22
    return v0
.end method

.method private getVerticalScrollFactorCompat()F
    .registers 6

    .prologue
    .line 923
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->z:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_35

    .line 924
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 925
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 926
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_27

    .line 928
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 932
    :cond_27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 931
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->z:F

    .line 934
    :cond_35
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->z:F

    return v0
.end method


# virtual methods
.method protected a(Landroid/graphics/Rect;)I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 1491
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 1545
    :goto_7
    return v2

    .line 1493
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    .line 1494
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1495
    add-int v1, v0, v3

    .line 1497
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1500
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1b

    .line 1501
    add-int/2addr v0, v4

    .line 1505
    :cond_1b
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_28

    .line 1506
    sub-int/2addr v1, v4

    .line 1511
    :cond_28
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_50

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v0, :cond_50

    .line 1516
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v3, :cond_4b

    .line 1518
    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v0

    add-int/2addr v0, v2

    .line 1525
    :goto_3b
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1526
    sub-int v1, v2, v1

    .line 1527
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_49
    move v2, v0

    .line 1545
    goto :goto_7

    .line 1521
    :cond_4b
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_3b

    .line 1529
    :cond_50
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v0, :cond_74

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v1, :cond_74

    .line 1534
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v3, :cond_6e

    .line 1536
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    sub-int v0, v2, v0

    .line 1543
    :goto_64
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_49

    .line 1539
    :cond_6e
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int v0, v2, v0

    goto :goto_64

    :cond_74
    move v0, v2

    goto :goto_49
.end method

.method public final a(II)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 1296
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 1317
    :goto_7
    return-void

    .line 1300
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/NestedScrollView;->a:J

    sub-long/2addr v0, v2

    .line 1301
    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_53

    .line 1302
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1303
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1304
    sub-int v0, v1, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1305
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 1306
    add-int v2, v1, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v0, v1

    .line 1308
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/support/v4/widget/ScrollerCompat;->a(IIII)V

    .line 1309
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1316
    :goto_4c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/NestedScrollView;->a:J

    goto :goto_7

    .line 1311
    :cond_53
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->a()Z

    move-result v0

    if-nez v0, :cond_60

    .line 1312
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->h()V

    .line 1314
    :cond_60
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_4c
.end method

.method public a(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V
    .registers 2

    .prologue
    .line 412
    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->A:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    .line 413
    return-void
.end method

.method public a(I)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1105
    const/16 v0, 0x82

    if-ne p1, v0, :cond_4b

    const/4 v0, 0x1

    .line 1106
    :goto_6
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    .line 1108
    if-eqz v0, :cond_4d

    .line 1109
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1110
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1111
    if-lez v0, :cond_35

    .line 1112
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1113
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v1, v3, :cond_35

    .line 1114
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1123
    :cond_35
    :goto_35
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1125
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(III)Z

    move-result v0

    return v0

    :cond_4b
    move v0, v1

    .line 1105
    goto :goto_6

    .line 1118
    :cond_4d
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1119
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_35

    .line 1120
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_35
.end method

.method a(IIIIIIIIZ)Z
    .registers 20

    .prologue
    .line 948
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v4

    .line 950
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v2

    if-le v1, v2, :cond_63

    const/4 v1, 0x1

    .line 952
    :goto_f
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v3

    if-le v2, v3, :cond_65

    const/4 v2, 0x1

    move v3, v2

    .line 953
    :goto_1b
    if-eqz v4, :cond_22

    const/4 v2, 0x1

    if-ne v4, v2, :cond_68

    if-eqz v1, :cond_68

    :cond_22
    const/4 v1, 0x1

    move v2, v1

    .line 955
    :goto_24
    if-eqz v4, :cond_2b

    const/4 v1, 0x1

    if-ne v4, v1, :cond_6b

    if-eqz v3, :cond_6b

    :cond_2b
    const/4 v1, 0x1

    .line 958
    :goto_2c
    add-int v7, p3, p1

    .line 959
    if-nez v2, :cond_32

    .line 960
    const/16 p7, 0x0

    .line 963
    :cond_32
    add-int v5, p4, p2

    .line 964
    if-nez v1, :cond_38

    .line 965
    const/16 p8, 0x0

    .line 969
    :cond_38
    move/from16 v0, p7

    neg-int v6, v0

    .line 970
    add-int v2, p7, p5

    .line 971
    move/from16 v0, p8

    neg-int v4, v0

    .line 972
    add-int v3, p8, p6

    .line 974
    const/4 v1, 0x0

    .line 975
    if-le v7, v2, :cond_6d

    .line 977
    const/4 v1, 0x1

    move v9, v1

    .line 983
    :goto_47
    const/4 v1, 0x0

    .line 984
    if-le v5, v3, :cond_73

    .line 986
    const/4 v1, 0x1

    move v8, v1

    .line 992
    :goto_4c
    if-eqz v8, :cond_5a

    .line 993
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/support/v4/widget/ScrollerCompat;->a(IIIIII)Z

    .line 996
    :cond_5a
    invoke-virtual {p0, v2, v3, v9, v8}, Landroid/support/v4/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    .line 998
    if-nez v9, :cond_61

    if-eqz v8, :cond_79

    :cond_61
    const/4 v1, 0x1

    :goto_62
    return v1

    .line 950
    :cond_63
    const/4 v1, 0x0

    goto :goto_f

    .line 952
    :cond_65
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1b

    .line 953
    :cond_68
    const/4 v1, 0x0

    move v2, v1

    goto :goto_24

    .line 955
    :cond_6b
    const/4 v1, 0x0

    goto :goto_2c

    .line 978
    :cond_6d
    if-ge v7, v6, :cond_7e

    .line 980
    const/4 v1, 0x1

    move v9, v1

    move v2, v6

    goto :goto_47

    .line 987
    :cond_73
    if-ge v5, v4, :cond_7b

    .line 989
    const/4 v1, 0x1

    move v8, v1

    move v3, v4

    goto :goto_4c

    .line 998
    :cond_79
    const/4 v1, 0x0

    goto :goto_62

    :cond_7b
    move v8, v1

    move v3, v5

    goto :goto_4c

    :cond_7e
    move v9, v1

    move v2, v7

    goto :goto_47
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    const/16 v0, 0x21

    const/4 v1, 0x0

    const/16 v2, 0x82

    .line 523
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 525
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->b()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 526
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_38

    .line 527
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 528
    if-ne v0, p0, :cond_24

    const/4 v0, 0x0

    .line 529
    :cond_24
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_39

    if-eq v0, p0, :cond_39

    .line 533
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    :goto_37
    move v1, v0

    .line 561
    :cond_38
    :goto_38
    return v1

    :cond_39
    move v0, v1

    .line 533
    goto :goto_37

    .line 539
    :cond_3b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_38

    .line 540
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_76

    goto :goto_38

    .line 542
    :sswitch_49
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_54

    .line 543
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->c(I)Z

    move-result v1

    goto :goto_38

    .line 545
    :cond_54
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->b(I)Z

    move-result v1

    goto :goto_38

    .line 549
    :sswitch_59
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_64

    .line 550
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->c(I)Z

    move-result v1

    goto :goto_38

    .line 552
    :cond_64
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->b(I)Z

    move-result v1

    goto :goto_38

    .line 556
    :sswitch_69
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_73

    :goto_6f
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->a(I)Z

    goto :goto_38

    :cond_73
    move v0, v2

    goto :goto_6f

    .line 540
    nop

    :sswitch_data_76
    .sparse-switch
        0x13 -> :sswitch_49
        0x14 -> :sswitch_59
        0x3e -> :sswitch_69
    .end sparse-switch
.end method

.method public addView(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 368
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 373
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 377
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 378
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 382
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 400
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    return-void
.end method

.method public final b(II)V
    .registers 5

    .prologue
    .line 1326
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(II)V

    .line 1327
    return-void
.end method

.method public b(I)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1141
    const/16 v0, 0x82

    if-ne p1, v0, :cond_43

    const/4 v0, 0x1

    .line 1142
    :goto_6
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    .line 1144
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 1145
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1147
    if-eqz v0, :cond_36

    .line 1148
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1149
    if-lez v0, :cond_36

    .line 1150
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1151
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1152
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1156
    :cond_36
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(III)Z

    move-result v0

    return v0

    :cond_43
    move v0, v1

    .line 1141
    goto :goto_6
.end method

.method public c(I)Z
    .registers 9

    .prologue
    const/16 v6, 0x82

    const/4 v2, 0x0

    .line 1205
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1206
    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    .line 1208
    :cond_a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 1210
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v1

    .line 1212
    if-eqz v3, :cond_57

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v1, v4}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1213
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1214
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1215
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v1

    .line 1216
    invoke-direct {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->e(I)V

    .line 1217
    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1239
    :goto_38
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1240
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1246
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getDescendantFocusability()I

    move-result v0

    .line 1247
    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1248
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestFocus()Z

    .line 1249
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1251
    :cond_55
    const/4 v0, 0x1

    :goto_56
    return v0

    .line 1222
    :cond_57
    const/16 v3, 0x21

    if-ne p1, v3, :cond_69

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-ge v3, v1, :cond_69

    .line 1223
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 1233
    :cond_65
    :goto_65
    if-nez v1, :cond_8e

    move v0, v2

    .line 1234
    goto :goto_56

    .line 1224
    :cond_69
    if-ne p1, v6, :cond_65

    .line 1225
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_65

    .line 1226
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1227
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1228
    sub-int v5, v3, v4

    if-ge v5, v1, :cond_65

    .line 1229
    sub-int v1, v3, v4

    goto :goto_65

    .line 1236
    :cond_8e
    if-ne p1, v6, :cond_94

    :goto_90
    invoke-direct {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->e(I)V

    goto :goto_38

    :cond_94
    neg-int v1, v1

    goto :goto_90
.end method

.method public computeHorizontalScrollExtent()I
    .registers 2

    .prologue
    .line 1381
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 1375
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 1369
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 13

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1416
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->g()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1417
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    .line 1418
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    .line 1419
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->b()I

    move-result v1

    .line 1420
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->c()I

    move-result v11

    .line 1422
    if-ne v3, v1, :cond_22

    if-eq v4, v11, :cond_50

    .line 1423
    :cond_22
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    .line 1424
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v2

    .line 1425
    if-eqz v2, :cond_30

    if-ne v2, v0, :cond_51

    if-lez v6, :cond_51

    :cond_30
    move v10, v0

    .line 1428
    :goto_31
    sub-int/2addr v1, v3

    sub-int v2, v11, v4

    move-object v0, p0

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/support/v4/widget/NestedScrollView;->a(IIIIIIIIZ)Z

    .line 1431
    if-eqz v10, :cond_50

    .line 1432
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->g()V

    .line 1433
    if-gtz v11, :cond_53

    if-lez v4, :cond_53

    .line 1434
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->f()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(I)Z

    .line 1441
    :cond_50
    :goto_50
    return-void

    :cond_51
    move v10, v5

    .line 1425
    goto :goto_31

    .line 1435
    :cond_53
    if-lt v11, v6, :cond_50

    if-ge v4, v6, :cond_50

    .line 1436
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->f()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(I)Z

    goto :goto_50
.end method

.method public computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 1363
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    .prologue
    .line 1357
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1336
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1337
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1338
    if-nez v0, :cond_17

    move v0, v1

    .line 1351
    :cond_16
    :goto_16
    return v0

    .line 1342
    :cond_17
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1343
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 1344
    sub-int v1, v0, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1345
    if-gez v2, :cond_2d

    .line 1346
    sub-int/2addr v0, v2

    goto :goto_16

    .line 1347
    :cond_2d
    if-le v2, v1, :cond_16

    .line 1348
    sub-int v1, v2, v1

    add-int/2addr v0, v1

    goto :goto_16
.end method

.method public d(I)V
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 1691
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3a

    .line 1692
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int v4, v0, v1

    .line 1693
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1695
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v5, v4

    .line 1696
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v4, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    .line 1695
    invoke-virtual/range {v0 .. v10}, Landroid/support/v4/widget/ScrollerCompat;->a(IIIIIIIIII)V

    .line 1698
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1700
    :cond_3a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .prologue
    .line 511
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    .line 1759
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1760
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_96

    .line 1761
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1762
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1763
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1764
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1766
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1767
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    .line 1768
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1769
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1771
    :cond_47
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1773
    :cond_4a
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v1

    if-nez v1, :cond_96

    .line 1774
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1775
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1776
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    .line 1778
    neg-int v4, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 1779
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 1778
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1780
    const/high16 v0, 0x43340000    # 180.0f

    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1781
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    .line 1782
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1783
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1785
    :cond_93
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1788
    :cond_96
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 5

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 334
    const/4 v0, 0x0

    .line 344
    :goto_7
    return v0

    .line 337
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 338
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 339
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    .line 340
    if-ge v1, v0, :cond_2c

    .line 341
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_7

    .line 344
    :cond_2c
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_7
.end method

.method public getMaxScrollAmount()I
    .registers 3

    .prologue
    .line 352
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->a()I

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 3

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 319
    const/4 v0, 0x0

    .line 328
    :goto_7
    return v0

    .line 322
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 323
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 324
    if-ge v1, v0, :cond_17

    .line 325
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_7

    .line 328
    :cond_17
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_7
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->b()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->a()Z

    move-result v0

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1387
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1392
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    .line 1393
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1392
    invoke-static {p2, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1395
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1397
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1398
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 9

    .prologue
    .line 1403
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1406
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1405
    invoke-static {p2, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1408
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1411
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1412
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 1646
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1648
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    .line 1649
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 894
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_10

    .line 895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_42

    .line 919
    :cond_10
    :goto_10
    return v0

    .line 897
    :pswitch_11
    iget-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-nez v1, :cond_10

    .line 898
    const/16 v1, 0x9

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->e(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 900
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_10

    .line 901
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v2, v1

    .line 902
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    .line 903
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    .line 904
    sub-int v2, v3, v2

    .line 905
    if-gez v2, :cond_3e

    move v1, v0

    .line 910
    :cond_33
    :goto_33
    if-eq v1, v3, :cond_10

    .line 911
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 912
    const/4 v0, 0x1

    goto :goto_10

    .line 907
    :cond_3e
    if-gt v2, v1, :cond_33

    move v1, v2

    goto :goto_33

    .line 895
    :pswitch_data_42
    .packed-switch 0x8
        :pswitch_11
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 620
    if-ne v1, v5, :cond_f

    iget-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_f

    .line 714
    :goto_e
    return v0

    .line 624
    :cond_f
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_da

    .line 714
    :cond_14
    :goto_14
    :pswitch_14
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    goto :goto_e

    .line 635
    :pswitch_17
    iget v1, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 636
    if-eq v1, v4, :cond_14

    .line 641
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 642
    if-ne v2, v4, :cond_43

    .line 643
    const-string/jumbo v0, "NestedScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 648
    :cond_43
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 649
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->f:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 650
    iget v4, p0, Landroid/support/v4/widget/NestedScrollView;->n:I

    if-le v2, v4, :cond_14

    .line 651
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_14

    .line 652
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 653
    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 654
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->d()V

    .line 655
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 656
    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->t:I

    .line 657
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 658
    if-eqz v1, :cond_14

    .line 659
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_14

    .line 666
    :pswitch_74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->c(II)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 668
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 669
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->e()V

    goto :goto_14

    .line 677
    :cond_8a
    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 678
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 680
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->c()V

    .line 681
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 688
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->g()Z

    .line 689
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->a()Z

    move-result v1

    if-nez v1, :cond_a8

    move v3, v0

    :cond_a8
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 690
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    goto/16 :goto_14

    .line 697
    :pswitch_af
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 698
    iput v4, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 699
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->e()V

    .line 700
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/ScrollerCompat;->a(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 701
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 703
    :cond_cf
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    goto/16 :goto_14

    .line 706
    :pswitch_d4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_14

    .line 624
    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_74
        :pswitch_af
        :pswitch_17
        :pswitch_af
        :pswitch_14
        :pswitch_14
        :pswitch_d4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1613
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1614
    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->g:Z

    .line 1616
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1617
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->b(Landroid/view/View;)V

    .line 1619
    :cond_18
    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    .line 1621
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    if-nez v0, :cond_5b

    .line 1622
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->u:Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-eqz v0, :cond_2f

    .line 1623
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->u:Landroid/support/v4/widget/NestedScrollView$SavedState;

    iget v2, v2, Landroid/support/v4/widget/NestedScrollView$SavedState;->a:I

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1624
    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->u:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1627
    :cond_2f
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6a

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1628
    :goto_3d
    sub-int v2, p5, p3

    .line 1629
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 1628
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1632
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-le v2, v0, :cond_6c

    .line 1633
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1640
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1641
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    .line 1642
    return-void

    :cond_6a
    move v0, v1

    .line 1627
    goto :goto_3d

    .line 1634
    :cond_6c
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_5b

    .line 1635
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_5b
.end method

.method protected onMeasure(II)V
    .registers 8

    .prologue
    .line 479
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 481
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Z

    if-nez v0, :cond_8

    .line 506
    :cond_7
    :goto_7
    return-void

    .line 485
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 486
    if-eqz v0, :cond_7

    .line 490
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 492
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v2

    .line 493
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-ge v0, v2, :cond_7

    .line 494
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 497
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 496
    invoke-static {p1, v3, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 498
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 499
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 500
    const/high16 v3, 0x40000000    # 2.0f

    .line 501
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 503
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    .prologue
    .line 293
    if-nez p4, :cond_8

    .line 294
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->f(I)V

    .line 295
    const/4 v0, 0x1

    .line 297
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5

    .prologue
    .line 302
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 6

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    .line 289
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 280
    invoke-virtual {p0, v1, p5}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 281
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v0

    .line 282
    sub-int v4, p5, v2

    .line 283
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 284
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 267
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    .line 268
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    .prologue
    .line 940
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 941
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1573
    const/4 v1, 0x2

    if-ne p1, v1, :cond_14

    .line 1574
    const/16 p1, 0x82

    .line 1579
    :cond_6
    :goto_6
    if-nez p2, :cond_1a

    .line 1580
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1584
    :goto_11
    if-nez v1, :cond_23

    .line 1592
    :cond_13
    :goto_13
    return v0

    .line 1575
    :cond_14
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 1576
    const/16 p1, 0x21

    goto :goto_6

    .line 1581
    :cond_1a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    goto :goto_11

    .line 1588
    :cond_23
    invoke-direct {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1592
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_13
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 1822
    instance-of v0, p1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-nez v0, :cond_8

    .line 1823
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1831
    :goto_7
    return-void

    .line 1827
    :cond_8
    check-cast p1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1828
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1829
    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->u:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1830
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    goto :goto_7
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 1835
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1836
    new-instance v1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1837
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iput v0, v1, Landroid/support/v4/widget/NestedScrollView$SavedState;->a:I

    .line 1838
    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .registers 11

    .prologue
    .line 470
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 472
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->A:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_11

    .line 473
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->A:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;->a(Landroid/support/v4/widget/NestedScrollView;IIII)V

    .line 475
    :cond_11
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    .prologue
    .line 1653
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1655
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1656
    if-eqz v0, :cond_b

    if-ne p0, v0, :cond_c

    .line 1669
    :cond_b
    :goto_b
    return-void

    .line 1663
    :cond_c
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1664
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1665
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1666
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v0

    .line 1667
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->e(I)V

    goto :goto_b
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .prologue
    .line 261
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->a(Landroid/view/View;)V

    .line 273
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    .line 274
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 21

    .prologue
    .line 719
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->d()V

    .line 721
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    .line 723
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 725
    if-nez v2, :cond_12

    .line 726
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    .line 728
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    int-to-float v4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 730
    packed-switch v2, :pswitch_data_306

    .line 869
    :cond_20
    :goto_20
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2f

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 872
    :cond_2f
    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 873
    const/4 v2, 0x1

    :goto_33
    return v2

    .line 732
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3c

    .line 733
    const/4 v2, 0x0

    goto :goto_33

    .line 735
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->a()Z

    move-result v2

    if-nez v2, :cond_83

    const/4 v2, 0x1

    :goto_47
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_57

    .line 736
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 737
    if-eqz v2, :cond_57

    .line 738
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 746
    :cond_57
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->a()Z

    move-result v2

    if-nez v2, :cond_68

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->h()V

    .line 751
    :cond_68
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 752
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 753
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    goto :goto_20

    .line 735
    :cond_83
    const/4 v2, 0x0

    goto :goto_47

    .line 757
    :pswitch_85
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 758
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_bb

    .line 759
    const-string/jumbo v2, "NestedScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 763
    :cond_bb
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v3, v2

    .line 764
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    sub-int/2addr v2, v3

    .line 765
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/NestedScrollView;->s:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 766
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/widget/NestedScrollView;->s:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v2, v4

    .line 767
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 768
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    .line 770
    :cond_100
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-nez v4, :cond_302

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/widget/NestedScrollView;->n:I

    if-le v4, v5, :cond_302

    .line 771
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 772
    if-eqz v4, :cond_11a

    .line 773
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 775
    :cond_11a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 776
    if-lez v2, :cond_1b4

    .line 777
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->n:I

    sub-int/2addr v2, v4

    move v4, v2

    .line 782
    :goto_127
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_20

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    sub-int v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 786
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v18

    .line 787
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 788
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v2

    .line 789
    if-eqz v2, :cond_14d

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1bc

    if-lez v8, :cond_1bc

    :cond_14d
    const/4 v2, 0x1

    move v15, v2

    .line 794
    :goto_14f
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/support/v4/widget/NestedScrollView;->a(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_16e

    .line 795
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-nez v2, :cond_16e

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 800
    :cond_16e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int v11, v2, v18

    .line 801
    sub-int v13, v4, v11

    .line 802
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 803
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 804
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 805
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    goto/16 :goto_20

    .line 779
    :cond_1b4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->n:I

    add-int/2addr v2, v4

    move v4, v2

    goto/16 :goto_127

    .line 789
    :cond_1bc
    const/4 v2, 0x0

    move v15, v2

    goto :goto_14f

    .line 806
    :cond_1bf
    if-eqz v15, :cond_20

    .line 807
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->g()V

    .line 808
    add-int v2, v18, v4

    .line 809
    if-gez v2, :cond_214

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 811
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 810
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->a(FF)Z

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v2

    if-nez v2, :cond_1f5

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    .line 823
    :cond_1f5
    :goto_1f5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 824
    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v2

    if-eqz v2, :cond_20f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v2

    if-nez v2, :cond_20

    .line 825
    :cond_20f
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    goto/16 :goto_20

    .line 815
    :cond_214
    if-le v2, v8, :cond_1f5

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 817
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 818
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 816
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->a(FF)Z

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v2

    if-nez v2, :cond_1f5

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    goto :goto_1f5

    .line 831
    :pswitch_247
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_274

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 833
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->p:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 834
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->b(Landroid/view/VelocityTracker;I)F

    move-result v2

    float-to-int v2, v2

    .line 837
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->o:I

    if-le v3, v4, :cond_27e

    .line 838
    neg-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->f(I)V

    .line 844
    :cond_274
    :goto_274
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 845
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->f()V

    goto/16 :goto_20

    .line 839
    :cond_27e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 840
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 839
    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->a(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_274

    .line 841
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    goto :goto_274

    .line 848
    :pswitch_29b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_2c3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2c3

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 850
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 849
    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->a(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_2c3

    .line 851
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 854
    :cond_2c3
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 855
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->f()V

    goto/16 :goto_20

    .line 858
    :pswitch_2cd
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    move-result v2

    .line 859
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 860
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    goto/16 :goto_20

    .line 864
    :pswitch_2e8
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/MotionEvent;)V

    .line 865
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    goto/16 :goto_20

    :cond_302
    move v4, v2

    goto/16 :goto_127

    .line 730
    nop

    :pswitch_data_306
    .packed-switch 0x0
        :pswitch_34
        :pswitch_247
        :pswitch_85
        :pswitch_29b
        :pswitch_20
        :pswitch_2cd
        :pswitch_2e8
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1550
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->g:Z

    if-nez v0, :cond_b

    .line 1551
    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->b(Landroid/view/View;)V

    .line 1556
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1557
    return-void

    .line 1554
    :cond_b
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    goto :goto_7
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7

    .prologue
    .line 1599
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1600
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1599
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1602
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .prologue
    .line 599
    if-eqz p1, :cond_5

    .line 600
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->e()V

    .line 602
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 603
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1607
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->g:Z

    .line 1608
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1609
    return-void
.end method

.method public scrollTo(II)V
    .registers 7

    .prologue
    .line 1734
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_46

    .line 1735
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1736
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->b(III)I

    move-result v1

    .line 1737
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->b(III)I

    move-result v0

    .line 1738
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    if-ne v1, v2, :cond_43

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_46

    .line 1739
    :cond_43
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1742
    :cond_46
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3

    .prologue
    .line 447
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Z

    if-eq p1, v0, :cond_9

    .line 448
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->l:Z

    .line 449
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    .line 451
    :cond_9
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(Z)V

    .line 213
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    .prologue
    .line 465
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->m:Z

    .line 466
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->c()V

    .line 228
    return-void
.end method
