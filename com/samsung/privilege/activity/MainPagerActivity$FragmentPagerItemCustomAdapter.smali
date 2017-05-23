.class Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MainPagerActivity.java"


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity;

.field private final b:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

.field private final c:Landroid/support/v4/util/SparseArrayCompat;
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

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/CampaignCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/support/v4/app/FragmentManager;Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;Ljava/util/ArrayList;)V
    .registers 7
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
    .line 2861
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    .line 2862
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 2863
    iput-object p3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    .line 2864
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p3}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->c:Landroid/support/v4/util/SparseArrayCompat;

    .line 2865
    iput-object p4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->d:Ljava/util/ArrayList;

    .line 2866
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .registers 7

    .prologue
    .line 2883
    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->e(I)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    invoke-virtual {v1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;->a(Landroid/content/Context;I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 2885
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2886
    const-string/jumbo v0, "index"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "index="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignCategory;

    .line 2908
    iget-object v1, v0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    if-eqz v1, :cond_7c

    iget-object v1, v0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 2909
    const-string/jumbo v4, "header_en"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignCategory;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    const-string/jumbo v4, "header"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignCategory;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    const-string/jumbo v1, "cat"

    iget v4, v0, Lcom/bzbs/bean/CampaignCategory;->cat:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    const-string/jumbo v1, "dashboard_key"

    iget-object v0, v0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    :goto_78
    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2923
    return-object v2

    .line 2914
    :cond_7c
    const-string/jumbo v4, "header_en"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignCategory;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    const-string/jumbo v4, "header"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignCategory;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    const-string/jumbo v1, "mode"

    iget-object v4, v0, Lcom/bzbs/bean/CampaignCategory;->mode:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    const-string/jumbo v1, "tags"

    iget-object v4, v0, Lcom/bzbs/bean/CampaignCategory;->tags:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    const-string/jumbo v1, "cat"

    iget v4, v0, Lcom/bzbs/bean/CampaignCategory;->cat:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    const-string/jumbo v1, "list_config"

    iget-object v0, v0, Lcom/bzbs/bean/CampaignCategory;->list_config:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7

    .prologue
    .line 2928
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    .line 2929
    instance-of v0, v1, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_15

    .line 2930
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->c:Landroid/support/v4/util/SparseArrayCompat;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v0, v1

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/support/v4/util/SparseArrayCompat;->b(ILjava/lang/Object;)V

    .line 2932
    :cond_15
    return-object v1
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 2937
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->c:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->c(I)V

    .line 2938
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 2939
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 2874
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    if-eqz v0, :cond_b

    .line 2875
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->size()I

    move-result v0

    .line 2877
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c(I)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 2943
    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->e(I)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;->a()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public d(I)F
    .registers 3

    .prologue
    .line 2948
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;->d(I)F

    move-result v0

    return v0
.end method

.method protected e(I)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;
    .registers 3

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;

    return-object v0
.end method
