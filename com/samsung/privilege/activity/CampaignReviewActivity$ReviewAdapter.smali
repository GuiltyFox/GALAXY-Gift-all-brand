.class public Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CampaignReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/CampaignReview;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignReviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/util/List;)V
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
    .line 438
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 439
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->a:Ljava/util/List;

    .line 440
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bzbs/bean/CampaignReview;
    .registers 3

    .prologue
    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignReview;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 446
    :goto_8
    return-object v0

    .line 445
    :catch_9
    move-exception v0

    .line 446
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;
    .registers 6

    .prologue
    .line 456
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 457
    new-instance v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;Landroid/view/View;)V

    .line 458
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;I)V
    .registers 12

    .prologue
    const/16 v8, 0x64

    const/16 v7, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 463
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0, p2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->d(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)I

    .line 464
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignReview;

    .line 467
    iget-object v1, v0, Lcom/bzbs/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ae

    move v1, v2

    .line 471
    :goto_1f
    if-ne v1, v2, :cond_143

    .line 472
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 474
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 481
    :goto_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "api/profile/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/bzbs/bean/CampaignReview;->UserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/picture"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 484
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 486
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->d:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/bzbs/bean/CampaignReview;->Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    if-ne v1, v2, :cond_154

    .line 489
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->h:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/bzbs/bean/CampaignReview;->PlaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v4, v0, Lcom/bzbs/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    const-string/jumbo v5, "https:"

    const-string/jumbo v6, "http:"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 492
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 493
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->g:Landroid/widget/ImageView;

    new-instance v5, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$1;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$1;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    :goto_ab
    if-ne v1, v2, :cond_15c

    .line 503
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->j:Landroid/widget/TextView;

    iget-wide v4, v0, Lcom/bzbs/bean/CampaignReview;->CreatedTime:J

    invoke-static {v4, v5}, Lcom/bzbs/util/BBUtil;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :goto_b8
    iget-object v1, v0, Lcom/bzbs/bean/CampaignReview;->Message:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17f

    .line 509
    iget-object v1, v0, Lcom/bzbs/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 510
    iget-object v1, v0, Lcom/bzbs/bean/CampaignReview;->Message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_169

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/bzbs/bean/CampaignReview;->Message:Ljava/lang/String;

    invoke-virtual {v4, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 517
    :goto_eb
    iget-boolean v1, v0, Lcom/bzbs/bean/CampaignReview;->is_text_show_all:Z

    if-ne v1, v2, :cond_171

    .line 518
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->o:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/bzbs/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 524
    :goto_fb
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    :goto_100
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->q:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 536
    iget v1, v0, Lcom/bzbs/bean/CampaignReview;->Likes:I

    if-gez v1, :cond_10f

    .line 537
    iput v3, v0, Lcom/bzbs/bean/CampaignReview;->Likes:I

    .line 540
    :cond_10f
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->v:Landroid/widget/TextView;

    iget v3, v0, Lcom/bzbs/bean/CampaignReview;->Likes:I

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-boolean v1, v0, Lcom/bzbs/bean/CampaignReview;->IsLiked:Z

    if-ne v1, v2, :cond_19d

    .line 543
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->u:Landroid/widget/ImageView;

    const v2, 0x7f0201c0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 544
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->v:Landroid/widget/TextView;

    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 590
    :goto_12e
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->q:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$2;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;Lcom/bzbs/bean/CampaignReview;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->s:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;Lcom/bzbs/bean/CampaignReview;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    return-void

    .line 476
    :cond_143
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 478
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_30

    .line 499
    :cond_154
    iget-object v4, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->g:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_ab

    .line 505
    :cond_15c
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->m:Landroid/widget/TextView;

    iget-wide v4, v0, Lcom/bzbs/bean/CampaignReview;->CreatedTime:J

    invoke-static {v4, v5}, Lcom/bzbs/util/BBUtil;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    .line 513
    :cond_169
    iget-object v1, v0, Lcom/bzbs/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 514
    iput-boolean v2, v0, Lcom/bzbs/bean/CampaignReview;->is_text_show_all:Z

    goto/16 :goto_eb

    .line 521
    :cond_171
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->o:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/bzbs/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_fb

    .line 526
    :cond_17f
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/bzbs/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 527
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/bzbs/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 529
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->o:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_100

    .line 546
    :cond_19d
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->u:Landroid/widget/ImageView;

    const v2, 0x7f0201c1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 547
    iget-object v1, p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->v:Landroid/widget/TextView;

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_12e

    :cond_1ae
    move v1, v3

    goto/16 :goto_1f
.end method

.method public a(Ljava/util/List;)V
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
    .line 451
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 452
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 695
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 696
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 434
    check-cast p1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->a(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 434
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;

    move-result-object v0

    return-object v0
.end method
