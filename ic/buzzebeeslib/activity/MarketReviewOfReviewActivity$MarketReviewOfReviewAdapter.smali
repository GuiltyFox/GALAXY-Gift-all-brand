.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MarketReviewOfReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MarketReviewOfReviewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignReview;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1515
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignReview;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1516
    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->data:Ljava/util/ArrayList;

    .line 1517
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1789
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->doViewPhotoSmart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 1513
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    .registers 2

    .prologue
    .line 1511
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    return-object v0
.end method

.method private doViewPhotoSmart(Ljava/lang/String;)V
    .registers 7
    .param p1, "photo_src"    # Ljava/lang/String;

    .prologue
    .line 1791
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lic/buzzebeeslib/activity/PhotoViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1792
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1793
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v2, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 1797
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_17
    return-void

    .line 1794
    :catch_18
    move-exception v0

    .line 1795
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|doViewPhotoSmart):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1520
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1524
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1528
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1566
    const/4 v13, 0x0

    .line 1568
    .local v13, "review":Lic/buzzebeeslib/bean/CampaignReview;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/CampaignReview;

    invoke-virtual {v2}, Lic/buzzebeeslib/bean/CampaignReview;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lic/buzzebeeslib/bean/CampaignReview;

    move-object v13, v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_37b

    .line 1573
    :goto_15
    const/4 v9, 0x0

    .line 1574
    .local v9, "holder":Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    move-object/from16 v16, p2

    .line 1576
    .local v16, "view":Landroid/view/View;
    if-eqz p2, :cond_20

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_381

    .line 1577
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1578
    .local v10, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_market_review_of_review_row:I

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1579
    new-instance v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;

    .end local v9    # "holder":Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)V

    .line 1581
    .restart local v9    # "holder":Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutBackWhite:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutBackWhite:Landroid/widget/RelativeLayout;

    .line 1582
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgProfile:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    .line 1583
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvDisplayName:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    .line 1584
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutPhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    .line 1585
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->pbLoadingPhotoSmart:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

    .line 1586
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgPhotoSmart:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    .line 1587
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->ratingBarPhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    .line 1588
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvLocationNamePhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    .line 1589
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgCreateTimePhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgCreateTimePhoto:Landroid/widget/ImageView;

    .line 1590
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvCreateTimePhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    .line 1591
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->ratingBarStatus:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    .line 1592
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutCreateTime:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    .line 1593
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgCreateTime:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgCreateTime:Landroid/widget/ImageView;

    .line 1594
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvCreateTime:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    .line 1595
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutStatus:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutStatus:Landroid/widget/RelativeLayout;

    .line 1596
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvStatus:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    .line 1597
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutSeeMore:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/control/RelativeLayoutButton;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    .line 1598
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvSeeMore:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    .line 1600
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgImageBar:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgImageBar:Landroid/widget/ImageView;

    .line 1601
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutLike:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    .line 1602
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->pbImgLike:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->pbImgLike:Landroid/widget/ProgressBar;

    .line 1603
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgLike:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    .line 1604
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvLike:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    .line 1605
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->progressBarLoadingIcon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    .line 1606
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgCommentIcon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgCommentIcon:Landroid/widget/ImageView;

    .line 1607
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutCommentCount:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutCommentCount:Landroid/widget/RelativeLayout;

    .line 1608
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvCommentCount:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCommentCount:Landroid/widget/TextView;

    .line 1609
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1614
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    :goto_181
    const/4 v11, 0x0

    .line 1615
    .local v11, "isPhotoLayout":Z
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18d

    .line 1616
    const/4 v11, 0x1

    .line 1619
    :cond_18d
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutCommentCount:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1621
    if-eqz v11, :cond_389

    .line 1623
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1624
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1625
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1627
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1644
    :goto_1af
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1645
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1646
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1647
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1648
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1649
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1650
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1652
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1653
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a5

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$30(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    invoke-virtual {v13}, Lic/buzzebeeslib/bean/CampaignReview;->GetProfileImage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->bz_image_profile_fb_m:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1663
    :goto_23b
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1665
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1667
    if-eqz v11, :cond_3bc

    .line 1668
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->PlaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$30(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    iget-object v4, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    iget-object v5, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1672
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1673
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    if-eqz v2, :cond_290

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_290

    .line 1674
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_290

    .line 1675
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1679
    :cond_290
    iget-object v14, v13, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    .line 1680
    .local v14, "strImageUrl":Ljava/lang/String;
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1695
    .end local v14    # "strImageUrl":Ljava/lang/String;
    :cond_29e
    :goto_29e
    if-eqz v11, :cond_3ec

    .line 1697
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    iget-wide v4, v13, Lic/buzzebeeslib/bean/CampaignReview;->CreatedTime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lic/buzzebeeslib/util/BBUtil;->CDateToTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1702
    :goto_2b3
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_419

    .line 1703
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 1704
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_401

    .line 1705
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 1711
    :goto_2e9
    iget-boolean v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    if-eqz v2, :cond_40a

    .line 1712
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1713
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setVisibility(I)V

    .line 1718
    :goto_2fa
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1727
    :goto_300
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setTag(Ljava/lang/Object;)V

    .line 1729
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCommentCount:Landroid/widget/TextView;

    iget v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->CommentCount:I

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1731
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    iget v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1733
    iget-boolean v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    if-nez v2, :cond_437

    .line 1734
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1736
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_detail_like:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1743
    :goto_338
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Sticker:Ljava/lang/String;

    iget-object v3, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    iget-object v4, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgCommentIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)Z

    move-result v12

    .line 1745
    .local v12, "isShowIcon":Z
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutBackWhite:Landroid/widget/RelativeLayout;

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1758
    new-instance v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    invoke-direct {v15}, Lic/buzzebeeslib/bean/TagLikeCampaignReview;-><init>()V

    .line 1759
    .local v15, "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/CampaignReview;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    .line 1760
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->layoutLike:Landroid/widget/RelativeLayout;

    .line 1761
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->pbImgLike:Landroid/widget/ProgressBar;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->pbImgLike:Landroid/widget/ProgressBar;

    .line 1762
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    .line 1763
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->tvLike:Landroid/widget/TextView;

    .line 1764
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1766
    return-object v16

    .line 1569
    .end local v9    # "holder":Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    .end local v11    # "isPhotoLayout":Z
    .end local v12    # "isShowIcon":Z
    .end local v15    # "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    .end local v16    # "view":Landroid/view/View;
    :catch_37b
    move-exception v8

    .line 1570
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_15

    .line 1611
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "holder":Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    .restart local v16    # "view":Landroid/view/View;
    :cond_381
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "holder":Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    check-cast v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;

    .restart local v9    # "holder":Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    goto/16 :goto_181

    .line 1630
    .restart local v11    # "isPhotoLayout":Z
    :cond_389
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1631
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1632
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1633
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1af

    .line 1659
    :cond_3a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$30(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    invoke-virtual {v13}, Lic/buzzebeeslib/bean/CampaignReview;->GetProfileImage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->bz_image_profile_fb_m:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    goto/16 :goto_23b

    .line 1686
    :cond_3bc
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1687
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1688
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    if-eqz v2, :cond_29e

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29e

    .line 1689
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_29e

    .line 1690
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    goto/16 :goto_29e

    .line 1699
    :cond_3ec
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    iget-wide v4, v13, Lic/buzzebeeslib/bean/CampaignReview;->CreatedTime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lic/buzzebeeslib/util/BBUtil;->CDateToTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b3

    .line 1707
    :cond_401
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 1708
    const/4 v2, 0x1

    iput-boolean v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    goto/16 :goto_2e9

    .line 1715
    :cond_40a
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1716
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setVisibility(I)V

    goto/16 :goto_2fa

    .line 1720
    :cond_419
    const-string v2, ""

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 1721
    const-string v2, ""

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 1723
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1724
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1725
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setVisibility(I)V

    goto/16 :goto_300

    .line 1738
    :cond_437
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1740
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_detail_liked:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_338
.end method

.method public setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)Z
    .registers 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "progressBarLoadingIcon"    # Landroid/widget/ProgressBar;
    .param p3, "imgReviewIcon"    # Landroid/widget/ImageView;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v1, 0x8

    .line 1770
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/StickerUtil;->STICKERS_MAPPING(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/Sticker;

    .line 1771
    .local v6, "sticker":Lic/buzzebeeslib/bean/Sticker;
    if-eqz v6, :cond_39

    .line 1772
    iget-object v0, v6, Lic/buzzebeeslib/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1773
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$30(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v1, v6, Lic/buzzebeeslib/bean/Sticker;->PictureUrl:Ljava/lang/String;

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1775
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1785
    :goto_30
    return v5

    .line 1778
    :cond_31
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1779
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 1780
    goto :goto_30

    .line 1783
    :cond_39
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1784
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 1785
    goto :goto_30
.end method
