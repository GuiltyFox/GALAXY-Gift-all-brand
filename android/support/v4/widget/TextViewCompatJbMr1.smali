.class Landroid/support/v4/widget/TextViewCompatJbMr1;
.super Ljava/lang/Object;
.source "TextViewCompatJbMr1.java"


# direct methods
.method public static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_11

    move v1, v0

    .line 31
    :goto_8
    if-eqz v1, :cond_14

    move-object v0, p3

    :goto_b
    if-eqz v1, :cond_16

    :goto_d
    invoke-virtual {p0, v0, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 32
    return-void

    .line 30
    :cond_11
    const/4 v0, 0x0

    move v1, v0

    goto :goto_8

    :cond_14
    move-object v0, p1

    .line 31
    goto :goto_b

    :cond_16
    move-object p1, p3

    goto :goto_d
.end method

.method static a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
