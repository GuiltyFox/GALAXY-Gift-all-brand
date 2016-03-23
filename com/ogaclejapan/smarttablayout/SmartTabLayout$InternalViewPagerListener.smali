.class Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SmartTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private scrollState:I

.field final synthetic this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;


# direct methods
.method private constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V
    .registers 2

    .prologue
    .line 559
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
    .param p2, "x1"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 593
    iput p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->scrollState:I

    .line 595
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    # getter for: Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 596
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    # getter for: Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 598
    :cond_13
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 565
    iget-object v8, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v8, v8, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v8}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v6

    .line 566
    .local v6, "tabStripChildCount":I
    if-eqz v6, :cond_e

    if-ltz p1, :cond_e

    if-lt p1, v6, :cond_f

    .line 589
    :cond_e
    :goto_e
    return-void

    .line 570
    :cond_f
    iget-object v8, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v8, v8, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v8, p1, p2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->onViewPagerPageChanged(IF)V

    .line 572
    iget-object v8, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v8, v8, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v8, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 573
    .local v5, "selectedTab":Landroid/view/View;
    invoke-static {v5}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v8

    invoke-static {v5}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginHorizontally(Landroid/view/View;)I

    move-result v9

    add-int v7, v8, v9

    .line 574
    .local v7, "widthPlusMargin":I
    int-to-float v8, v7

    mul-float/2addr v8, p2

    float-to-int v2, v8

    .line 576
    .local v2, "extraOffset":I
    const/4 v8, 0x0

    cmpg-float v8, v8, p2

    if-gez v8, :cond_72

    const/high16 v8, 0x3f800000

    cmpg-float v8, p2, v8

    if-gez v8, :cond_72

    iget-object v8, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v8, v8, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v8}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->isIndicatorAlwaysInCenter()Z

    move-result v8

    if-eqz v8, :cond_72

    .line 577
    iget-object v8, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v8, v8, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v8, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 578
    .local v1, "currentTab":Landroid/view/View;
    iget-object v8, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v8, v8, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 579
    .local v4, "nextTab":Landroid/view/View;
    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginEnd(Landroid/view/View;)I

    move-result v9

    add-int v0, v8, v9

    .line 580
    .local v0, "current":I
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginStart(Landroid/view/View;)I

    move-result v9

    add-int v3, v8, v9

    .line 581
    .local v3, "next":I
    add-int v8, v0, v3

    int-to-float v8, v8

    mul-float/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 584
    .end local v0    # "current":I
    .end local v1    # "currentTab":Landroid/view/View;
    .end local v3    # "next":I
    .end local v4    # "nextTab":Landroid/view/View;
    :cond_72
    iget-object v8, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    # invokes: Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollToTab(II)V
    invoke-static {v8, p1, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$300(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;II)V

    .line 586
    iget-object v8, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    # getter for: Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v8}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 587
    iget-object v8, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    # getter for: Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v8}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v8

    invoke-interface {v8, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_e
.end method

.method public onPageSelected(I)V
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 602
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->scrollState:I

    if-nez v2, :cond_12

    .line 603
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v2, v2, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->onViewPagerPageChanged(IF)V

    .line 604
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    # invokes: Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollToTab(II)V
    invoke-static {v2, p1, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$300(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;II)V

    .line 607
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v2, v2, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v1

    .local v1, "size":I
    :goto_1b
    if-ge v0, v1, :cond_30

    .line 608
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v2, v2, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v2, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne p1, v0, :cond_2e

    const/4 v2, 0x1

    :goto_28
    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2e
    move v2, v3

    .line 608
    goto :goto_28

    .line 611
    :cond_30
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    # getter for: Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 612
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    # getter for: Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 614
    :cond_41
    return-void
.end method
