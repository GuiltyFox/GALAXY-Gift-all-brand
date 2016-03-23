.class public Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;
.super Landroid/support/v4/app/Fragment;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayListFragment"
.end annotation


# instance fields
.field image_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1574
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/String;)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;
    .registers 7
    .param p0, "image_url"    # Ljava/lang/String;

    .prologue
    .line 1582
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;

    invoke-direct {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;-><init>()V

    .line 1585
    .local v1, "f":Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1586
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "image_url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    const-string/jumbo v2, "time"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1588
    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1590
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1598
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1599
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "image_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->image_url:Ljava/lang/String;

    .line 1600
    return-void

    .line 1599
    :cond_17
    const-string/jumbo v0, ""

    goto :goto_14
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1608
    const v2, 0x7f04011f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1610
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f1005c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1612
    .local v0, "ivCampaign":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->image_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    const v3, 0x7f0202cb

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1614
    return-object v1
.end method
