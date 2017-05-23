.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayoutImpl;


# static fields
.field static final a:[I

.field static final b:Z

.field static final c:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

.field private static final d:Z


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Ljava/lang/CharSequence;

.field private E:Ljava/lang/CharSequence;

.field private F:Ljava/lang/Object;

.field private G:Z

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:Landroid/graphics/drawable/Drawable;

.field private J:Landroid/graphics/drawable/Drawable;

.field private K:Landroid/graphics/drawable/Drawable;

.field private final L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private f:F

.field private g:I

.field private h:I

.field private i:F

.field private j:Landroid/graphics/Paint;

.field private final k:Landroid/support/v4/widget/ViewDragHelper;

.field private final l:Landroid/support/v4/widget/ViewDragHelper;

.field private final m:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final n:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private o:I

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    new-array v0, v1, [I

    const v3, 0x10100b3

    aput v3, v0, v2

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->a:[I

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_28

    move v0, v1

    :goto_14
    sput-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2a

    :goto_1a
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->d:Z

    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 356
    if-lt v0, v4, :cond_2c

    .line 357
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->c:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    .line 361
    :goto_27
    return-void

    :cond_28
    move v0, v2

    .line 179
    goto :goto_14

    :cond_2a
    move v1, v2

    .line 182
    goto :goto_1a

    .line 359
    :cond_2c
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->c:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    goto :goto_27
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 367
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 371
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 374
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->e:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    .line 191
    const/high16 v0, -0x67000000

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->h:I

    .line 193
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/graphics/Paint;

    .line 201
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    .line 203
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    .line 204
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    .line 205
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    .line 206
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    .line 228
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    .line 229
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    .line 230
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    .line 231
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->K:Landroid/graphics/drawable/Drawable;

    .line 375
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 376
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 377
    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->g:I

    .line 378
    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v1, v0

    .line 380
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 381
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 383
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    .line 384
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/ViewDragHelper;->a(I)V

    .line 385
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->a(F)V

    .line 386
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 388
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    .line 389
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->a(I)V

    .line 390
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->a(F)V

    .line 391
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 394
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 396
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 399
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 400
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewGroupCompat;->a(Landroid/view/ViewGroup;Z)V

    .line 401
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->w(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 402
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->c:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {v1, p0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->a(Landroid/view/View;)V

    .line 403
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->c:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {v1, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    .line 406
    :cond_ae
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->L:Ljava/util/ArrayList;

    .line 409
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;I)Z
    .registers 4

    .prologue
    .line 1170
    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1171
    :cond_8
    const/4 v0, 0x0

    .line 1175
    :goto_9
    return v0

    .line 1174
    :cond_a
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1175
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private c(Landroid/view/View;Z)V
    .registers 7

    .prologue
    .line 889
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 890
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_23

    .line 891
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 892
    if-nez p2, :cond_13

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_13
    if-eqz p2, :cond_1e

    if-ne v2, p1, :cond_1e

    .line 896
    :cond_17
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 890
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 899
    :cond_1e
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    goto :goto_1b

    .line 903
    :cond_23
    return-void
.end method

.method static d(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 995
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 996
    const-string/jumbo v0, "LEFT"

    .line 1001
    :goto_8
    return-object v0

    .line 998
    :cond_9
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    .line 999
    const-string/jumbo v0, "RIGHT"

    goto :goto_8

    .line 1001
    :cond_12
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private e()V
    .registers 2

    .prologue
    .line 1120
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-eqz v0, :cond_5

    .line 1125
    :goto_4
    return-void

    .line 1123
    :cond_5
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    .line 1124
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method private f()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 1128
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v0

    .line 1130
    if-nez v0, :cond_12

    .line 1131
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1133
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1134
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    .line 1143
    :goto_11
    return-object v0

    .line 1137
    :cond_12
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1139
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1140
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 1143
    :cond_1e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method private g()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 1147
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v0

    .line 1148
    if-nez v0, :cond_12

    .line 1149
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1151
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1152
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    .line 1161
    :goto_11
    return-object v0

    .line 1155
    :cond_12
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1157
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1158
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 1161
    :cond_1e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->K:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method private h()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1790
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    move v2, v1

    .line 1791
    :goto_6
    if-ge v2, v3, :cond_1c

    .line 1792
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1793
    iget-boolean v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c:Z

    if-eqz v0, :cond_18

    .line 1794
    const/4 v0, 0x1

    .line 1797
    :goto_17
    return v0

    .line 1791
    :cond_18
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_1c
    move v0, v1

    .line 1797
    goto :goto_17
.end method

.method private i()Z
    .registers 2

    .prologue
    .line 1860
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static l(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 2000
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 2002
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static m(Landroid/view/View;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1286
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1287
    if-eqz v1, :cond_f

    .line 1288
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    const/4 v0, 0x1

    .line 1290
    :cond_f
    return v0
.end method


# virtual methods
.method public a(I)I
    .registers 5

    .prologue
    const/4 v2, 0x3

    .line 694
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v0

    .line 696
    sparse-switch p1, :sswitch_data_4e

    .line 739
    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 698
    :sswitch_a
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    if-eq v1, v2, :cond_11

    .line 699
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    goto :goto_9

    .line 701
    :cond_11
    if-nez v0, :cond_18

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    .line 703
    :goto_15
    if-eq v0, v2, :cond_8

    goto :goto_9

    .line 701
    :cond_18
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    goto :goto_15

    .line 708
    :sswitch_1b
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    if-eq v1, v2, :cond_22

    .line 709
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    goto :goto_9

    .line 711
    :cond_22
    if-nez v0, :cond_29

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    .line 713
    :goto_26
    if-eq v0, v2, :cond_8

    goto :goto_9

    .line 711
    :cond_29
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    goto :goto_26

    .line 718
    :sswitch_2c
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    if-eq v1, v2, :cond_33

    .line 719
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    goto :goto_9

    .line 721
    :cond_33
    if-nez v0, :cond_3a

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    .line 723
    :goto_37
    if-eq v0, v2, :cond_8

    goto :goto_9

    .line 721
    :cond_3a
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    goto :goto_37

    .line 728
    :sswitch_3d
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    if-eq v1, v2, :cond_44

    .line 729
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    goto :goto_9

    .line 731
    :cond_44
    if-nez v0, :cond_4b

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    .line 733
    :goto_48
    if-eq v0, v2, :cond_8

    goto :goto_9

    .line 731
    :cond_4b
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    goto :goto_48

    .line 696
    :sswitch_data_4e
    .sparse-switch
        0x3 -> :sswitch_a
        0x5 -> :sswitch_1b
        0x800003 -> :sswitch_2c
        0x800005 -> :sswitch_3d
    .end sparse-switch
.end method

.method public a(Landroid/view/View;)I
    .registers 5

    .prologue
    .line 751
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 752
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 755
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)I

    move-result v0

    return v0
.end method

.method a()Landroid/view/View;
    .registers 6

    .prologue
    .line 945
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 946
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v3, :cond_1f

    .line 947
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 948
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 949
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    and-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1b

    move-object v0, v1

    .line 953
    :goto_1a
    return-object v0

    .line 946
    :cond_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 953
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method a(IILandroid/view/View;)V
    .registers 8

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 803
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->a()I

    move-result v2

    .line 804
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->a()I

    move-result v3

    .line 807
    if-eq v2, v1, :cond_12

    if-ne v3, v1, :cond_4b

    :cond_12
    move v2, v1

    .line 815
    :goto_13
    if-eqz p3, :cond_27

    if-nez p2, :cond_27

    .line 816
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 817
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_54

    .line 818
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;)V

    .line 824
    :cond_27
    :goto_27
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->o:I

    if-eq v2, v0, :cond_60

    .line 825
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->o:I

    .line 827
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    if-eqz v0, :cond_60

    .line 830
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 831
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3a
    if-ltz v1, :cond_60

    .line 832
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, v2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->a(I)V

    .line 831
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3a

    .line 809
    :cond_4b
    if-eq v2, v0, :cond_4f

    if-ne v3, v0, :cond_51

    :cond_4f
    move v2, v0

    .line 810
    goto :goto_13

    .line 812
    :cond_51
    const/4 v0, 0x0

    move v2, v0

    goto :goto_13

    .line 819
    :cond_54
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_27

    .line 820
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)V

    goto :goto_27

    .line 836
    :cond_60
    return-void
.end method

.method public a(IZ)V
    .registers 6

    .prologue
    .line 1648
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1649
    if-nez v0, :cond_24

    .line 1650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1651
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1653
    :cond_24
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 1654
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    .prologue
    const v2, 0x800005

    const v1, 0x800003

    .line 473
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-eqz v0, :cond_b

    .line 490
    :cond_a
    :goto_a
    return-void

    .line 477
    :cond_b
    and-int v0, p2, v1

    if-ne v0, v1, :cond_18

    .line 478
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    .line 488
    :goto_11
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->e()V

    .line 489
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    goto :goto_a

    .line 479
    :cond_18
    and-int v0, p2, v2

    if-ne v0, v2, :cond_1f

    .line 480
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 481
    :cond_1f
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 482
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 483
    :cond_27
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 484
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->K:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method public a(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .registers 3

    .prologue
    .line 553
    if-nez p1, :cond_3

    .line 560
    :goto_2
    return-void

    .line 556
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    if-nez v0, :cond_e

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    .line 559
    :cond_e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method a(Landroid/view/View;F)V
    .registers 5

    .prologue
    .line 906
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    if-eqz v0, :cond_1e

    .line 909
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 910
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_1e

    .line 911
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->a(Landroid/view/View;F)V

    .line 910
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    .line 914
    :cond_1e
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1603
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1604
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1607
    :cond_2b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1608
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    if-eqz v1, :cond_40

    .line 1609
    iput v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    .line 1610
    iput v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    .line 1612
    invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    .line 1627
    :goto_3c
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1628
    return-void

    .line 1613
    :cond_40
    if-eqz p2, :cond_6c

    .line 1614
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    .line 1616
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1617
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;II)Z

    goto :goto_3c

    .line 1619
    :cond_59
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1620
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1619
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;II)Z

    goto :goto_3c

    .line 1623
    :cond_6c
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;F)V

    .line 1624
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    invoke-virtual {p0, v0, v2, p1}, Landroid/support/v4/widget/DrawerLayout;->a(IILandroid/view/View;)V

    .line 1625
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3c
.end method

.method public a(Ljava/lang/Object;Z)V
    .registers 4

    .prologue
    .line 447
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/lang/Object;

    .line 448
    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->G:Z

    .line 449
    if-nez p2, :cond_14

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 450
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    .line 451
    return-void

    .line 449
    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method a(Z)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 1556
    .line 1557
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    .line 1558
    :goto_7
    if-ge v2, v4, :cond_4d

    .line 1559
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1560
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1562
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1f

    if-eqz p1, :cond_23

    iget-boolean v6, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c:Z

    if-nez v6, :cond_23

    .line 1558
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 1566
    :cond_23
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1568
    const/4 v7, 0x3

    invoke-virtual {p0, v5, v7}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 1569
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    neg-int v6, v6

    .line 1570
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1569
    invoke-virtual {v7, v5, v6, v8}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1576
    :goto_3a
    iput-boolean v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c:Z

    goto :goto_1f

    .line 1572
    :cond_3d
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    .line 1573
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1572
    invoke-virtual {v6, v5, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_3a

    .line 1579
    :cond_4d
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a()V

    .line 1580
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a()V

    .line 1582
    if-eqz v1, :cond_5c

    .line 1583
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1585
    :cond_5c
    return-void
.end method

.method a(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 940
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v0

    .line 941
    and-int/2addr v0, p2

    if-ne v0, p2, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1826
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x60000

    if-ne v0, v2, :cond_a

    .line 1857
    :goto_9
    return-void

    .line 1832
    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 1834
    :goto_10
    if-ge v2, v3, :cond_2f

    .line 1835
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1836
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1837
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1838
    const/4 v0, 0x1

    .line 1839
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1834
    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1842
    :cond_29
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->L:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 1846
    :cond_2f
    if-nez v0, :cond_4e

    .line 1847
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1848
    :goto_37
    if-ge v1, v2, :cond_4e

    .line 1849
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1850
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4a

    .line 1851
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1848
    :cond_4a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_37

    .line 1856
    :cond_4e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_9
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .prologue
    .line 1972
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1974
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    .line 1975
    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1978
    :cond_f
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 1989
    :goto_13
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    if-nez v0, :cond_1c

    .line 1990
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->e:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 1992
    :cond_1c
    return-void

    .line 1983
    :cond_1d
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    goto :goto_13
.end method

.method public b(I)Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 788
    .line 789
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v0

    .line 788
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v0

    .line 790
    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 791
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->D:Ljava/lang/CharSequence;

    .line 795
    :goto_d
    return-object v0

    .line 792
    :cond_e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 793
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->E:Ljava/lang/CharSequence;

    goto :goto_d

    .line 795
    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b()V
    .registers 2

    .prologue
    .line 1552
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1553
    return-void
.end method

.method public b(IZ)V
    .registers 6

    .prologue
    .line 1715
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1716
    if-nez v0, :cond_24

    .line 1717
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1718
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1720
    :cond_24
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;Z)V

    .line 1721
    return-void
.end method

.method b(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 839
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 840
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    .line 841
    iput v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    .line 843
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    if-eqz v0, :cond_2e

    .line 846
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 847
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1d
    if-ltz v1, :cond_2e

    .line 848
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->b(Landroid/view/View;)V

    .line 847
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1d

    .line 852
    :cond_2e
    invoke-direct {p0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    .line 857
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 858
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 859
    if-eqz v0, :cond_42

    .line 860
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 864
    :cond_42
    return-void
.end method

.method b(Landroid/view/View;F)V
    .registers 5

    .prologue
    .line 917
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 918
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_d

    .line 924
    :goto_c
    return-void

    .line 922
    :cond_d
    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    .line 923
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;F)V

    goto :goto_c
.end method

.method public b(Landroid/view/View;Z)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1672
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1676
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1677
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    if-eqz v1, :cond_3b

    .line 1678
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    .line 1679
    iput v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    .line 1694
    :goto_37
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1695
    return-void

    .line 1680
    :cond_3b
    if-eqz p2, :cond_67

    .line 1681
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    .line 1683
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1684
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    .line 1685
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1684
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;II)Z

    goto :goto_37

    .line 1687
    :cond_59
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;II)Z

    goto :goto_37

    .line 1690
    :cond_67
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;F)V

    .line 1691
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    invoke-virtual {p0, v0, v3, p1}, Landroid/support/v4/widget/DrawerLayout;->a(IILandroid/view/View;)V

    .line 1692
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37
.end method

.method c()Landroid/view/View;
    .registers 5

    .prologue
    .line 1864
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v2

    .line 1865
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_1d

    .line 1866
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1867
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->k(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1871
    :goto_18
    return-object v0

    .line 1865
    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1871
    :cond_1d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method c(I)Landroid/view/View;
    .registers 7

    .prologue
    .line 975
    .line 976
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v0

    .line 975
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x7

    .line 977
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 978
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_23

    .line 979
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 980
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v4

    .line 981
    and-int/lit8 v4, v4, 0x7

    if-ne v4, v2, :cond_1f

    .line 985
    :goto_1e
    return-object v0

    .line 978
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 985
    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method c(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 867
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 868
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3b

    .line 869
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    .line 870
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    if-eqz v0, :cond_2d

    .line 873
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 874
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1c
    if-ltz v1, :cond_2d

    .line 875
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->a(Landroid/view/View;)V

    .line 874
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1c

    .line 879
    :cond_2d
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    .line 882
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 883
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 886
    :cond_3b
    return-void
.end method

.method c(Landroid/view/View;F)V
    .registers 6

    .prologue
    .line 957
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)F

    move-result v0

    .line 958
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 959
    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 960
    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 961
    sub-int v0, v1, v0

    .line 963
    const/4 v1, 0x3

    .line 964
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 963
    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 965
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;F)V

    .line 966
    return-void

    .line 964
    :cond_1e
    neg-int v0, v0

    goto :goto_17
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 1816
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public computeScroll()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1271
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 1272
    const/4 v1, 0x0

    .line 1273
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_9
    if-ge v1, v3, :cond_1f

    .line 1274
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    .line 1275
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1273
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 1277
    :cond_1f
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    .line 1280
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/ViewDragHelper;->a(Z)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/ViewDragHelper;->a(Z)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_33

    .line 1281
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;)V

    .line 1283
    :cond_33
    return-void
.end method

.method d(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 927
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    return v0
.end method

.method d()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1876
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    if-nez v0, :cond_27

    .line 1877
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1878
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1880
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1881
    :goto_15
    if-ge v7, v1, :cond_21

    .line 1882
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1881
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 1884
    :cond_21
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1885
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    .line 1887
    :cond_27
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 14

    .prologue
    .line 1354
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v4

    .line 1355
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v5

    .line 1356
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 1358
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1359
    if-eqz v5, :cond_5f

    .line 1360
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    .line 1361
    const/4 v0, 0x0

    move v3, v0

    :goto_19
    if-ge v3, v7, :cond_57

    .line 1362
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1363
    if-eq v0, p2, :cond_55

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_55

    .line 1364
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->m(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 1365
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v8, v4, :cond_3f

    move v0, v2

    .line 1361
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_19

    .line 1369
    :cond_3f
    const/4 v8, 0x3

    invoke-virtual {p0, v0, v8}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 1370
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1371
    if-le v0, v1, :cond_12d

    :goto_4c
    move v1, v0

    move v0, v2

    .line 1372
    goto :goto_3a

    .line 1373
    :cond_4f
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1374
    if-lt v0, v2, :cond_3a

    :cond_55
    move v0, v2

    goto :goto_3a

    .line 1377
    :cond_57
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_5f
    move v0, v2

    .line 1379
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 1380
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1382
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_99

    if-eqz v5, :cond_99

    .line 1383
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->h:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    .line 1384
    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1385
    shl-int/lit8 v2, v2, 0x18

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->h:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 1386
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1388
    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1413
    :cond_98
    :goto_98
    return v7

    .line 1389
    :cond_99
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e0

    const/4 v0, 0x3

    .line 1390
    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 1391
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1392
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1393
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->b()I

    move-result v2

    .line 1394
    const/4 v3, 0x0

    int-to-float v4, v1

    int-to-float v2, v2

    div-float v2, v4, v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1395
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1396
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v1

    .line 1397
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1396
    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1398
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1399
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_98

    .line 1400
    :cond_e0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_98

    const/4 v0, 0x5

    .line 1401
    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1402
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1403
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1404
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    .line 1405
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->b()I

    move-result v3

    .line 1406
    const/4 v4, 0x0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1407
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1408
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    sub-int v0, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1409
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1408
    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1410
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1411
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_98

    :cond_12d
    move v0, v1

    goto/16 :goto_4c
.end method

.method e(Landroid/view/View;)I
    .registers 4

    .prologue
    .line 935
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 936
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v0

    return v0
.end method

.method public e(I)V
    .registers 3

    .prologue
    .line 1637
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(IZ)V

    .line 1638
    return-void
.end method

.method public f(I)V
    .registers 3

    .prologue
    .line 1704
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(IZ)V

    .line 1705
    return-void
.end method

.method f(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1417
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method g(Landroid/view/View;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1421
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 1423
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v2

    .line 1422
    invoke-static {v0, v2}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v0

    .line 1424
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_17

    move v0, v1

    .line 1432
    :goto_16
    return v0

    .line 1428
    :cond_17
    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_1d

    move v0, v1

    .line 1430
    goto :goto_16

    .line 1432
    :cond_1d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 1802
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 1821
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 1807
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    :goto_b
    return-object v0

    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    :cond_18
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getDrawerElevation()F
    .registers 2

    .prologue
    .line 435
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-eqz v0, :cond_7

    .line 436
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    .line 438
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public h(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1593
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 1594
    return-void
.end method

.method public i(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1662
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;Z)V

    .line 1663
    return-void
.end method

.method public j(Landroid/view/View;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1734
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1735
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1737
    :cond_28
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1738
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_36

    move v0, v1

    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public k(Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 1767
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1768
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1770
    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_36

    const/4 v0, 0x1

    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 1012
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1013
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    .line 1014
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1006
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1007
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    .line 1008
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1342
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1343
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->G:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_24

    .line 1344
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->c:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1345
    if-lez v0, :cond_24

    .line 1346
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1347
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1350
    :cond_24
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1437
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1440
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    .line 1441
    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1445
    packed-switch v0, :pswitch_data_70

    :cond_16
    :goto_16
    move v0, v2

    .line 1479
    :goto_17
    if-nez v3, :cond_25

    if-nez v0, :cond_25

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->h()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    if-eqz v0, :cond_26

    :cond_25
    move v2, v1

    :cond_26
    return v2

    .line 1447
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1449
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:F

    .line 1450
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->z:F

    .line 1451
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6d

    .line 1452
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/ViewDragHelper;->d(II)Landroid/view/View;

    move-result-object v0

    .line 1453
    if-eqz v0, :cond_6d

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6d

    move v0, v1

    .line 1457
    :goto_4b
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1458
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    goto :goto_17

    .line 1464
    :pswitch_50
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/ViewDragHelper;->d(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1465
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a()V

    .line 1466
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a()V

    move v0, v2

    goto :goto_17

    .line 1473
    :pswitch_65
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1474
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1475
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    goto :goto_16

    :cond_6d
    move v0, v2

    goto :goto_4b

    .line 1445
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_27
        :pswitch_65
        :pswitch_50
        :pswitch_65
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 1891
    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1892
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1893
    const/4 v0, 0x1

    .line 1895
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 1900
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    .line 1901
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->c()Landroid/view/View;

    move-result-object v0

    .line 1902
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_12

    .line 1903
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->b()V

    .line 1905
    :cond_12
    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 1907
    :goto_15
    return v0

    .line 1905
    :cond_16
    const/4 v0, 0x0

    goto :goto_15

    .line 1907
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method protected onLayout(ZIIII)V
    .registers 20

    .prologue
    .line 1180
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 1181
    sub-int v6, p4, p2

    .line 1182
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    .line 1183
    const/4 v0, 0x0

    move v5, v0

    :goto_b
    if-ge v5, v7, :cond_cc

    .line 1184
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1186
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1d

    .line 1183
    :cond_19
    :goto_19
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_b

    .line 1190
    :cond_1d
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1192
    invoke-virtual {p0, v8}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1193
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 1194
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1195
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 1193
    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_19

    .line 1197
    :cond_3f
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1198
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1202
    const/4 v1, 0x3

    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1203
    neg-int v1, v9

    int-to-float v2, v9

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    .line 1204
    add-int v1, v9, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    .line 1210
    :goto_5a
    iget v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_95

    const/4 v3, 0x1

    .line 1212
    :goto_61
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    and-int/lit8 v4, v4, 0x70

    .line 1214
    sparse-switch v4, :sswitch_data_d4

    .line 1217
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1248
    :goto_71
    if-eqz v3, :cond_76

    .line 1249
    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;F)V

    .line 1252
    :cond_76
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ca

    const/4 v0, 0x0

    .line 1253
    :goto_7e
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_19

    .line 1254
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 1206
    :cond_88
    int-to-float v1, v9

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v2, v6, v1

    .line 1207
    sub-int v1, v6, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    goto :goto_5a

    .line 1210
    :cond_95
    const/4 v3, 0x0

    goto :goto_61

    .line 1223
    :sswitch_97
    sub-int v4, p5, p3

    .line 1224
    iget v10, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v10, v4, v10

    .line 1225
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v11

    .line 1224
    invoke-virtual {v8, v2, v10, v9, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_71

    .line 1232
    :sswitch_aa
    sub-int v11, p5, p3

    .line 1233
    sub-int v4, v11, v10

    div-int/lit8 v4, v4, 0x2

    .line 1237
    iget v12, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    if-ge v4, v12, :cond_bc

    .line 1238
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1242
    :cond_b6
    :goto_b6
    add-int/2addr v9, v2

    add-int/2addr v10, v4

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_71

    .line 1239
    :cond_bc
    add-int v12, v4, v10

    iget v13, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v13, v11, v13

    if-le v12, v13, :cond_b6

    .line 1240
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v11, v4

    sub-int/2addr v4, v10

    goto :goto_b6

    .line 1252
    :cond_ca
    const/4 v0, 0x4

    goto :goto_7e

    .line 1258
    :cond_cc
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 1259
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    .line 1260
    return-void

    .line 1214
    nop

    :sswitch_data_d4
    .sparse-switch
        0x10 -> :sswitch_aa
        0x50 -> :sswitch_97
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 16

    .prologue
    .line 1018
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1019
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1020
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1021
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1023
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_18

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_173

    .line 1024
    :cond_18
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1029
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_55

    .line 1035
    :cond_22
    :goto_22
    const/high16 v2, -0x80000000

    if-ne v3, v2, :cond_5a

    move v2, v1

    move v1, v0

    .line 1047
    :goto_28
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1049
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/lang/Object;

    if-eqz v0, :cond_6a

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->w(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x1

    move v3, v0

    .line 1050
    :goto_37
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v8

    .line 1054
    const/4 v5, 0x0

    .line 1055
    const/4 v4, 0x0

    .line 1056
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    .line 1057
    const/4 v0, 0x0

    move v7, v0

    :goto_43
    if-ge v7, v9, :cond_172

    .line 1058
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1060
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_6d

    .line 1057
    :goto_51
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_43

    .line 1031
    :cond_55
    if-nez v2, :cond_22

    .line 1033
    const/16 v1, 0x12c

    goto :goto_22

    .line 1037
    :cond_5a
    if-nez v3, :cond_173

    .line 1039
    const/16 v0, 0x12c

    move v2, v1

    move v1, v0

    goto :goto_28

    .line 1042
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1049
    :cond_6a
    const/4 v0, 0x0

    move v3, v0

    goto :goto_37

    .line 1064
    :cond_6d
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1066
    if-eqz v3, :cond_88

    .line 1067
    iget v6, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    invoke-static {v6, v8}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v6

    .line 1068
    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->w(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_ad

    .line 1069
    sget-object v11, Landroid/support/v4/widget/DrawerLayout;->c:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v12, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/lang/Object;

    invoke-interface {v11, v10, v12, v6}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->a(Landroid/view/View;Ljava/lang/Object;I)V

    .line 1075
    :cond_88
    :goto_88
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 1077
    iget v6, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int v6, v2, v6

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v11

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1079
    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    sub-int v11, v1, v11

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v11, v0

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1081
    invoke-virtual {v10, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_51

    .line 1071
    :cond_ad
    sget-object v11, Landroid/support/v4/widget/DrawerLayout;->c:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v12, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/lang/Object;

    invoke-interface {v11, v0, v12, v6}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->a(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    goto :goto_88

    .line 1082
    :cond_b5
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_13f

    .line 1083
    sget-boolean v6, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-eqz v6, :cond_ce

    .line 1084
    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->t(Landroid/view/View;)F

    move-result v6

    iget v11, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_ce

    .line 1085
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    invoke-static {v10, v6}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;F)V

    .line 1089
    :cond_ce
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v6

    and-int/lit8 v11, v6, 0x7

    .line 1092
    const/4 v6, 0x3

    if-ne v11, v6, :cond_11a

    const/4 v6, 0x1

    .line 1093
    :goto_d8
    if-eqz v6, :cond_dc

    if-nez v5, :cond_e0

    :cond_dc
    if-nez v6, :cond_11c

    if-eqz v4, :cond_11c

    .line 1095
    :cond_e0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Child drawer has absolute gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1096
    invoke-static {v11}, Landroid/support/v4/widget/DrawerLayout;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "DrawerLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already has a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "drawer view along that edge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1092
    :cond_11a
    const/4 v6, 0x0

    goto :goto_d8

    .line 1099
    :cond_11c
    if-eqz v6, :cond_13d

    .line 1100
    const/4 v5, 0x1

    .line 1104
    :goto_11f
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->g:I

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v11

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v11

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    invoke-static {p1, v6, v11}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 1107
    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v12, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    invoke-static {p2, v11, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1110
    invoke-virtual {v10, v6, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_51

    .line 1102
    :cond_13d
    const/4 v4, 0x1

    goto :goto_11f

    .line 1112
    :cond_13f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1117
    :cond_172
    return-void

    :cond_173
    move v2, v1

    move v1, v0

    goto/16 :goto_28
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    .prologue
    const/4 v2, 0x3

    .line 1912
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    if-nez v0, :cond_9

    .line 1913
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1939
    :cond_8
    :goto_8
    return-void

    .line 1917
    :cond_9
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 1918
    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1920
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    if-eqz v0, :cond_21

    .line 1921
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1922
    if-eqz v0, :cond_21

    .line 1923
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    .line 1927
    :cond_21
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    if-eq v0, v2, :cond_2a

    .line 1928
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1930
    :cond_2a
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    if-eq v0, v2, :cond_34

    .line 1931
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1933
    :cond_34
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->d:I

    if-eq v0, v2, :cond_40

    .line 1934
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->d:I

    const v1, 0x800003

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1936
    :cond_40
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->e:I

    if-eq v0, v2, :cond_8

    .line 1937
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->e:I

    const v1, 0x800005

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    goto :goto_8
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    .prologue
    .line 1337
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->e()V

    .line 1338
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1943
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1944
    new-instance v6, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v6, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1946
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    move v5, v3

    .line 1947
    :goto_10
    if-ge v5, v7, :cond_2f

    .line 1948
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1949
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1951
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    if-ne v1, v2, :cond_40

    move v1, v2

    .line 1953
    :goto_21
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_42

    move v4, v2

    .line 1954
    :goto_27
    if-nez v1, :cond_2b

    if-eqz v4, :cond_44

    .line 1957
    :cond_2b
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    .line 1962
    :cond_2f
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    .line 1963
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    .line 1964
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->d:I

    .line 1965
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->e:I

    .line 1967
    return-object v6

    :cond_40
    move v1, v3

    .line 1951
    goto :goto_21

    :cond_42
    move v4, v3

    .line 1953
    goto :goto_27

    .line 1947
    :cond_44
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1484
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->b(Landroid/view/MotionEvent;)V

    .line 1485
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->b(Landroid/view/MotionEvent;)V

    .line 1487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1490
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_76

    .line 1531
    :goto_15
    :pswitch_15
    return v1

    .line 1492
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1494
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:F

    .line 1495
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->z:F

    .line 1496
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1497
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    goto :goto_15

    .line 1502
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1505
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v5, v0

    float-to-int v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->d(II)Landroid/view/View;

    move-result-object v4

    .line 1506
    if-eqz v4, :cond_73

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1507
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->y:F

    sub-float/2addr v0, v4

    .line 1508
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->z:F

    sub-float/2addr v3, v4

    .line 1509
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->d()I

    move-result v4

    .line 1510
    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v0, v3

    mul-int v3, v4, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_73

    .line 1512
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    .line 1513
    if-eqz v0, :cond_73

    .line 1514
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_69

    move v0, v1

    .line 1518
    :goto_63
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1519
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    goto :goto_15

    :cond_69
    move v0, v2

    .line 1514
    goto :goto_63

    .line 1524
    :pswitch_6b
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1525
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1526
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    goto :goto_15

    :cond_73
    move v0, v1

    goto :goto_63

    .line 1490
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_16
        :pswitch_27
        :pswitch_15
        :pswitch_6b
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3

    .prologue
    .line 1540
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1542
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1543
    if-eqz p1, :cond_b

    .line 1544
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1546
    :cond_b
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1264
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    if-nez v0, :cond_7

    .line 1265
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1267
    :cond_7
    return-void
.end method

.method public setDrawerElevation(F)V
    .registers 5

    .prologue
    .line 418
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    .line 419
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 420
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 421
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 422
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;F)V

    .line 419
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 425
    :cond_1b
    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 3

    .prologue
    .line 594
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 595
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 596
    return-void
.end method

.method public setDrawerLockMode(II)V
    .registers 5

    .prologue
    .line 618
    .line 619
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v0

    .line 618
    invoke-static {p2, v0}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v1

    .line 621
    sparse-switch p2, :sswitch_data_3c

    .line 636
    :goto_b
    if-eqz p1, :cond_15

    .line 638
    const/4 v0, 0x3

    if-ne v1, v0, :cond_25

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    .line 639
    :goto_12
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->e()V

    .line 641
    :cond_15
    packed-switch p1, :pswitch_data_4e

    .line 656
    :cond_18
    :goto_18
    return-void

    .line 623
    :sswitch_19
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    goto :goto_b

    .line 626
    :sswitch_1c
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    goto :goto_b

    .line 629
    :sswitch_1f
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    goto :goto_b

    .line 632
    :sswitch_22
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    goto :goto_b

    .line 638
    :cond_25
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_12

    .line 643
    :pswitch_28
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 644
    if-eqz v0, :cond_18

    .line 645
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    goto :goto_18

    .line 649
    :pswitch_32
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 650
    if-eqz v0, :cond_18

    .line 651
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    goto :goto_18

    .line 621
    :sswitch_data_3c
    .sparse-switch
        0x3 -> :sswitch_19
        0x5 -> :sswitch_1c
        0x800003 -> :sswitch_1f
        0x800005 -> :sswitch_22
    .end sparse-switch

    .line 641
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_32
        :pswitch_28
    .end packed-switch
.end method

.method public setDrawerShadow(II)V
    .registers 4

    .prologue
    .line 507
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 508
    return-void
.end method

.method public setScrimColor(I)V
    .registers 2

    .prologue
    .line 516
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->h:I

    .line 517
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 518
    return-void
.end method

.method public setStatusBarBackground(I)V
    .registers 3

    .prologue
    .line 1320
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    .line 1321
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1322
    return-void

    .line 1320
    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3

    .prologue
    .line 1332
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    .line 1333
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1334
    return-void
.end method
