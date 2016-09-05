.class public Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WalletCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Campaign;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/util/List;)V
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
    .line 1676
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 1677
    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a:Ljava/util/List;

    .line 1678
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;
    .registers 6

    .prologue
    .line 1694
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040134

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1695
    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;Landroid/view/View;)V

    .line 1696
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;I)V
    .registers 12

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1701
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    .line 1703
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->o(Lcom/samsung/privilege/activity/WalletCardActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_112

    .line 1704
    if-eqz p2, :cond_1c

    if-eq p2, v3, :cond_1c

    if-ne p2, v4, :cond_106

    .line 1705
    :cond_1c
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1706
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->b:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1721
    :goto_26
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1722
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    iget v1, v0, Lcom/bzbs/bean/Campaign;->DayProceed:I

    if-gt v1, v4, :cond_12e

    .line 1727
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v3, 0x7f0900ae

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1728
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    sget v2, Lcom/bzbs/data/AppSetting;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1740
    :goto_4d
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 1741
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###"

    invoke-direct {v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1743
    const-string/jumbo v1, ""

    .line 1745
    :try_start_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v5, 0x7f0900d1

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

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
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_8a} :catch_1a6

    move-result-object v1

    .line 1750
    :goto_8b
    iget-object v2, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1751
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1756
    :goto_95
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bzbs/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const v2, 0x7f0202d2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1758
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->d:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;Lcom/bzbs/bean/Campaign;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wallet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "View Campaign"

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

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1773
    return-void

    .line 1708
    :cond_106
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1709
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->b:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_26

    .line 1712
    :cond_112
    if-eqz p2, :cond_116

    if-ne p2, v3, :cond_122

    .line 1713
    :cond_116
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1714
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->b:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_26

    .line 1716
    :cond_122
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1717
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->b:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_26

    .line 1730
    :cond_12e
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

    .line 1731
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_190

    .line 1732
    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    .line 1733
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v6, 0x7f0900d2

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

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

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v4, 0x7f0900d3

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1737
    :goto_187
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    sget v2, Lcom/bzbs/data/AppSetting;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4d

    .line 1735
    :cond_190
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v3, 0x7f0900d4

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_187

    .line 1753
    :cond_19f
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_95

    .line 1746
    :catch_1a6
    move-exception v2

    goto/16 :goto_8b
.end method

.method public a(Ljava/util/List;)V
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
    .line 1689
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1690
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 1782
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1783
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 1672
    check-cast p1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a(Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 1672
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;

    move-result-object v0

    return-object v0
.end method
