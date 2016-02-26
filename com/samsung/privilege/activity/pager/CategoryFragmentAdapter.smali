.class public Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "CategoryFragmentAdapter.java"


# static fields
.field protected static final CATEGORY_CODES:[Ljava/lang/String;

.field protected static final CATEGORY_TITLES:[I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mFragmentTags:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v1, 0xa

    .line 18
    new-array v0, v1, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->CATEGORY_TITLES:[I

    .line 20
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "menu"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "news"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "restuarant"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "desserts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "beauty"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "music_entertainment"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "travel"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "etc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "all"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "nearby"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->CATEGORY_CODES:[Ljava/lang/String;

    return-void

    .line 18
    :array_42
    .array-data 4
        0x7f0902b5
        0x7f0902b6
        0x7f0902b7
        0x7f0902b8
        0x7f0902b9
        0x7f0902ba
        0x7f0902bb
        0x7f0902bc
        0x7f0902bd
        0x7f0902be
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 29
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 24
    const-class v0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->TAG:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->mContext:Landroid/content/Context;

    .line 33
    sget-object v0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->CATEGORY_TITLES:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->mFragmentTags:[Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 77
    sget-object v0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->CATEGORY_TITLES:[I

    array-length v0, v0

    return v0
.end method

.method public getFragmentTag(I)Ljava/lang/String;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->mFragmentTags:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 9
    .param p1, "position"    # I

    .prologue
    .line 38
    const/4 v2, 0x0

    .line 39
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-nez p1, :cond_2b

    .line 40
    new-instance v2, Lcom/samsung/privilege/activity/MainMenuFragment;

    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;-><init>()V

    .line 48
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "category_code"

    sget-object v5, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->CATEGORY_CODES:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, ""

    .line 53
    .local v3, "strCATEGORY_TITLES":Ljava/lang/String;
    :try_start_18
    iget-object v4, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->CATEGORY_TITLES:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_3a

    move-result-object v3

    .line 57
    :goto_22
    const-string v4, "category_title"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v2

    .line 41
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "strCATEGORY_TITLES":Ljava/lang/String;
    :cond_2b
    const/4 v4, 0x1

    if-ne p1, v4, :cond_34

    .line 43
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew;

    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;-><init>()V

    .line 44
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_8

    .line 45
    :cond_34
    new-instance v2, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;-><init>()V

    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_8

    .line 54
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "strCATEGORY_TITLES":Ljava/lang/String;
    :catch_3a
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getItem|Exception := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 93
    const/4 v0, -0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 82
    const-string v1, ""

    .line 84
    .local v1, "strCATEGORY_TITLES":Ljava/lang/CharSequence;
    :try_start_2
    iget-object v2, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->CATEGORY_TITLES:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result-object v1

    .line 88
    :goto_c
    return-object v1

    .line 85
    :catch_d
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->TAG:Ljava/lang/String;

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
    .line 70
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 71
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/samsung/privilege/activity/pager/CategoryFragmentAdapter;->mFragmentTags:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    .line 72
    return-object v0
.end method
