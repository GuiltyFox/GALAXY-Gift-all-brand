.class public Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DashboardImagePagerAdapter.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bzbs/marketplace/model/dashboard/DashboardModel;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->a:Landroid/app/Activity;

    .line 41
    invoke-direct {p0, p2}, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->a(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->c:Ljava/util/ArrayList;

    .line 42
    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bzbs/marketplace/model/dashboard/DashboardModel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v3, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-direct {v3}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;-><init>()V

    .line 113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    const-string/jumbo v1, "["

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    move v0, v2

    .line 116
    :goto_18
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSubcampaigndetails()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_6c

    .line 117
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSubcampaigndetails()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v3, v1}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->setListDashboard(Ljava/util/List;)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 123
    :cond_6c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9e

    .line 124
    invoke-virtual {v3, v1}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->setListDashboard(Ljava/util/List;)V

    .line 125
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_81
    const-string/jumbo v0, "]"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    :goto_8c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_ca

    .line 134
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    .line 127
    :cond_9e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 137
    :cond_ca
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$2;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$2;-><init>(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;)V

    .line 138
    invoke-virtual {v2}, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$2;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->c:Ljava/util/ArrayList;

    .line 140
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v0, p2, v0

    .line 48
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    .line 49
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->a:Landroid/app/Activity;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 50
    const v1, 0x7f040137

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 51
    new-instance v3, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;

    invoke-direct {v3, p0, v5}, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;-><init>(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;Landroid/view/View;)V

    .line 53
    iget-object v6, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->a:Landroid/app/Activity;

    new-instance v0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;-><init>(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;Lcom/bzbs/marketplace/model/dashboard/DashboardModel;Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    return-object v5
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 96
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 107
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public b()I
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method
