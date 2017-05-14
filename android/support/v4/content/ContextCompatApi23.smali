.class Landroid/support/v4/content/ContextCompatApi23;
.super Ljava/lang/Object;
.source "ContextCompatApi23.java"


# direct methods
.method public static a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 3

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)I
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0
.end method
