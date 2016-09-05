.class Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SmartTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V
    .registers 2

    .prologue
    .line 559
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V
    .registers 3

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 3

    .prologue
    .line 593
    iput p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->b:I

    .line 595
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 596
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 598
    :cond_13
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 7

    .prologue
    .line 565
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v0

    .line 566
    if-eqz v0, :cond_e

    if-ltz p1, :cond_e

    if-lt p1, v0, :cond_f

    .line 589
    :cond_e
    :goto_e
    return-void

    .line 570
    :cond_f
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1, p2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a(IF)V

    .line 572
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 573
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->j(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    .line 574
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 576
    const/4 v1, 0x0

    cmpg-float v1, v1, p2

    if-gez v1, :cond_6e

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_6e

    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v1, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 577
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v1, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 579
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->b(Landroid/view/View;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->i(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 580
    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->b(Landroid/view/View;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->h(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v2

    .line 581
    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 584
    :cond_6e
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v1, p1, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;II)V

    .line 586
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 587
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_e
.end method

.method public onPageSelected(I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 602
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->b:I

    if-nez v0, :cond_12

    .line 603
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a(IF)V

    .line 604
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0, p1, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;II)V

    .line 607
    :cond_12
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_1b
    if-ge v2, v3, :cond_31

    .line 608
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne p1, v2, :cond_2f

    const/4 v0, 0x1

    :goto_28
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 607
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_2f
    move v0, v1

    .line 608
    goto :goto_28

    .line 611
    :cond_31
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 612
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 614
    :cond_42
    return-void
.end method
