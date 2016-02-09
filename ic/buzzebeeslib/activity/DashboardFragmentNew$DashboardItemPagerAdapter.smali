.class public Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/DashboardFragmentNew;
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
            "Lic/buzzebeeslib/bean/DashboardItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

.field viewDashboardItem:Landroid/view/View;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/DashboardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1319
    .local p3, "pListDashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/DashboardItem;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1320
    iput-object p2, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->context:Landroid/content/Context;

    .line 1321
    iput-object p3, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->listDashboardItems:Ljava/util/ArrayList;

    .line 1322
    invoke-virtual {p1}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 1323
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1352
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1327
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->listDashboardItems:Ljava/util/ArrayList;

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

    .line 1337
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->listDashboardItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/DashboardItem;

    .line 1339
    .local v1, "objDashboardItem":Lic/buzzebeeslib/bean/DashboardItem;
    iget-object v0, v1, Lic/buzzebeeslib/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1340
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    move-object v2, p1

    move v4, v3

    move v5, v3

    # invokes: Lic/buzzebeeslib/activity/DashboardFragmentNew;->InitialDashboardItemMedium(Lic/buzzebeeslib/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    invoke-static/range {v0 .. v5}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->access$2(Lic/buzzebeeslib/activity/DashboardFragmentNew;Lic/buzzebeeslib/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->viewDashboardItem:Landroid/view/View;

    .line 1345
    :goto_22
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->viewDashboardItem:Landroid/view/View;

    invoke-virtual {p1, v0, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 1346
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->viewDashboardItem:Landroid/view/View;

    return-object v0

    .line 1342
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_2c
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    move-object v2, p1

    move v4, v3

    move v5, v3

    # invokes: Lic/buzzebeeslib/activity/DashboardFragmentNew;->InitialDashboardItemBig(Lic/buzzebeeslib/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    invoke-static/range {v0 .. v5}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->access$3(Lic/buzzebeeslib/activity/DashboardFragmentNew;Lic/buzzebeeslib/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;->viewDashboardItem:Landroid/view/View;

    goto :goto_22
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1332
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
