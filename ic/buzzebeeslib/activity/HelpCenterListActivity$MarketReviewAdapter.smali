.class Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "HelpCenterListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MarketReviewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
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

.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Ljava/util/ArrayList;)V
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
    .line 1239
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignReview;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1240
    iput-object p2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

    .line 1241
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1434
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->doViewPhotoSmart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;)Lic/buzzebeeslib/activity/HelpCenterListActivity;
    .registers 2

    .prologue
    .line 1235
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    return-object v0
.end method

.method private doViewPhotoSmart(Ljava/lang/String;)V
    .registers 7
    .param p1, "photo_src"    # Ljava/lang/String;

    .prologue
    .line 1436
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lic/buzzebeeslib/activity/PhotoViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1437
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1438
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-virtual {v2, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 1442
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_17
    return-void

    .line 1439
    :catch_18
    move-exception v0

    .line 1440
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
    .line 1244
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1248
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1252
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1278
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lic/buzzebeeslib/bean/CampaignReview;

    .line 1280
    .local v13, "review":Lic/buzzebeeslib/bean/CampaignReview;
    const/4 v8, 0x0

    .line 1281
    .local v8, "holder":Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    move-object/from16 v14, p2

    .line 1283
    .local v14, "view":Landroid/view/View;
    if-eqz p2, :cond_15

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1c9

    .line 1284
    :cond_15
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1285
    .local v9, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_campaign_ask_row:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 1286
    new-instance v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;

    .end local v8    # "holder":Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    invoke-direct {v8, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;)V

    .line 1287
    .restart local v8    # "holder":Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgProfile:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    .line 1288
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvDisplayName:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    .line 1289
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgPhotoSmart:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    .line 1290
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgCreateTime:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgCreateTime:Landroid/widget/ImageView;

    .line 1291
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvCreateTime:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    .line 1292
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutStatus:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutStatus:Landroid/widget/RelativeLayout;

    .line 1293
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvStatus:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    .line 1294
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvSeeMore:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    .line 1295
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->progressBarLoadingIcon:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    .line 1296
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgCommentIcon:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgCommentIcon:Landroid/widget/ImageView;

    .line 1298
    sget v2, Lic/buzzebeeslib/R$id;->contentReview:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->contentReview:Landroid/widget/LinearLayout;

    .line 1301
    sget v2, Lic/buzzebeeslib/R$id;->contentPhotoSmart:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->contentPhotoSmart:Landroid/widget/RelativeLayout;

    .line 1302
    sget v2, Lic/buzzebeeslib/R$id;->tvComment:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvComment:Landroid/widget/TextView;

    .line 1304
    invoke-virtual {v14, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1309
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    :goto_ae
    const/4 v10, 0x0

    .line 1310
    .local v10, "isPhotoLayout":Z
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    .line 1311
    const/4 v10, 0x1

    .line 1314
    :cond_ba
    if-eqz v10, :cond_1d1

    .line 1315
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1316
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->contentPhotoSmart:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1324
    :goto_c8
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/profile/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v13, Lic/buzzebeeslib/bean/CampaignReview;->UserId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/picture?type=large"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1329
    .local v12, "profile_src":Ljava/lang/String;
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-object v2, v2, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v4, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-object v5, v5, Lic/buzzebeeslib/activity/HelpCenterListActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
    invoke-static {v6}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$9(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    move-result-object v6

    invoke-virtual {v2, v12, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 1330
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1332
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    iget-object v4, v13, Lic/buzzebeeslib/bean/CampaignReview;->Name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1334
    if-eqz v10, :cond_1e1

    .line 1336
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    const-string v4, "https:"

    const-string v5, "http:"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1337
    .local v3, "imageUrl":Ljava/lang/String;
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$10(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    iget-object v4, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    iget-object v5, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1338
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    new-instance v4, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$1;

    invoke-direct {v4, p0, v13}, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$1;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;Lic/buzzebeeslib/bean/CampaignReview;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1356
    .end local v3    # "imageUrl":Ljava/lang/String;
    :goto_132
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    iget-wide v4, v13, Lic/buzzebeeslib/bean/CampaignReview;->CreatedTime:J

    iget-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-virtual {v6}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lic/buzzebeeslib/util/BBUtil;->CDateToTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "about "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1358
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ff

    .line 1359
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 1360
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x3e8

    if-le v2, v4, :cond_1e9

    .line 1361
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 1367
    :goto_181
    iget-boolean v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    if-eqz v2, :cond_1f1

    .line 1368
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    iget-object v4, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1369
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1374
    :goto_193
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1383
    :goto_199
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1385
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    new-instance v4, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$2;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$2;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1393
    iget v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    if-gez v2, :cond_1b3

    .line 1394
    const/4 v2, 0x0

    iput v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    .line 1396
    :cond_1b3
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvComment:Landroid/widget/TextView;

    iget v4, v13, Lic/buzzebeeslib/bean/CampaignReview;->CommentCount:I

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1397
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Sticker:Ljava/lang/String;

    iget-object v4, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    iget-object v5, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgCommentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)Z

    move-result v11

    .line 1410
    .local v11, "isShowIcon":Z
    return-object v14

    .line 1306
    .end local v10    # "isPhotoLayout":Z
    .end local v11    # "isShowIcon":Z
    .end local v12    # "profile_src":Ljava/lang/String;
    :cond_1c9
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "holder":Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    check-cast v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;

    .restart local v8    # "holder":Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    goto/16 :goto_ae

    .line 1318
    .restart local v10    # "isPhotoLayout":Z
    :cond_1d1
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1319
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->contentPhotoSmart:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_c8

    .line 1344
    .restart local v12    # "profile_src":Ljava/lang/String;
    :cond_1e1
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_132

    .line 1363
    :cond_1e9
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 1364
    const/4 v2, 0x1

    iput-boolean v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    goto :goto_181

    .line 1371
    :cond_1f1
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    iget-object v4, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_193

    .line 1376
    :cond_1ff
    const-string v2, ""

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 1377
    const-string v2, ""

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 1379
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1381
    iget-object v2, v8, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_199
.end method

.method public setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)Z
    .registers 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "progressBarLoadingIcon"    # Landroid/widget/ProgressBar;
    .param p3, "imgReviewIcon"    # Landroid/widget/ImageView;

    .prologue
    const/4 v5, 0x1

    const/16 v3, 0x8

    const/4 v7, 0x0

    .line 1414
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/StickerUtil;->STICKERS_MAPPING(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/Sticker;

    .line 1415
    .local v6, "sticker":Lic/buzzebeeslib/bean/Sticker;
    const-string v0, "OAT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    if-eqz v6, :cond_50

    .line 1417
    iget-object v0, v6, Lic/buzzebeeslib/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1418
    invoke-virtual {p2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1419
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$10(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v1, v6, Lic/buzzebeeslib/bean/Sticker;->PictureUrl:Ljava/lang/String;

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1420
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1430
    :goto_47
    return v5

    .line 1423
    :cond_48
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1424
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 1425
    goto :goto_47

    .line 1428
    :cond_50
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1429
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 1430
    goto :goto_47
.end method
