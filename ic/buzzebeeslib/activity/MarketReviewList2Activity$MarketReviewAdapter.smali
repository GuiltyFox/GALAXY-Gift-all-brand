.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MarketReviewList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MarketReviewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
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

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Ljava/util/ArrayList;)V
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
    .line 1213
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignReview;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1214
    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

    .line 1215
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1503
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->doViewPhotoSmart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 1211
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    .registers 2

    .prologue
    .line 1209
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    return-object v0
.end method

.method private doViewPhotoSmart(Ljava/lang/String;)V
    .registers 7
    .param p1, "photo_src"    # Ljava/lang/String;

    .prologue
    .line 1505
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lic/buzzebeeslib/activity/PhotoViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1506
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v2, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 1511
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_17
    return-void

    .line 1508
    :catch_18
    move-exception v0

    .line 1509
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "buzzebees.wall4"

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
    .line 1218
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1226
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1264
    const/4 v13, 0x0

    .line 1266
    .local v13, "review":Lic/buzzebeeslib/bean/CampaignReview;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_38a

    .line 1271
    :goto_15
    const/4 v9, 0x0

    .line 1272
    .local v9, "holder":Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    move-object/from16 v16, p2

    .line 1274
    .local v16, "view":Landroid/view/View;
    if-eqz p2, :cond_20

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_390

    .line 1275
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1276
    .local v10, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_market_review2_row:I

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1277
    new-instance v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;

    .end local v9    # "holder":Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;)V

    .line 1279
    .restart local v9    # "holder":Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutBackWhite:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutBackWhite:Landroid/widget/RelativeLayout;

    .line 1280
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgProfile:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    .line 1281
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvDisplayName:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    .line 1282
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutPhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    .line 1283
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->pbLoadingPhotoSmart:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

    .line 1284
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgPhotoSmart:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    .line 1285
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->ratingBarPhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    .line 1286
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvLocationNamePhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    .line 1287
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgCreateTimePhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgCreateTimePhoto:Landroid/widget/ImageView;

    .line 1288
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvCreateTimePhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    .line 1289
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->ratingBarStatus:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    .line 1290
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutCreateTime:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    .line 1291
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgCreateTime:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgCreateTime:Landroid/widget/ImageView;

    .line 1292
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvCreateTime:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    .line 1293
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutStatus:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutStatus:Landroid/widget/RelativeLayout;

    .line 1294
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvStatus:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    .line 1295
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutSeeMore:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/control/RelativeLayoutButton;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    .line 1296
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvSeeMore:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    .line 1297
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutBarPhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutBarPhoto:Landroid/widget/RelativeLayout;

    .line 1299
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutLike:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    .line 1300
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->pbImgLike:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->pbImgLike:Landroid/widget/ProgressBar;

    .line 1301
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgLike:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    .line 1302
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvLike:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    .line 1303
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->progressBarLoadingIcon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    .line 1304
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgCommentIcon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgCommentIcon:Landroid/widget/ImageView;

    .line 1305
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutCommentCount:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutCommentCount:Landroid/widget/RelativeLayout;

    .line 1306
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvCommentCount:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCommentCount:Landroid/widget/TextView;

    .line 1307
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1321
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    :goto_181
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1322
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1323
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1324
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1325
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1326
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1327
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1328
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCommentCount:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1330
    const/4 v11, 0x0

    .line 1331
    .local v11, "isPhotoLayout":Z
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f5

    .line 1332
    const/4 v11, 0x1

    .line 1335
    :cond_1f5
    if-eqz v11, :cond_398

    .line 1337
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1338
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1339
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1341
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1350
    :goto_210
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1351
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b4

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$11(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    invoke-virtual {v13}, Lic/buzzebeeslib/bean/CampaignReview;->GetProfileImage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->bz_image_profile_fb_m:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1361
    :goto_241
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1362
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutCommentCount:Landroid/widget/RelativeLayout;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1364
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    if-eqz v11, :cond_3cb

    .line 1367
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->PlaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$11(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    iget-object v4, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    iget-object v5, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1376
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1377
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    if-eqz v2, :cond_29f

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29f

    .line 1378
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_29f

    .line 1379
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1383
    :cond_29f
    iget-object v14, v13, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    .line 1384
    .local v14, "strImageUrl":Ljava/lang/String;
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1399
    .end local v14    # "strImageUrl":Ljava/lang/String;
    :cond_2ad
    :goto_2ad
    if-eqz v11, :cond_3fb

    .line 1402
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    iget-wide v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->CreatedTime:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lic/buzzebeeslib/util/BBUtil;->CDateToTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1408
    :goto_2c2
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_428

    .line 1409
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 1410
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_410

    .line 1411
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

    .line 1417
    :goto_2f8
    iget-boolean v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    if-eqz v2, :cond_419

    .line 1418
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1419
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setVisibility(I)V

    .line 1424
    :goto_309
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1434
    :goto_30f
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setTag(Ljava/lang/Object;)V

    .line 1436
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCommentCount:Landroid/widget/TextView;

    iget v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->CommentCount:I

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    iget v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1442
    iget-boolean v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    if-nez v2, :cond_446

    .line 1443
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1446
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_detail_like:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1454
    :goto_347
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Sticker:Ljava/lang/String;

    iget-object v3, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    iget-object v4, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgCommentIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)Z

    move-result v12

    .line 1456
    .local v12, "isShowIcon":Z
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutBackWhite:Landroid/widget/RelativeLayout;

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$2;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1469
    new-instance v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    invoke-direct {v15}, Lic/buzzebeeslib/bean/TagLikeCampaignReview;-><init>()V

    .line 1470
    .local v15, "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/CampaignReview;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    .line 1471
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->layoutLike:Landroid/widget/RelativeLayout;

    .line 1472
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->pbImgLike:Landroid/widget/ProgressBar;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->pbImgLike:Landroid/widget/ProgressBar;

    .line 1473
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    .line 1474
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->tvLike:Landroid/widget/TextView;

    .line 1475
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1477
    return-object v16

    .line 1267
    .end local v9    # "holder":Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    .end local v11    # "isPhotoLayout":Z
    .end local v12    # "isShowIcon":Z
    .end local v15    # "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    .end local v16    # "view":Landroid/view/View;
    :catch_38a
    move-exception v8

    .line 1268
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_15

    .line 1309
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "holder":Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    .restart local v16    # "view":Landroid/view/View;
    :cond_390
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "holder":Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    check-cast v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;

    .restart local v9    # "holder":Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    goto/16 :goto_181

    .line 1344
    .restart local v11    # "isPhotoLayout":Z
    :cond_398
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1345
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1346
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1347
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_210

    .line 1357
    :cond_3b4
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$11(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    invoke-virtual {v13}, Lic/buzzebeeslib/bean/CampaignReview;->GetProfileImage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->bz_image_profile_fb_m:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    goto/16 :goto_241

    .line 1390
    :cond_3cb
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1391
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1392
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    if-eqz v2, :cond_2ad

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ad

    .line 1393
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2ad

    .line 1394
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    goto/16 :goto_2ad

    .line 1405
    :cond_3fb
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    iget-wide v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->CreatedTime:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lic/buzzebeeslib/util/BBUtil;->CDateToTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c2

    .line 1413
    :cond_410
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 1414
    const/4 v2, 0x1

    iput-boolean v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    goto/16 :goto_2f8

    .line 1421
    :cond_419
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1422
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setVisibility(I)V

    goto/16 :goto_309

    .line 1426
    :cond_428
    const-string v2, ""

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 1427
    const-string v2, ""

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 1429
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1431
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setVisibility(I)V

    goto/16 :goto_30f

    .line 1448
    :cond_446
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1451
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_detail_liked:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_347
.end method

.method public setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)Z
    .registers 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "progressBarLoadingIcon"    # Landroid/widget/ProgressBar;
    .param p3, "imgReviewIcon"    # Landroid/widget/ImageView;

    .prologue
    const/4 v5, 0x1

    const/16 v1, 0x8

    const/4 v7, 0x0

    .line 1481
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/StickerUtil;->STICKERS_MAPPING(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/Sticker;

    .line 1482
    .local v6, "sticker":Lic/buzzebeeslib/bean/Sticker;
    if-eqz v6, :cond_3c

    .line 1483
    iget-object v0, v6, Lic/buzzebeeslib/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1484
    invoke-virtual {p2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1488
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$11(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v1, v6, Lic/buzzebeeslib/bean/Sticker;->PictureUrl:Ljava/lang/String;

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1489
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1499
    :goto_33
    return v5

    .line 1492
    :cond_34
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1493
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 1494
    goto :goto_33

    .line 1497
    :cond_3c
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1498
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 1499
    goto :goto_33
.end method
