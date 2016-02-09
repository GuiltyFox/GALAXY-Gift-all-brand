.class public Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "CategoryFragmentDynamicAdapter.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mFragmentTags:[Ljava/lang/String;

.field public mListCats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/CampaignCategoryDynamic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/CampaignCategoryDynamic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "pListCats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/CampaignCategoryDynamic;>;"
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 28
    const-class v1, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->TAG:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mListCats:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mContext:Landroid/content/Context;

    .line 39
    iget-object v1, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mListCats:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    iget-object v3, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0a02b5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mListCats:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    iget-object v3, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0a02b6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    if-eqz p3, :cond_43

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4e

    .line 48
    .end local v0    # "i":I
    :cond_43
    iget-object v1, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mListCats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mFragmentTags:[Ljava/lang/String;

    .line 49
    return-void

    .line 43
    .restart local v0    # "i":I
    :cond_4e
    iget-object v2, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mListCats:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 138
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mListCats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFragmentTag(I)Ljava/lang/String;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mFragmentTags:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 10
    .param p1, "position"    # I

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-nez p1, :cond_48

    .line 55
    new-instance v2, Lcom/samsung/privilege/activity/MainMenuFragment;

    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;-><init>()V

    .line 76
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "category_code"

    iget-object v5, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mListCats:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    iget v5, v5, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->cat:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v6, "category_name"

    iget-object v5, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mListCats:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    iget-object v5, v5, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->name_en:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v4, ""

    .line 86
    .local v4, "strCATEGORY_TITLES":Ljava/lang/String;
    :try_start_35
    iget-object v5, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mListCats:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    iget-object v4, v5, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3f} :catch_96

    .line 90
    :goto_3f
    const-string v5, "category_title"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-object v2

    .line 56
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "strCATEGORY_TITLES":Ljava/lang/String;
    :cond_48
    const/4 v5, 0x1

    if-ne p1, v5, :cond_51

    .line 58
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew;

    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;-><init>()V

    .line 59
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_8

    .line 60
    :cond_51
    iget-object v5, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 62
    iget-object v5, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mListCats:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    .line 63
    .local v3, "objCat":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    iget v5, v3, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->cat:I

    sget v6, Lcom/samsung/privilege/AppSetting;->CAT_SHOPPING_THAI:I

    if-ne v5, v6, :cond_6a

    .line 64
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew;

    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;-><init>()V

    .line 65
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_8

    :cond_6a
    iget v5, v3, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->cat:I

    sget v6, Lcom/samsung/privilege/AppSetting;->CAT_PRIMETIME_THAI:I

    if-ne v5, v6, :cond_76

    .line 66
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew;

    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;-><init>()V

    .line 67
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_8

    :cond_76
    iget v5, v3, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->cat:I

    sget v6, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    if-ne v5, v6, :cond_82

    .line 68
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew;

    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;-><init>()V

    .line 69
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_8

    :cond_82
    iget v5, v3, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->cat:I

    sget v6, Lcom/samsung/privilege/AppSetting;->CAT_SPARE_THAI:I

    if-ne v5, v6, :cond_8f

    .line 70
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew;

    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;-><init>()V

    .line 71
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_8

    .line 72
    :cond_8f
    new-instance v2, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;-><init>()V

    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_8

    .line 87
    .end local v3    # "objCat":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "strCATEGORY_TITLES":Ljava/lang/String;
    :catch_96
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getItem|Exception := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 128
    const/4 v0, -0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 116
    const-string v1, ""

    .line 119
    .local v1, "strCATEGORY_TITLES":Ljava/lang/CharSequence;
    :try_start_2
    iget-object v2, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mListCats:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    iget-object v1, v2, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    .line 123
    :goto_c
    return-object v1

    .line 120
    :catch_d
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPageTitle|Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 104
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mFragmentTags:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    .line 105
    return-object v0
.end method
