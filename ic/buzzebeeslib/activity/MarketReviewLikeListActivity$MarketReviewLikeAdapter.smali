.class Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;
.super Landroid/widget/BaseAdapter;
.source "MarketReviewLikeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MarketReviewLikeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignReviewLike;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignReviewLike;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignReviewLike;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 306
    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;->data:Ljava/util/ArrayList;

    .line 307
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lic/buzzebeeslib/bean/CampaignReviewLike;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/CampaignReviewLike;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;->getItem(I)Lic/buzzebeeslib/bean/CampaignReviewLike;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 318
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 328
    const/4 v10, 0x0

    .line 330
    .local v10, "review_like":Lic/buzzebeeslib/bean/CampaignReviewLike;
    :try_start_3
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/CampaignReviewLike;

    invoke-virtual {v1}, Lic/buzzebeeslib/bean/CampaignReviewLike;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lic/buzzebeeslib/bean/CampaignReviewLike;

    move-object v10, v0
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_13} :catch_85

    .line 335
    :goto_13
    const/4 v8, 0x0

    .line 336
    .local v8, "holder":Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;
    move-object v11, p2

    .line 338
    .local v11, "view":Landroid/view/View;
    if-eqz p2, :cond_1d

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8a

    .line 339
    :cond_1d
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 340
    .local v9, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lic/buzzebeeslib/R$layout;->bz_market_review_like_row:I

    invoke-virtual {v9, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 341
    new-instance v8, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;

    .end local v8    # "holder":Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;
    invoke-direct {v8, p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;-><init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;)V

    .line 342
    .restart local v8    # "holder":Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;
    sget v1, Lic/buzzebeeslib/R$idLikeRow;->layoutMain:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v8, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;->layoutMain:Landroid/widget/RelativeLayout;

    .line 343
    sget v1, Lic/buzzebeeslib/R$idLikeRow;->imgUser:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v8, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;->imgUser:Landroid/widget/ImageView;

    .line 344
    sget v1, Lic/buzzebeeslib/R$idLikeRow;->tvName:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v8, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;->tvName:Landroid/widget/TextView;

    .line 345
    invoke-virtual {v11, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 350
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    :goto_4f
    iget-object v1, v8, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 352
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 353
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->access$4(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v10, v2}, Lic/buzzebeeslib/bean/CampaignReviewLike;->GetProfileImage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;->imgUser:Landroid/widget/ImageView;

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 358
    :goto_7d
    iget-object v1, v8, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;->tvName:Landroid/widget/TextView;

    iget-object v2, v10, Lic/buzzebeeslib/bean/CampaignReviewLike;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    return-object v11

    .line 331
    .end local v8    # "holder":Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;
    .end local v11    # "view":Landroid/view/View;
    :catch_85
    move-exception v7

    .line 332
    .local v7, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v7}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_13

    .line 347
    .end local v7    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v8    # "holder":Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;
    .restart local v11    # "view":Landroid/view/View;
    :cond_8a
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "holder":Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;
    check-cast v8, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;

    .restart local v8    # "holder":Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;
    goto :goto_4f

    .line 355
    :cond_91
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->access$4(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v1

    invoke-virtual {v10, v4}, Lic/buzzebeeslib/bean/CampaignReviewLike;->GetProfileImage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter$ViewHolderMarketReviewLikeRow;->imgUser:Landroid/widget/ImageView;

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    goto :goto_7d
.end method
