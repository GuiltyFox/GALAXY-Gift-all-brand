.class Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;
.super Ljava/lang/Object;
.source "SmartTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;


# direct methods
.method private constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V
    .registers 2

    .prologue
    .line 618
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V
    .registers 3

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 621
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v1, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 622
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v1, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v1, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_30

    .line 623
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->b(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 624
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->b(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;->a(I)V

    .line 626
    :cond_26
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;->a:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->c(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 630
    :cond_2f
    return-void

    .line 621
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
