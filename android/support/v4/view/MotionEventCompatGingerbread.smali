.class Landroid/support/v4/view/MotionEventCompatGingerbread;
.super Ljava/lang/Object;
.source "MotionEventCompatGingerbread.java"


# direct methods
.method public static a(Landroid/view/MotionEvent;)I
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    return v0
.end method
