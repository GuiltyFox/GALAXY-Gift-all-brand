.class public Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;
.super Landroid/support/v4/app/Fragment;
.source "CampaignDetailGiftActivity.java"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1822
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;
    .registers 7

    .prologue
    .line 1830
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;

    invoke-direct {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;-><init>()V

    .line 1833
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1834
    const-string/jumbo v2, "image_url"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    const-string/jumbo v2, "time"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1836
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1838
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 1846
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1847
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "image_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->a:Ljava/lang/String;

    .line 1848
    return-void

    .line 1847
    :cond_17
    const-string/jumbo v0, ""

    goto :goto_14
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    .line 1856
    const v0, 0x7f040140

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1858
    const v0, 0x7f10066b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1860
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    const v3, 0x7f0202de

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1862
    return-object v1
.end method
