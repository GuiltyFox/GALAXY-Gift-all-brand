.class public Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CampaignReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReviewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field reviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/CampaignReview;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/CampaignReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p2, "persons":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/bean/CampaignReview;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 434
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->reviews:Ljava/util/List;

    .line 435
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
            "Lcom/bzbs/bean/CampaignReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "new_items":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/bean/CampaignReview;>;"
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->reviews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 447
    return-void
.end method

.method public getItem(I)Lcom/bzbs/bean/CampaignReview;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->reviews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignReview;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 441
    :goto_8
    return-object v1

    .line 440
    :catch_9
    move-exception v0

    .line 441
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->reviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 688
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 689
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 429
    check-cast p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->onBindViewHolder(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;I)V
    .registers 15
    .param p1, "holder"    # Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v11, 0x64

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 458
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # setter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->pastVisiblesItems:I
    invoke-static {v4, p2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$602(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)I

    .line 459
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->reviews:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/bean/CampaignReview;

    .line 461
    .local v3, "review":Lcom/bzbs/bean/CampaignReview;
    const/4 v1, 0x0

    .line 462
    .local v1, "isPhotoLayout":Z
    iget-object v4, v3, Lcom/bzbs/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 463
    const/4 v1, 0x1

    .line 466
    :cond_20
    if-ne v1, v9, :cond_144

    .line 467
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvTempForPhoto:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->layoutPhoto:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 469
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->layoutCreateTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 476
    :goto_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "api/profile/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/bzbs/bean/CampaignReview;->UserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/picture"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "profile_src":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->imgProfile:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 481
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvDisplayName:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/bzbs/bean/CampaignReview;->Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    if-ne v1, v9, :cond_155

    .line 484
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvLocationNamePhoto:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/bzbs/bean/CampaignReview;->PlaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v4, v3, Lcom/bzbs/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    const-string/jumbo v5, "https:"

    const-string/jumbo v6, "http:"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "imageUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->imgPhotoSmart:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 488
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->imgPhotoSmart:Landroid/widget/ImageView;

    new-instance v5, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$1;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$1;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    .end local v0    # "imageUrl":Ljava/lang/String;
    :goto_ac
    if-ne v1, v9, :cond_15d

    .line 498
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvCreateTimePhoto:Landroid/widget/TextView;

    iget-wide v6, v3, Lcom/bzbs/bean/CampaignReview;->CreatedTime:J

    invoke-static {v6, v7}, Lcom/bzbs/util/BBUtil;->CDateToTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :goto_b9
    iget-object v4, v3, Lcom/bzbs/bean/CampaignReview;->Message:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_180

    .line 504
    iget-object v4, v3, Lcom/bzbs/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v4, v3, Lcom/bzbs/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 505
    iget-object v4, v3, Lcom/bzbs/bean/CampaignReview;->Message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v11, :cond_16a

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/bzbs/bean/CampaignReview;->Message:Ljava/lang/String;

    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bzbs/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 512
    :goto_ec
    iget-boolean v4, v3, Lcom/bzbs/bean/CampaignReview;->is_text_show_all:Z

    if-ne v4, v9, :cond_172

    .line 513
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/bzbs/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->layoutSeeMore:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 519
    :goto_fc
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    :goto_101
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->layoutSeeMore:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 531
    iget v4, v3, Lcom/bzbs/bean/CampaignReview;->Likes:I

    if-gez v4, :cond_110

    .line 532
    iput v8, v3, Lcom/bzbs/bean/CampaignReview;->Likes:I

    .line 535
    :cond_110
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvLike:Landroid/widget/TextView;

    iget v5, v3, Lcom/bzbs/bean/CampaignReview;->Likes:I

    invoke-static {v5}, Lcom/bzbs/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-boolean v4, v3, Lcom/bzbs/bean/CampaignReview;->IsLiked:Z

    if-ne v4, v9, :cond_19e

    .line 538
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->imgLike:Landroid/widget/ImageView;

    const v5, 0x7f0202da

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 539
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvLike:Landroid/widget/TextView;

    const v5, 0x7f020050

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 585
    :goto_12f
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->layoutSeeMore:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$2;

    invoke-direct {v5, p0, v3}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$2;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;Lcom/bzbs/bean/CampaignReview;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->layoutLike:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;

    invoke-direct {v5, p0, v3}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;Lcom/bzbs/bean/CampaignReview;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    return-void

    .line 471
    .end local v2    # "profile_src":Ljava/lang/String;
    :cond_144
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvTempForPhoto:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->layoutPhoto:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 473
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->layoutCreateTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_31

    .line 494
    .restart local v2    # "profile_src":Ljava/lang/String;
    :cond_155
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->imgPhotoSmart:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_ac

    .line 500
    :cond_15d
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvCreateTime:Landroid/widget/TextView;

    iget-wide v6, v3, Lcom/bzbs/bean/CampaignReview;->CreatedTime:J

    invoke-static {v6, v7}, Lcom/bzbs/util/BBUtil;->CDateToTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b9

    .line 508
    :cond_16a
    iget-object v4, v3, Lcom/bzbs/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v4, v3, Lcom/bzbs/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 509
    iput-boolean v9, v3, Lcom/bzbs/bean/CampaignReview;->is_text_show_all:Z

    goto/16 :goto_ec

    .line 516
    :cond_172
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/bzbs/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->layoutSeeMore:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_fc

    .line 521
    :cond_180
    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/bzbs/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 522
    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/bzbs/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 524
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvStatus:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->layoutSeeMore:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_101

    .line 541
    :cond_19e
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->imgLike:Landroid/widget/ImageView;

    const v5, 0x7f0202db

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->tvLike:Landroid/widget/TextView;

    const v5, 0x7f020051

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_12f
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 451
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040028

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 452
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;Landroid/view/View;)V

    .line 453
    .local v0, "pvh":Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;
    return-object v0
.end method
