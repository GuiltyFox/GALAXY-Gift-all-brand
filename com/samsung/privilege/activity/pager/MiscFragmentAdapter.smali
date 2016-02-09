.class public Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MiscFragmentAdapter.java"


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

    const v1, 0x7f0a02c3

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->CATEGORY_TITLES:[I

    .line 18
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "inapps"

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->CATEGORY_CODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 26
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 23
    const-class v0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->TAG:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->mContext:Landroid/content/Context;

    .line 30
    sget-object v0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->CATEGORY_TITLES:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->mFragmentTags:[Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 91
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 70
    sget-object v0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->CATEGORY_TITLES:[I

    array-length v0, v0

    return v0
.end method

.method public getFragmentTag(I)Ljava/lang/String;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->mFragmentTags:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 9
    .param p1, "position"    # I

    .prologue
    .line 35
    const/4 v2, 0x0

    .line 36
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-nez p1, :cond_8

    .line 37
    new-instance v2, Lcom/samsung/privilege/activity/InAppsFragment;

    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v2}, Lcom/samsung/privilege/activity/InAppsFragment;-><init>()V

    .line 40
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "category_code"

    sget-object v5, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->CATEGORY_CODES:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v3, ""

    .line 45
    .local v3, "strCATEGORY_TITLES":Ljava/lang/String;
    :try_start_18
    iget-object v4, p0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->CATEGORY_TITLES:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_2b

    move-result-object v3

    .line 50
    :goto_22
    const-string v4, "category_title"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v2

    .line 46
    :catch_2b
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->TAG:Ljava/lang/String;

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

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 75
    const-string v1, ""

    .line 77
    .local v1, "strCATEGORY_TITLES":Ljava/lang/CharSequence;
    :try_start_2
    iget-object v2, p0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->CATEGORY_TITLES:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result-object v1

    .line 81
    :goto_c
    return-object v1

    .line 78
    :catch_d
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->TAG:Ljava/lang/String;

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
    .line 63
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 64
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/samsung/privilege/activity/pager/MiscFragmentAdapter;->mFragmentTags:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    .line 65
    return-object v0
.end method
