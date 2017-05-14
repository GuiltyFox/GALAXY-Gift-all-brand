.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayoutImpl;


# static fields
.field static final a:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

.field private static final b:[I

.field private static final c:Z

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

    .line 176
    new-array v0, v1, [I

    const v3, 0x10100b3

    aput v3, v0, v2

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->b:[I

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_28

    move v0, v1

    :goto_14
    sput-boolean v0, Landroid/support/v4/widget/DrawerLayout;->c:Z

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2a

    :goto_1a
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->d:Z

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 358
    if-lt v0, v4, :cond_2c

    .line 359
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    .line 363
    :goto_27
    return-void

    :cond_28
    move v0, v2

    .line 181
    goto :goto_14

    :cond_2a
    move v1, v2

    .line 184
    goto :goto_1a

    .line 361
    :cond_2c
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    goto :goto_27
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 369
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 373
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 376
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->e:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    .line 193
    const/high16 v0, -0x67000000

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->h:I

    .line 195
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/graphics/Paint;

    .line 203
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    .line 205
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    .line 206
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    .line 207
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    .line 208
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    .line 230
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    .line 231
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    .line 232
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    .line 233
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->K:Landroid/graphics/drawable/Drawable;

    .line 377
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 378
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 379
    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->g:I

    .line 380
    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v1, v0

    .line 382
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 383
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 385
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    .line 386
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/ViewDragHelper;->a(I)V

    .line 387
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->a(F)V

    .line 388
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 390
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    .line 391
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->a(I)V

    .line 392
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->a(F)V

    .line 393
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 396
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 398
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 401
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 402
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewGroupCompat;->a(Landroid/view/ViewGroup;Z)V

    .line 403
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->w(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 404
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {v1, p0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->a(Landroid/view/View;)V

    .line 405
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {v1, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    .line 408
    :cond_ae
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->L:Ljava/util/ArrayList;

    .line 411
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;
    .registers 2

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->k()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/graphics/drawable/Drawable;I)Z
    .registers 4

    .prologue
    .line 1174
    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1175
    :cond_8
    const/4 v0, 0x0

    .line 1179
    :goto_9
    return v0

    .line 1178
    :cond_a
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1179
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private c(Landroid/view/View;Z)V
    .registers 7

    .prologue
    .line 893
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 894
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_23

    .line 895
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 896
    if-nez p2, :cond_13

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_13
    if-eqz p2, :cond_1e

    if-ne v2, p1, :cond_1e

    .line 900
    :cond_17
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 894
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 903
    :cond_1e
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    goto :goto_1b

    .line 907
    :cond_23
    return-void
.end method

.method static d(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 999
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 1000
    const-string/jumbo v0, "LEFT"

    .line 1005
    :goto_8
    return-object v0

    .line 1002
    :cond_9
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    .line 1003
    const-string/jumbo v0, "RIGHT"

    goto :goto_8

    .line 1005
    :cond_12
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method static synthetic d()[I
    .registers 1

    .prologue
    .line 96
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->b:[I

    return-object v0
.end method

.method static synthetic e()Z
    .registers 1

    .prologue
    .line 96
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->c:Z

    return v0
.end method

.method private f()V
    .registers 2

    .prologue
    .line 1124
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-eqz v0, :cond_5

    .line 1129
    :goto_4
    return-void

    .line 1127
    :cond_5
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    .line 1128
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method private g()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 1132
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v0

    .line 1134
    if-nez v0, :cond_12

    .line 1135
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1137
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1138
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    .line 1147
    :goto_11
    return-object v0

    .line 1141
    :cond_12
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1143
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1144
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 1147
    :cond_1e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method private h()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 1151
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v0

    .line 1152
    if-nez v0, :cond_12

    .line 1153
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1155
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1156
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    .line 1165
    :goto_11
    return-object v0

    .line 1159
    :cond_12
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1161
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1162
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 1165
    :cond_1e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->K:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method private i()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1794
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    move v2, v1

    .line 1795
    :goto_6
    if-ge v2, v3, :cond_1e

    .line 1796
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1797
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1798
    const/4 v0, 0x1

    .line 1801
    :goto_19
    return v0

    .line 1795
    :cond_1a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_1e
    move v0, v1

    .line 1801
    goto :goto_19
.end method

.method private j()Z
    .registers 2

    .prologue
    .line 1864
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->k()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private k()Landroid/view/View;
    .registers 5

    .prologue
    .line 1868
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v2

    .line 1869
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_1d

    .line 1870
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1871
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->k(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1875
    :goto_18
    return-object v0

    .line 1869
    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1875
    :cond_1d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static synthetic l(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 96
    invoke-static {p0}, Landroid/support/v4/widget/DrawerLayout;->n(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private static m(Landroid/view/View;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1290
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1291
    if-eqz v1, :cond_f

    .line 1292
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    const/4 v0, 0x1

    .line 1294
    :cond_f
    return v0
.end method

.method private static n(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 2004
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 2006
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;)I

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


# virtual methods
.method public a(I)I
    .registers 5

    .prologue
    const/4 v2, 0x3

    .line 696
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v0

    .line 698
    sparse-switch p1, :sswitch_data_4e

    .line 741
    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 700
    :sswitch_a
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    if-eq v1, v2, :cond_11

    .line 701
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    goto :goto_9

    .line 703
    :cond_11
    if-nez v0, :cond_18

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    .line 705
    :goto_15
    if-eq v0, v2, :cond_8

    goto :goto_9

    .line 703
    :cond_18
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    goto :goto_15

    .line 710
    :sswitch_1b
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    if-eq v1, v2, :cond_22

    .line 711
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    goto :goto_9

    .line 713
    :cond_22
    if-nez v0, :cond_29

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    .line 715
    :goto_26
    if-eq v0, v2, :cond_8

    goto :goto_9

    .line 713
    :cond_29
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    goto :goto_26

    .line 720
    :sswitch_2c
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    if-eq v1, v2, :cond_33

    .line 721
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    goto :goto_9

    .line 723
    :cond_33
    if-nez v0, :cond_3a

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    .line 725
    :goto_37
    if-eq v0, v2, :cond_8

    goto :goto_9

    .line 723
    :cond_3a
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    goto :goto_37

    .line 730
    :sswitch_3d
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    if-eq v1, v2, :cond_44

    .line 731
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    goto :goto_9

    .line 733
    :cond_44
    if-nez v0, :cond_4b

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    .line 735
    :goto_48
    if-eq v0, v2, :cond_8

    goto :goto_9

    .line 733
    :cond_4b
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    goto :goto_48

    .line 698
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
    .line 753
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 754
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

    .line 756
    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 757
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)I

    move-result v0

    return v0
.end method

.method a()Landroid/view/View;
    .registers 6

    .prologue
    .line 949
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 950
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v3, :cond_21

    .line 951
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 952
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 953
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1d

    move-object v0, v1

    .line 957
    :goto_1c
    return-object v0

    .line 950
    :cond_1d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 957
    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method a(IILandroid/view/View;)V
    .registers 8

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 805
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->a()I

    move-result v2

    .line 806
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->a()I

    move-result v3

    .line 809
    if-eq v2, v1, :cond_12

    if-ne v3, v1, :cond_4d

    :cond_12
    move v2, v1

    .line 817
    :goto_13
    if-eqz p3, :cond_29

    if-nez p2, :cond_29

    .line 818
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 819
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_56

    .line 820
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;)V

    .line 826
    :cond_29
    :goto_29
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->o:I

    if-eq v2, v0, :cond_64

    .line 827
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->o:I

    .line 829
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    if-eqz v0, :cond_64

    .line 832
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 833
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3c
    if-ltz v1, :cond_64

    .line 834
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, v2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->a(I)V

    .line 833
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3c

    .line 811
    :cond_4d
    if-eq v2, v0, :cond_51

    if-ne v3, v0, :cond_53

    :cond_51
    move v2, v0

    .line 812
    goto :goto_13

    .line 814
    :cond_53
    const/4 v0, 0x0

    move v2, v0

    goto :goto_13

    .line 821
    :cond_56
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_29

    .line 822
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)V

    goto :goto_29

    .line 838
    :cond_64
    return-void
.end method

.method public a(IZ)V
    .registers 6

    .prologue
    .line 1652
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1653
    if-nez v0, :cond_24

    .line 1654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1655
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1657
    :cond_24
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 1658
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    .prologue
    const v2, 0x800005

    const v1, 0x800003

    .line 475
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-eqz v0, :cond_b

    .line 492
    :cond_a
    :goto_a
    return-void

    .line 479
    :cond_b
    and-int v0, p2, v1

    if-ne v0, v1, :cond_18

    .line 480
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    .line 490
    :goto_11
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->f()V

    .line 491
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    goto :goto_a

    .line 481
    :cond_18
    and-int v0, p2, v2

    if-ne v0, v2, :cond_1f

    .line 482
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 483
    :cond_1f
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 484
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 485
    :cond_27
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 486
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->K:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method public a(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .registers 3

    .prologue
    .line 555
    if-nez p1, :cond_3

    .line 562
    :goto_2
    return-void

    .line 558
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    if-nez v0, :cond_e

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    .line 561
    :cond_e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method a(Landroid/view/View;F)V
    .registers 5

    .prologue
    .line 910
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    if-eqz v0, :cond_1e

    .line 913
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 914
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_1e

    .line 915
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->a(Landroid/view/View;F)V

    .line 914
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    .line 918
    :cond_1e
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1607
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1608
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

    .line 1611
    :cond_2b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1612
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    if-eqz v1, :cond_42

    .line 1613
    invoke-static {v0, v3}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F

    .line 1614
    invoke-static {v0, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 1616
    invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    .line 1631
    :goto_3e
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1632
    return-void

    .line 1617
    :cond_42
    if-eqz p2, :cond_71

    .line 1618
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 1620
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1621
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;II)Z

    goto :goto_3e

    .line 1623
    :cond_5e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1624
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1623
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;II)Z

    goto :goto_3e

    .line 1627
    :cond_71
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;F)V

    .line 1628
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    invoke-virtual {p0, v0, v2, p1}, Landroid/support/v4/widget/DrawerLayout;->a(IILandroid/view/View;)V

    .line 1629
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3e
.end method

.method public a(Ljava/lang/Object;Z)V
    .registers 4

    .prologue
    .line 449
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/lang/Object;

    .line 450
    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->G:Z

    .line 451
    if-nez p2, :cond_14

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 452
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    .line 453
    return-void

    .line 451
    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method a(Z)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 1560
    .line 1561
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    .line 1562
    :goto_7
    if-ge v2, v4, :cond_50

    .line 1563
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1564
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1566
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_21

    if-eqz p1, :cond_25

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 1562
    :cond_21
    :goto_21
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 1570
    :cond_25
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1572
    const/4 v7, 0x3

    invoke-virtual {p0, v5, v7}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1573
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    neg-int v6, v6

    .line 1574
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1573
    invoke-virtual {v7, v5, v6, v8}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1580
    :goto_3c
    invoke-static {v0, v3}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;Z)Z

    goto :goto_21

    .line 1576
    :cond_40
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    .line 1577
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1576
    invoke-virtual {v6, v5, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_3c

    .line 1583
    :cond_50
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a()V

    .line 1584
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a()V

    .line 1586
    if-eqz v1, :cond_5f

    .line 1587
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1589
    :cond_5f
    return-void
.end method

.method a(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v0

    .line 945
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

    .line 1830
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x60000

    if-ne v0, v2, :cond_a

    .line 1861
    :goto_9
    return-void

    .line 1836
    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 1838
    :goto_10
    if-ge v2, v3, :cond_2f

    .line 1839
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1840
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1841
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1842
    const/4 v0, 0x1

    .line 1843
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1838
    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1846
    :cond_29
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->L:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 1850
    :cond_2f
    if-nez v0, :cond_4e

    .line 1851
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1852
    :goto_37
    if-ge v1, v2, :cond_4e

    .line 1853
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1854
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4a

    .line 1855
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1852
    :cond_4a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_37

    .line 1860
    :cond_4e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_9
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .prologue
    .line 1976
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1978
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    .line 1979
    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1982
    :cond_f
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 1993
    :goto_13
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->c:Z

    if-nez v0, :cond_1c

    .line 1994
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->e:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 1996
    :cond_1c
    return-void

    .line 1987
    :cond_1d
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    goto :goto_13
.end method

.method public b(I)Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 790
    .line 791
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v0

    .line 790
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v0

    .line 792
    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 793
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->D:Ljava/lang/CharSequence;

    .line 797
    :goto_d
    return-object v0

    .line 794
    :cond_e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 795
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->E:Ljava/lang/CharSequence;

    goto :goto_d

    .line 797
    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b()V
    .registers 2

    .prologue
    .line 1556
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1557
    return-void
.end method

.method public b(IZ)V
    .registers 6

    .prologue
    .line 1719
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1720
    if-nez v0, :cond_24

    .line 1721
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1722
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1724
    :cond_24
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;Z)V

    .line 1725
    return-void
.end method

.method b(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 841
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 842
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_45

    .line 843
    invoke-static {v0, v3}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 845
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    if-eqz v0, :cond_31

    .line 848
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 849
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_20
    if-ltz v1, :cond_31

    .line 850
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->b(Landroid/view/View;)V

    .line 849
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_20

    .line 854
    :cond_31
    invoke-direct {p0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    .line 859
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 860
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 861
    if-eqz v0, :cond_45

    .line 862
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 866
    :cond_45
    return-void
.end method

.method b(Landroid/view/View;F)V
    .registers 5

    .prologue
    .line 921
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 922
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v1

    cmpl-float v1, p2, v1

    if-nez v1, :cond_f

    .line 928
    :goto_e
    return-void

    .line 926
    :cond_f
    invoke-static {v0, p2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F

    .line 927
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;F)V

    goto :goto_e
.end method

.method public b(Landroid/view/View;Z)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1676
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1677
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

    .line 1680
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1681
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    if-eqz v1, :cond_3d

    .line 1682
    invoke-static {v0, v2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F

    .line 1683
    invoke-static {v0, v3}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 1698
    :goto_39
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1699
    return-void

    .line 1684
    :cond_3d
    if-eqz p2, :cond_6c

    .line 1685
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 1687
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1688
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    .line 1689
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1688
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;II)Z

    goto :goto_39

    .line 1691
    :cond_5e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;II)Z

    goto :goto_39

    .line 1694
    :cond_6c
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;F)V

    .line 1695
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    invoke-virtual {p0, v0, v3, p1}, Landroid/support/v4/widget/DrawerLayout;->a(IILandroid/view/View;)V

    .line 1696
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39
.end method

.method c(I)Landroid/view/View;
    .registers 7

    .prologue
    .line 979
    .line 980
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v0

    .line 979
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x7

    .line 981
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 982
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_23

    .line 983
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 984
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v4

    .line 985
    and-int/lit8 v4, v4, 0x7

    if-ne v4, v2, :cond_1f

    .line 989
    :goto_1e
    return-object v0

    .line 982
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 989
    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method c()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1880
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    if-nez v0, :cond_27

    .line 1881
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1882
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1884
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1885
    :goto_15
    if-ge v7, v1, :cond_21

    .line 1886
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1885
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 1888
    :cond_21
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1889
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    .line 1891
    :cond_27
    return-void
.end method

.method c(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 869
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 870
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_41

    .line 871
    invoke-static {v0, v2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 872
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 875
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 876
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1f
    if-ltz v1, :cond_30

    .line 877
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->a(Landroid/view/View;)V

    .line 876
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1f

    .line 881
    :cond_30
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    .line 884
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 885
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 888
    :cond_3e
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 890
    :cond_41
    return-void
.end method

.method c(Landroid/view/View;F)V
    .registers 6

    .prologue
    .line 961
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)F

    move-result v0

    .line 962
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 963
    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 964
    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 965
    sub-int v0, v1, v0

    .line 967
    const/4 v1, 0x3

    .line 968
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 967
    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 969
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;F)V

    .line 970
    return-void

    .line 968
    :cond_1e
    neg-int v0, v0

    goto :goto_17
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 1820
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

    .line 1275
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 1276
    const/4 v1, 0x0

    .line 1277
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_9
    if-ge v1, v3, :cond_21

    .line 1278
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v0

    .line 1279
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1277
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 1281
    :cond_21
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    .line 1284
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/ViewDragHelper;->a(Z)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/ViewDragHelper;->a(Z)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_35

    .line 1285
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1287
    :cond_35
    return-void
.end method

.method d(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 931
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 14

    .prologue
    .line 1358
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v4

    .line 1359
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v5

    .line 1360
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 1362
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1363
    if-eqz v5, :cond_5f

    .line 1364
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    .line 1365
    const/4 v0, 0x0

    move v3, v0

    :goto_19
    if-ge v3, v7, :cond_57

    .line 1366
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1367
    if-eq v0, p2, :cond_55

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_55

    .line 1368
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->m(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 1369
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v8, v4, :cond_3f

    move v0, v2

    .line 1365
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_19

    .line 1373
    :cond_3f
    const/4 v8, 0x3

    invoke-virtual {p0, v0, v8}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 1374
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1375
    if-le v0, v1, :cond_12d

    :goto_4c
    move v1, v0

    move v0, v2

    .line 1376
    goto :goto_3a

    .line 1377
    :cond_4f
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1378
    if-lt v0, v2, :cond_3a

    :cond_55
    move v0, v2

    goto :goto_3a

    .line 1381
    :cond_57
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_5f
    move v0, v2

    .line 1383
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 1384
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1386
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_99

    if-eqz v5, :cond_99

    .line 1387
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->h:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    .line 1388
    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1389
    shl-int/lit8 v2, v2, 0x18

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->h:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 1390
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1392
    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1417
    :cond_98
    :goto_98
    return v7

    .line 1393
    :cond_99
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e0

    const/4 v0, 0x3

    .line 1394
    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 1395
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1396
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1397
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->b()I

    move-result v2

    .line 1398
    const/4 v3, 0x0

    int-to-float v4, v1

    int-to-float v2, v2

    div-float v2, v4, v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1399
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1400
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v1

    .line 1401
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1400
    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1402
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1403
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_98

    .line 1404
    :cond_e0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_98

    const/4 v0, 0x5

    .line 1405
    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1406
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1407
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1408
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    .line 1409
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->b()I

    move-result v3

    .line 1410
    const/4 v4, 0x0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1411
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1412
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    sub-int v0, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1413
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1412
    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1414
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1415
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
    .line 939
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 940
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v0

    return v0
.end method

.method public e(I)V
    .registers 3

    .prologue
    .line 1641
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(IZ)V

    .line 1642
    return-void
.end method

.method public f(I)V
    .registers 3

    .prologue
    .line 1708
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(IZ)V

    .line 1709
    return-void
.end method

.method f(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1421
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

    .line 1425
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 1427
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v2

    .line 1426
    invoke-static {v0, v2}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v0

    .line 1428
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_17

    move v0, v1

    .line 1436
    :goto_16
    return v0

    .line 1432
    :cond_17
    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_1d

    move v0, v1

    .line 1434
    goto :goto_16

    .line 1436
    :cond_1d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 1806
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 1825
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 1811
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
    .line 437
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-eqz v0, :cond_7

    .line 438
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    .line 440
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public h(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1597
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 1598
    return-void
.end method

.method public i(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1666
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;Z)V

    .line 1667
    return-void
.end method

.method public j(Landroid/view/View;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1738
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1739
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

    .line 1741
    :cond_28
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1742
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_38

    move v0, v1

    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public k(Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 1771
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1772
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

    .line 1774
    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_38

    const/4 v0, 0x1

    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 1016
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    .line 1018
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1010
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1011
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    .line 1012
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1346
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1347
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->G:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_24

    .line 1348
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1349
    if-lez v0, :cond_24

    .line 1350
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1351
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1354
    :cond_24
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1441
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1444
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    .line 1445
    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1449
    packed-switch v0, :pswitch_data_70

    :cond_16
    :goto_16
    move v0, v2

    .line 1483
    :goto_17
    if-nez v3, :cond_25

    if-nez v0, :cond_25

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->i()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    if-eqz v0, :cond_26

    :cond_25
    move v2, v1

    :cond_26
    return v2

    .line 1451
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1453
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:F

    .line 1454
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->z:F

    .line 1455
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6d

    .line 1456
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/ViewDragHelper;->d(II)Landroid/view/View;

    move-result-object v0

    .line 1457
    if-eqz v0, :cond_6d

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6d

    move v0, v1

    .line 1461
    :goto_4b
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1462
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    goto :goto_17

    .line 1468
    :pswitch_50
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/ViewDragHelper;->d(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1469
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a()V

    .line 1470
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a()V

    move v0, v2

    goto :goto_17

    .line 1477
    :pswitch_65
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1478
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1479
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    goto :goto_16

    :cond_6d
    move v0, v2

    goto :goto_4b

    .line 1449
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
    .line 1895
    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1896
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1897
    const/4 v0, 0x1

    .line 1899
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
    .line 1904
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    .line 1905
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->k()Landroid/view/View;

    move-result-object v0

    .line 1906
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_12

    .line 1907
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->b()V

    .line 1909
    :cond_12
    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 1911
    :goto_15
    return v0

    .line 1909
    :cond_16
    const/4 v0, 0x0

    goto :goto_15

    .line 1911
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method protected onLayout(ZIIII)V
    .registers 20

    .prologue
    .line 1184
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 1185
    sub-int v6, p4, p2

    .line 1186
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    .line 1187
    const/4 v0, 0x0

    move v5, v0

    :goto_b
    if-ge v5, v7, :cond_d4

    .line 1188
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1190
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1d

    .line 1187
    :cond_19
    :goto_19
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_b

    .line 1194
    :cond_1d
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1196
    invoke-virtual {p0, v8}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1197
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 1198
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1199
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 1197
    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_19

    .line 1201
    :cond_3f
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1202
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1206
    const/4 v1, 0x3

    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1207
    neg-int v1, v9

    int-to-float v2, v9

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    .line 1208
    add-int v1, v9, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    .line 1214
    :goto_5c
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v3

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_9d

    const/4 v3, 0x1

    .line 1216
    :goto_65
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    and-int/lit8 v4, v4, 0x70

    .line 1218
    sparse-switch v4, :sswitch_data_dc

    .line 1221
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1252
    :goto_75
    if-eqz v3, :cond_7a

    .line 1253
    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;F)V

    .line 1256
    :cond_7a
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d2

    const/4 v0, 0x0

    .line 1257
    :goto_84
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_19

    .line 1258
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 1210
    :cond_8e
    int-to-float v1, v9

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v2, v6, v1

    .line 1211
    sub-int v1, v6, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    goto :goto_5c

    .line 1214
    :cond_9d
    const/4 v3, 0x0

    goto :goto_65

    .line 1227
    :sswitch_9f
    sub-int v4, p5, p3

    .line 1228
    iget v10, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v10, v4, v10

    .line 1229
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v11

    .line 1228
    invoke-virtual {v8, v2, v10, v9, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_75

    .line 1236
    :sswitch_b2
    sub-int v11, p5, p3

    .line 1237
    sub-int v4, v11, v10

    div-int/lit8 v4, v4, 0x2

    .line 1241
    iget v12, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    if-ge v4, v12, :cond_c4

    .line 1242
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1246
    :cond_be
    :goto_be
    add-int/2addr v9, v2

    add-int/2addr v10, v4

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_75

    .line 1243
    :cond_c4
    add-int v12, v4, v10

    iget v13, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v13, v11, v13

    if-le v12, v13, :cond_be

    .line 1244
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v11, v4

    sub-int/2addr v4, v10

    goto :goto_be

    .line 1256
    :cond_d2
    const/4 v0, 0x4

    goto :goto_84

    .line 1262
    :cond_d4
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 1263
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    .line 1264
    return-void

    .line 1218
    nop

    :sswitch_data_dc
    .sparse-switch
        0x10 -> :sswitch_b2
        0x50 -> :sswitch_9f
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 16

    .prologue
    .line 1022
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1023
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1024
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1025
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1027
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_18

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_173

    .line 1028
    :cond_18
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1033
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_55

    .line 1039
    :cond_22
    :goto_22
    const/high16 v2, -0x80000000

    if-ne v3, v2, :cond_5a

    move v2, v1

    move v1, v0

    .line 1051
    :goto_28
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1053
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/lang/Object;

    if-eqz v0, :cond_6a

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->w(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x1

    move v3, v0

    .line 1054
    :goto_37
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v8

    .line 1058
    const/4 v5, 0x0

    .line 1059
    const/4 v4, 0x0

    .line 1060
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    .line 1061
    const/4 v0, 0x0

    move v7, v0

    :goto_43
    if-ge v7, v9, :cond_172

    .line 1062
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1064
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_6d

    .line 1061
    :goto_51
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_43

    .line 1035
    :cond_55
    if-nez v2, :cond_22

    .line 1037
    const/16 v1, 0x12c

    goto :goto_22

    .line 1041
    :cond_5a
    if-nez v3, :cond_173

    .line 1043
    const/16 v0, 0x12c

    move v2, v1

    move v1, v0

    goto :goto_28

    .line 1046
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1053
    :cond_6a
    const/4 v0, 0x0

    move v3, v0

    goto :goto_37

    .line 1068
    :cond_6d
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1070
    if-eqz v3, :cond_88

    .line 1071
    iget v6, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    invoke-static {v6, v8}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v6

    .line 1072
    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->w(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_ad

    .line 1073
    sget-object v11, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v12, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/lang/Object;

    invoke-interface {v11, v10, v12, v6}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->a(Landroid/view/View;Ljava/lang/Object;I)V

    .line 1079
    :cond_88
    :goto_88
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 1081
    iget v6, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int v6, v2, v6

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v11

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1083
    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    sub-int v11, v1, v11

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v11, v0

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1085
    invoke-virtual {v10, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_51

    .line 1075
    :cond_ad
    sget-object v11, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v12, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/lang/Object;

    invoke-interface {v11, v0, v12, v6}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->a(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    goto :goto_88

    .line 1086
    :cond_b5
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_13f

    .line 1087
    sget-boolean v6, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-eqz v6, :cond_ce

    .line 1088
    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->t(Landroid/view/View;)F

    move-result v6

    iget v11, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_ce

    .line 1089
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    invoke-static {v10, v6}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;F)V

    .line 1093
    :cond_ce
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v6

    and-int/lit8 v11, v6, 0x7

    .line 1096
    const/4 v6, 0x3

    if-ne v11, v6, :cond_11a

    const/4 v6, 0x1

    .line 1097
    :goto_d8
    if-eqz v6, :cond_dc

    if-nez v5, :cond_e0

    :cond_dc
    if-nez v6, :cond_11c

    if-eqz v4, :cond_11c

    .line 1099
    :cond_e0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Child drawer has absolute gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1100
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

    .line 1096
    :cond_11a
    const/4 v6, 0x0

    goto :goto_d8

    .line 1103
    :cond_11c
    if-eqz v6, :cond_13d

    .line 1104
    const/4 v5, 0x1

    .line 1108
    :goto_11f
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->g:I

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v11

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v11

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    invoke-static {p1, v6, v11}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 1111
    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v12, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    invoke-static {p2, v11, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1114
    invoke-virtual {v10, v6, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_51

    .line 1106
    :cond_13d
    const/4 v4, 0x1

    goto :goto_11f

    .line 1116
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

    .line 1121
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

    .line 1916
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    if-nez v0, :cond_9

    .line 1917
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1943
    :cond_8
    :goto_8
    return-void

    .line 1921
    :cond_9
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 1922
    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1924
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    if-eqz v0, :cond_21

    .line 1925
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1926
    if-eqz v0, :cond_21

    .line 1927
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    .line 1931
    :cond_21
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    if-eq v0, v2, :cond_2a

    .line 1932
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1934
    :cond_2a
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    if-eq v0, v2, :cond_34

    .line 1935
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1937
    :cond_34
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->d:I

    if-eq v0, v2, :cond_40

    .line 1938
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->d:I

    const v1, 0x800003

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1940
    :cond_40
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->e:I

    if-eq v0, v2, :cond_8

    .line 1941
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->e:I

    const v1, 0x800005

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    goto :goto_8
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    .prologue
    .line 1341
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->f()V

    .line 1342
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1947
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1948
    new-instance v6, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v6, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1950
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    move v5, v3

    .line 1951
    :goto_10
    if-ge v5, v7, :cond_33

    .line 1952
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1953
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1955
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v2, :cond_44

    move v1, v2

    .line 1957
    :goto_23
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_46

    move v4, v2

    .line 1958
    :goto_2b
    if-nez v1, :cond_2f

    if-eqz v4, :cond_48

    .line 1961
    :cond_2f
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    .line 1966
    :cond_33
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    .line 1967
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    .line 1968
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->d:I

    .line 1969
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->e:I

    .line 1971
    return-object v6

    :cond_44
    move v1, v3

    .line 1955
    goto :goto_23

    :cond_46
    move v4, v3

    .line 1957
    goto :goto_2b

    .line 1951
    :cond_48
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1488
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->b(Landroid/view/MotionEvent;)V

    .line 1489
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->b(Landroid/view/MotionEvent;)V

    .line 1491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1494
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_76

    .line 1535
    :goto_15
    :pswitch_15
    return v1

    .line 1496
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1498
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:F

    .line 1499
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->z:F

    .line 1500
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1501
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    goto :goto_15

    .line 1506
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1509
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v5, v0

    float-to-int v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->d(II)Landroid/view/View;

    move-result-object v4

    .line 1510
    if-eqz v4, :cond_73

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1511
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->y:F

    sub-float/2addr v0, v4

    .line 1512
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->z:F

    sub-float/2addr v3, v4

    .line 1513
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->d()I

    move-result v4

    .line 1514
    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v0, v3

    mul-int v3, v4, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_73

    .line 1516
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    .line 1517
    if-eqz v0, :cond_73

    .line 1518
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_69

    move v0, v1

    .line 1522
    :goto_63
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1523
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    goto :goto_15

    :cond_69
    move v0, v2

    .line 1518
    goto :goto_63

    .line 1528
    :pswitch_6b
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1529
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1530
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    goto :goto_15

    :cond_73
    move v0, v1

    goto :goto_63

    .line 1494
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
    .line 1544
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1546
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1547
    if-eqz p1, :cond_b

    .line 1548
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1550
    :cond_b
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1268
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    if-nez v0, :cond_7

    .line 1269
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1271
    :cond_7
    return-void
.end method

.method public setDrawerElevation(F)V
    .registers 5

    .prologue
    .line 420
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    .line 421
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 422
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 423
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 424
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;F)V

    .line 421
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 427
    :cond_1b
    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 3

    .prologue
    .line 596
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 597
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 598
    return-void
.end method

.method public setDrawerLockMode(II)V
    .registers 5

    .prologue
    .line 620
    .line 621
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v0

    .line 620
    invoke-static {p2, v0}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v1

    .line 623
    sparse-switch p2, :sswitch_data_3c

    .line 638
    :goto_b
    if-eqz p1, :cond_15

    .line 640
    const/4 v0, 0x3

    if-ne v1, v0, :cond_25

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ViewDragHelper;

    .line 641
    :goto_12
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->e()V

    .line 643
    :cond_15
    packed-switch p1, :pswitch_data_4e

    .line 658
    :cond_18
    :goto_18
    return-void

    .line 625
    :sswitch_19
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    goto :goto_b

    .line 628
    :sswitch_1c
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    goto :goto_b

    .line 631
    :sswitch_1f
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    goto :goto_b

    .line 634
    :sswitch_22
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    goto :goto_b

    .line 640
    :cond_25
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_12

    .line 645
    :pswitch_28
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_18

    .line 647
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    goto :goto_18

    .line 651
    :pswitch_32
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_18

    .line 653
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    goto :goto_18

    .line 623
    :sswitch_data_3c
    .sparse-switch
        0x3 -> :sswitch_19
        0x5 -> :sswitch_1c
        0x800003 -> :sswitch_1f
        0x800005 -> :sswitch_22
    .end sparse-switch

    .line 643
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_32
        :pswitch_28
    .end packed-switch
.end method

.method public setDrawerShadow(II)V
    .registers 4

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 510
    return-void
.end method

.method public setScrimColor(I)V
    .registers 2

    .prologue
    .line 518
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->h:I

    .line 519
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 520
    return-void
.end method

.method public setStatusBarBackground(I)V
    .registers 3

    .prologue
    .line 1324
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    .line 1325
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1326
    return-void

    .line 1324
    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3

    .prologue
    .line 1336
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    .line 1337
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1338
    return-void
.end method
