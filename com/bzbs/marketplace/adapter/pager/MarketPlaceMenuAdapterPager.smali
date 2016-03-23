.class public Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MarketPlaceMenuAdapterPager.java"


# instance fields
.field private context:Landroid/content/Context;

.field private listData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "listData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;>;"
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 25
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->context:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->listData:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->listData:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_92

    .line 40
    new-instance v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-direct {v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;-><init>()V

    .line 41
    .local v1, "fm":Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "catId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->listData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v4, "catName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->listData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_en()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v4, "configName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->listData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getList_config()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->setArguments(Landroid/os/Bundle;)V

    move-object v2, v1

    .line 46
    .end local v1    # "fm":Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;
    :goto_83
    return-object v2

    .line 35
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_84
    new-instance v2, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    invoke-direct {v2}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;-><init>()V

    .line 36
    .local v2, "fm01":Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_83

    .line 33
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_84
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->listData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "charecter":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 60
    const-string/jumbo v0, ""

    .line 63
    :cond_11
    return-object v0
.end method
