.class public Lcom/bzbs/lib/survey/control/RelativeLayoutMenu;
.super Landroid/widget/RelativeLayout;
.source "RelativeLayoutMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_16

    .line 33
    const/16 v0, 0xff

    invoke-static {v1, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/RelativeLayoutMenu;->setBackgroundColor(I)V

    .line 51
    :cond_11
    :goto_11
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 35
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 38
    invoke-virtual {p0, v2}, Lcom/bzbs/lib/survey/control/RelativeLayoutMenu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    .line 40
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 43
    invoke-virtual {p0, v2}, Lcom/bzbs/lib/survey/control/RelativeLayoutMenu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    .line 45
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 48
    invoke-virtual {p0, v2}, Lcom/bzbs/lib/survey/control/RelativeLayoutMenu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11
.end method
