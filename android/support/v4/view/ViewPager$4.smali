.class Landroid/support/v4/view/ViewPager$4;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewPager;->a()V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .registers 3

    .prologue
    .line 430
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$4;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager$4;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 10

    .prologue
    .line 437
    .line 438
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->e()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 473
    :goto_a
    return-object v0

    .line 451
    :cond_b
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$4;->b:Landroid/graphics/Rect;

    .line 452
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->a()I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 453
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->b()I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 454
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->c()I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 455
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->d()I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 457
    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager$4;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    :goto_2c
    if-ge v1, v3, :cond_6b

    .line 458
    iget-object v4, p0, Landroid/support/v4/view/ViewPager$4;->a:Landroid/support/v4/view/ViewPager;

    .line 459
    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v4

    .line 462
    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->a()I

    move-result v5

    iget v6, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 464
    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->b()I

    move-result v5

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 466
    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->c()I

    move-result v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 468
    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->d()I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 473
    :cond_6b
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/support/v4/view/WindowInsetsCompat;->a(IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    goto :goto_a
.end method
