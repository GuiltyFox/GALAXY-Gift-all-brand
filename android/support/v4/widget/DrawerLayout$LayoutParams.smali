.class public Landroid/support/v4/widget/DrawerLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "DrawerLayout.java"


# instance fields
.field public a:I

.field private b:F

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 2242
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2228
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 2243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2234
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2228
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 2236
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->d()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2237
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 2238
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2239
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V
    .registers 3

    .prologue
    .line 2251
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2228
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 2252
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 2253
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 2256
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2228
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 2257
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3

    .prologue
    .line 2260
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2228
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 2261
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F
    .registers 2

    .prologue
    .line 2223
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    return v0
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F
    .registers 2

    .prologue
    .line 2223
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    return p1
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I
    .registers 2

    .prologue
    .line 2223
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    return p1
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;Z)Z
    .registers 2

    .prologue
    .line 2223
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I
    .registers 2

    .prologue
    .line 2223
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    return v0
.end method

.method static synthetic c(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Z
    .registers 2

    .prologue
    .line 2223
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c:Z

    return v0
.end method
