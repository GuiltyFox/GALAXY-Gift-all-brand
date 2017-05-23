.class public Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DialogSearch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;",
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


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
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
    .line 295
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;->a:Ljava/util/List;

    .line 297
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bzbs/bean/Campaign;
    .registers 3

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 303
    :goto_8
    return-object v0

    .line 302
    :catch_9
    move-exception v0

    .line 303
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;
    .registers 6

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 314
    new-instance v1, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;-><init>(Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;Landroid/view/View;)V

    .line 315
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;I)V
    .registers 10

    .prologue
    .line 320
    invoke-static {p2}, Lcom/samsung/privilege/util/DialogSearch;->c(I)I

    .line 321
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    .line 323
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget v1, v0, Lcom/bzbs/bean/Campaign;->DayProceed:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_9e

    .line 327
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->h()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090067

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    sget v2, Lcom/bzbs/data/AppSetting;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    :goto_35
    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 340
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###"

    invoke-direct {v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 342
    const-string/jumbo v1, ""

    .line 344
    :try_start_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->h()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09007d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_72} :catch_118

    move-result-object v1

    .line 349
    :goto_73
    iget-object v2, p1, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    :goto_7e
    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bzbs/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 356
    return-void

    .line 330
    :cond_9e
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

    .line 331
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_fd

    .line 332
    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    .line 333
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->h()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09007e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->h()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09007f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 335
    :cond_fd
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->h()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 352
    :cond_10f
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7e

    .line 345
    :catch_118
    move-exception v2

    goto/16 :goto_73
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
    .line 308
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 365
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 366
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 291
    check-cast p1, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;->a(Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;

    move-result-object v0

    return-object v0
.end method
