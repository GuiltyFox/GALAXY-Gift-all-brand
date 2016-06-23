.class public Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CampaignImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field campaignGalleries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/CampaignGallery;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/CampaignGallery;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1938
    .local p2, "campaignGalleries":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/bean/CampaignGallery;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 1939
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;->campaignGalleries:Ljava/util/List;

    .line 1940
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/CampaignGallery;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1951
    .local p1, "new_items":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/bean/CampaignGallery;>;"
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;->campaignGalleries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1952
    return-void
.end method

.method public getItem(I)Lcom/bzbs/bean/CampaignGallery;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1944
    :try_start_0
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;->campaignGalleries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignGallery;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1946
    :goto_8
    return-object v1

    .line 1945
    :catch_9
    move-exception v0

    .line 1946
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;->campaignGalleries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 1986
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1987
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 1934
    check-cast p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;->onBindViewHolder(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1963
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;->campaignGalleries:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignGallery;

    .line 1964
    .local v0, "objCampaignGallery":Lcom/bzbs/bean/CampaignGallery;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bzbs/bean/CampaignGallery;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const v2, 0x7f0202cd

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1977
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 1934
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1956
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040021

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1957
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;Landroid/view/View;)V

    .line 1958
    .local v0, "pvh":Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;
    return-object v0
.end method
