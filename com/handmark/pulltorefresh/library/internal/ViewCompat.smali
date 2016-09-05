.class public Lcom/handmark/pulltorefresh/library/internal/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# direct methods
.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 37
    invoke-static {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$SDK16;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 41
    :goto_9
    return-void

    .line 39
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 29
    invoke-static {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$SDK16;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 33
    :goto_9
    return-void

    .line 31
    :cond_a
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method
