.class public Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MarketPlaceMenuAdapterPager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
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
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 25
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->a:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->b:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .registers 7

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_92

    .line 40
    new-instance v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-direct {v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;-><init>()V

    .line 41
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string/jumbo v3, "catId"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v3, "catName"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_en()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v3, "configName"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getList_config()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->setArguments(Landroid/os/Bundle;)V

    move-object v0, v1

    .line 46
    :goto_83
    return-object v0

    .line 35
    :pswitch_84
    new-instance v0, Lcom/bzbs/marketplace/fragment/DashboardFragment;

    invoke-direct {v0}, Lcom/bzbs/marketplace/fragment/DashboardFragment;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_83

    .line 33
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_84
    .end packed-switch
.end method

.method public b()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public c(I)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_11

    .line 60
    const-string/jumbo v0, ""

    .line 63
    :cond_11
    return-object v0
.end method
