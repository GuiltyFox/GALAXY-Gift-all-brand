.class public Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DashboardItemPagerAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field inflater:Landroid/view/LayoutInflater;

.field listDashboardItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/DashboardItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

.field viewDashboardItem:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/DashboardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2718
    .local p3, "pListDashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/DashboardItem;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 2719
    iput-object p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->context:Landroid/content/Context;

    .line 2720
    iput-object p3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->listDashboardItems:Ljava/util/ArrayList;

    .line 2721
    invoke-virtual {p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 2722
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 2759
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->listDashboardItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 9
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 2736
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->listDashboardItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/DashboardItem;

    .line 2738
    .local v1, "objDashboardItem":Lcom/samsung/privilege/bean/DashboardItem;
    iget-object v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2739
    iget-boolean v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem:Z

    if-eqz v0, :cond_30

    .line 2740
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-object v2, p1

    move v4, v3

    move v5, v3

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMediumAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$13(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->viewDashboardItem:Landroid/view/View;

    .line 2752
    :goto_26
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->viewDashboardItem:Landroid/view/View;

    invoke-virtual {p1, v0, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 2753
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->viewDashboardItem:Landroid/view/View;

    return-object v0

    .line 2742
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_30
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-object v2, p1

    move v4, v3

    move v5, v3

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemMedium(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$14(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->viewDashboardItem:Landroid/view/View;

    goto :goto_26

    .line 2745
    :cond_3c
    iget-boolean v0, v1, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem:Z

    if-eqz v0, :cond_4c

    .line 2746
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-object v2, p1

    move v4, v3

    move v5, v3

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBigAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$15(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->viewDashboardItem:Landroid/view/View;

    goto :goto_26

    .line 2748
    :cond_4c
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-object v2, p1

    move v4, v3

    move v5, v3

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBig(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$16(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->viewDashboardItem:Landroid/view/View;

    goto :goto_26
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 2731
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
