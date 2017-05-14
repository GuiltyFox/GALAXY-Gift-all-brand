.class public Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Campaign;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Campaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2148
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 2149
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->a:Ljava/util/List;

    .line 2150
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bzbs/bean/Campaign;
    .registers 3

    .prologue
    .line 2154
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 2156
    :goto_8
    return-object v0

    .line 2155
    :catch_9
    move-exception v0

    .line 2156
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;
    .registers 6

    .prologue
    .line 2166
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2167
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;Landroid/view/View;)V

    .line 2168
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;I)V
    .registers 10

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    .line 2186
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2187
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2189
    iget v1, v0, Lcom/bzbs/bean/Campaign;->DayProceed:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_c3

    .line 2190
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f0900af

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2191
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    sget v2, Lcom/bzbs/data/AppSetting;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2202
    :goto_30
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 2203
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###"

    invoke-direct {v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2205
    const-string/jumbo v1, ""

    .line 2207
    :try_start_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v5, 0x7f0900d2

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/bzbs/bean/Campaign;->Qty:J

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_6d} :catch_137

    move-result-object v1

    .line 2212
    :goto_6e
    iget-object v2, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2213
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2218
    :goto_79
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bzbs/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const v2, 0x7f0202dc

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 2220
    const-string/jumbo v1, "Gift Campaign Details"

    const-string/jumbo v2, "View Relate Deal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    return-void

    .line 2193
    :cond_c3
    iget-object v1, v0, Lcom/bzbs/bean/Campaign;->ExpireDate:Ljava/lang/String;

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, v0, Lcom/bzbs/bean/Campaign;->CurrentDate:Ljava/lang/String;

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 2194
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_11e

    .line 2195
    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    .line 2196
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v6, 0x7f0900d3

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v4, 0x7f0900d4

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_30

    .line 2198
    :cond_11e
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f0900d5

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_30

    .line 2215
    :cond_12e
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_79

    .line 2208
    :catch_137
    move-exception v2

    goto/16 :goto_6e
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 2230
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 2231
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 2144
    check-cast p1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 2144
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;

    move-result-object v0

    return-object v0
.end method
