.class public Lcom/samsung/privilege/control/WrapContentHeightViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "WrapContentHeightViewPager.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/samsung/privilege/control/WrapContentHeightViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/control/WrapContentHeightViewPager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 23
    move v0, v1

    move v2, v1

    .line 24
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/privilege/control/WrapContentHeightViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1e

    .line 25
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/WrapContentHeightViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 26
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->measure(II)V

    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 28
    if-le v3, v2, :cond_1b

    move v2, v3

    .line 24
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 31
    :cond_1e
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 33
    invoke-super {p0, p1, v0}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 34
    return-void
.end method
