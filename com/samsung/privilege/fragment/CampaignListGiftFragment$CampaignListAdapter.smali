.class public Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CampaignListGiftFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;",
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

.field final synthetic b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Ljava/util/List;)V
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
    .line 465
    iput-object p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 466
    iput-object p2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->a:Ljava/util/List;

    .line 467
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bzbs/bean/Campaign;
    .registers 3

    .prologue
    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 473
    :goto_8
    return-object v0

    .line 472
    :catch_9
    move-exception v0

    .line 473
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;
    .registers 6

    .prologue
    .line 483
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040142

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 484
    new-instance v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;Landroid/view/View;)V

    .line 485
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;I)V
    .registers 12

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 490
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0, p2}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->d(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;I)I

    .line 491
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    .line 493
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->m(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10e

    .line 494
    if-eqz p2, :cond_21

    if-eq p2, v3, :cond_21

    if-ne p2, v4, :cond_102

    .line 495
    :cond_21
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->b:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 511
    :goto_2b
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget v1, v0, Lcom/bzbs/bean/Campaign;->DayProceed:I

    if-gt v1, v4, :cond_12a

    .line 517
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const v3, 0x7f0900af

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    sget v2, Lcom/bzbs/data/AppSetting;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    :goto_52
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19b

    .line 531
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###"

    invoke-direct {v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 533
    const-string/jumbo v1, ""

    .line 535
    :try_start_69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0900d2

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

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
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_93} :catch_1a2

    move-result-object v1

    .line 540
    :goto_94
    iget-object v2, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    :goto_9e
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bzbs/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const v2, 0x7f0202de

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Category-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const-string/jumbo v3, "header_en"

    invoke-static {v2, v3}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "View Campaign Banner"

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

    .line 549
    return-void

    .line 498
    :cond_102
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 499
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->b:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2b

    .line 502
    :cond_10e
    if-eqz p2, :cond_112

    if-ne p2, v3, :cond_11e

    .line 503
    :cond_112
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->b:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2b

    .line 506
    :cond_11e
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->b:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2b

    .line 520
    :cond_12a
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

    .line 521
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_18c

    .line 522
    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    .line 523
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const v6, 0x7f0900d3

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getString(I)Ljava/lang/String;

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

    iget-object v3, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const v4, 0x7f0900d4

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    :goto_183
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    sget v2, Lcom/bzbs/data/AppSetting;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_52

    .line 525
    :cond_18c
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const v3, 0x7f0900d5

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_183

    .line 543
    :cond_19b
    iget-object v1, p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e

    .line 536
    :catch_1a2
    move-exception v2

    goto/16 :goto_94
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
    .line 478
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 479
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 558
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 559
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 461
    check-cast p1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;

    move-result-object v0

    return-object v0
.end method
