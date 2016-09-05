.class Landroid/support/v4/widget/CompoundButtonCompatLollipop;
.super Ljava/lang/Object;
.source "CompoundButtonCompatLollipop.java"


# direct methods
.method static a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 27
    return-void
.end method

.method static a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 35
    return-void
.end method
