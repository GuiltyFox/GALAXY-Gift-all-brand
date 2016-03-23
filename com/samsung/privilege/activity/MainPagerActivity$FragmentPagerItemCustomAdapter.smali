.class Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MainPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentPagerItemCustomAdapter"
.end annotation


# instance fields
.field private final holder:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private listCats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/CampaignCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final pages:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/support/v4/app/FragmentManager;Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "pages"    # Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/CampaignCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2335
    .local p4, "listCats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/CampaignCategory;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    .line 2336
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 2337
    iput-object p3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->pages:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    .line 2338
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p3}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->holder:Landroid/support/v4/util/SparseArrayCompat;

    .line 2339
    iput-object p4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->listCats:Ljava/util/ArrayList;

    .line 2340
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->holder:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 2412
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 2413
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->pages:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    if-eqz v0, :cond_b

    .line 2349
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->pages:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->size()I

    move-result v0

    .line 2351
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 2357
    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->getPagerItem(I)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->pages:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    invoke-virtual {v4}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;->instantiate(Landroid/content/Context;I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 2359
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2360
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->listCats:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/bean/CampaignCategory;

    .line 2382
    .local v2, "objCat":Lcom/bzbs/bean/CampaignCategory;
    iget-object v3, v2, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    if-eqz v3, :cond_7c

    iget-object v3, v2, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 2383
    const-string/jumbo v4, "header_en"

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->listCats:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/bean/CampaignCategory;

    iget-object v3, v3, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    const-string/jumbo v4, "header"

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->listCats:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/bean/CampaignCategory;

    iget-object v3, v3, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    const-string/jumbo v3, "cat"

    iget v4, v2, Lcom/bzbs/bean/CampaignCategory;->cat:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    const-string/jumbo v3, "dashboard_key"

    iget-object v4, v2, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    :goto_78
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2397
    return-object v1

    .line 2388
    :cond_7c
    const-string/jumbo v4, "header_en"

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->listCats:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/bean/CampaignCategory;

    iget-object v3, v3, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    const-string/jumbo v4, "header"

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->listCats:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/bean/CampaignCategory;

    iget-object v3, v3, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    const-string/jumbo v3, "mode"

    iget-object v4, v2, Lcom/bzbs/bean/CampaignCategory;->mode:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    const-string/jumbo v3, "tags"

    iget-object v4, v2, Lcom/bzbs/bean/CampaignCategory;->tags:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    const-string/jumbo v3, "cat"

    iget v4, v2, Lcom/bzbs/bean/CampaignCategory;->cat:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    const-string/jumbo v3, "list_config"

    iget-object v4, v2, Lcom/bzbs/bean/CampaignCategory;->list_config:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78
.end method

.method public getPage(I)Landroid/support/v4/app/Fragment;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 2426
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->holder:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2427
    .local v0, "weakRefItem":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/Fragment;>;"
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 2417
    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->getPagerItem(I)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPageWidth(I)F
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 2422
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;->getPageWidth(I)F

    move-result v0

    return v0
.end method

.method protected getPagerItem(I)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->pages:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 2402
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    .line 2403
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_15

    .line 2404
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->holder:Landroid/support/v4/util/SparseArrayCompat;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 2406
    :cond_15
    return-object v0
.end method

.method public setSelectedTabByCat(Ljava/lang/String;)V
    .registers 2
    .param p1, "cat"    # Ljava/lang/String;

    .prologue
    .line 2344
    return-void
.end method
