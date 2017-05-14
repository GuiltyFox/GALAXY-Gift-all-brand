.class Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;
.super Landroid/support/v7/widget/ContentFrameLayout;
.source "AppCompatDelegateImplV9.java"


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 2093
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    .line 2094
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2095
    return-void
.end method

.method private a(II)Z
    .registers 4

    .prologue
    const/4 v0, -0x5

    .line 2123
    if-lt p1, v0, :cond_15

    if-lt p2, v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .prologue
    .line 2099
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2100
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 2105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2106
    if-nez v0, :cond_1e

    .line 2107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2109
    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2110
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->d(Landroid/support/v7/app/AppCompatDelegateImplV9;I)V

    .line 2111
    const/4 v0, 0x1

    .line 2114
    :goto_1d
    return v0

    :cond_1e
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1d
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .prologue
    .line 2119
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2120
    return-void
.end method
