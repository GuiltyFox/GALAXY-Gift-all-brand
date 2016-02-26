.class public Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FriendsFragmentAdapter.java"


# static fields
.field protected static final CATEGORY_CODES:[Ljava/lang/String;

.field protected static final CATEGORY_TITLES:[I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mFragmentTags:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-array v0, v3, [I

    const v1, 0x7f0902c1

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->CATEGORY_TITLES:[I

    .line 18
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "friends"

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->CATEGORY_CODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 25
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 21
    const-class v0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->TAG:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->mContext:Landroid/content/Context;

    .line 29
    sget-object v0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->CATEGORY_TITLES:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->mFragmentTags:[Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 90
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->CATEGORY_TITLES:[I

    array-length v0, v0

    return v0
.end method

.method public getFragmentTag(I)Ljava/lang/String;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->mFragmentTags:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 9
    .param p1, "position"    # I

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-nez p1, :cond_8

    .line 36
    new-instance v2, Lcom/samsung/privilege/activity/FriendsRankingFragment;

    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment;-><init>()V

    .line 39
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "category_code"

    sget-object v5, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->CATEGORY_CODES:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, ""

    .line 44
    .local v3, "strCATEGORY_TITLES":Ljava/lang/String;
    :try_start_18
    iget-object v4, p0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->CATEGORY_TITLES:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_2b

    move-result-object v3

    .line 49
    :goto_22
    const-string v4, "category_title"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v2

    .line 45
    :catch_2b
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getItem|strCATEGORY_TITLES := "

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

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 74
    const-string v1, ""

    .line 76
    .local v1, "strCATEGORY_TITLES":Ljava/lang/CharSequence;
    :try_start_2
    iget-object v2, p0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->CATEGORY_TITLES:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result-object v1

    .line 80
    :goto_c
    return-object v1

    .line 77
    :catch_d
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->TAG:Ljava/lang/String;

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
    .line 62
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 63
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/samsung/privilege/activity/pager/FriendsFragmentAdapter;->mFragmentTags:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    .line 64
    return-object v0
.end method
