.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MarketReviewOfReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MarketReviewOfReviewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/MarketReview;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/MarketReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1340
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/MarketReview;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1341
    iput-object p2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->data:Ljava/util/ArrayList;

    .line 1342
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1612
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->doViewPhotoSmart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    .registers 2

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    return-object v0
.end method

.method private doViewPhotoSmart(Ljava/lang/String;)V
    .registers 7
    .param p1, "photo_src"    # Ljava/lang/String;

    .prologue
    .line 1614
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/PhotoViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1615
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1616
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 1620
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_17
    return-void

    .line 1617
    :catch_18
    move-exception v0

    .line 1618
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

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

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1349
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1353
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 23
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1391
    const/4 v15, 0x0

    .line 1393
    .local v15, "review":Lcom/samsung/privilege/bean/MarketReview;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/bean/MarketReview;

    invoke-virtual {v2}, Lcom/samsung/privilege/bean/MarketReview;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/privilege/bean/MarketReview;

    move-object v15, v0
    :try_end_15
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_15} :catch_43d

    .line 1398
    :goto_15
    const/4 v11, 0x0

    .line 1399
    .local v11, "holder":Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    move-object/from16 v18, p2

    .line 1401
    .local v18, "view":Landroid/view/View;
    if-eqz p2, :cond_20

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_443

    .line 1402
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    .line 1403
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030100

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 1404
    new-instance v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;

    .end local v11    # "holder":Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)V

    .line 1405
    .restart local v11    # "holder":Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    const v2, 0x7f160022

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvTempForPhoto:Landroid/widget/TextView;

    .line 1406
    const v2, 0x7f160009

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutBackWhite:Landroid/widget/RelativeLayout;

    .line 1407
    const/high16 v2, 0x7f160000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    .line 1408
    const v2, 0x7f160001

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    .line 1409
    const v2, 0x7f16000c

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    .line 1410
    const v2, 0x7f16000d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

    .line 1411
    const v2, 0x7f160007

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    .line 1412
    const v2, 0x7f16000e

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    .line 1413
    const v2, 0x7f16000f

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    .line 1414
    const v2, 0x7f160010

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgCreateTimePhoto:Landroid/widget/ImageView;

    .line 1415
    const v2, 0x7f160011

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    .line 1416
    const v2, 0x7f16001e

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    .line 1417
    const v2, 0x7f16001f

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    .line 1418
    const v2, 0x7f160020

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgCreateTime:Landroid/widget/ImageView;

    .line 1419
    const v2, 0x7f160008

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    .line 1420
    const v2, 0x7f160004

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutStatus:Landroid/widget/RelativeLayout;

    .line 1421
    const v2, 0x7f160002

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    .line 1422
    const v2, 0x7f160013

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Landroid/widget/RelativeLayout;

    .line 1423
    const v2, 0x7f160003

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    .line 1424
    const v2, 0x7f160014

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutBarPhoto:Landroid/widget/RelativeLayout;

    .line 1425
    const v2, 0x7f160024

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgImageBar:Landroid/widget/ImageView;

    .line 1426
    const v2, 0x7f160017

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    .line 1427
    const v2, 0x7f160018

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->pbImgLike:Landroid/widget/ProgressBar;

    .line 1428
    const v2, 0x7f160019

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    .line 1429
    const v2, 0x7f16001a

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    .line 1430
    const v2, 0x7f160005

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    .line 1431
    const v2, 0x7f160006

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgCommentIcon:Landroid/widget/ImageView;

    .line 1432
    const v2, 0x7f16001b

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutCommentCount:Landroid/widget/RelativeLayout;

    .line 1433
    const v2, 0x7f16001d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCommentCount:Landroid/widget/TextView;

    .line 1434
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1439
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    :goto_1b6
    const/4 v13, 0x0

    .line 1440
    .local v13, "isPhotoLayout":Z
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->ImageUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c2

    .line 1441
    const/4 v13, 0x1

    .line 1444
    :cond_1c2
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutCommentCount:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1446
    if-eqz v13, :cond_44b

    .line 1447
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvTempForPhoto:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1448
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1449
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1450
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1451
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1460
    :goto_1eb
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$29(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1461
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$29(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1462
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$29(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1463
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$29(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1464
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$29(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1465
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$29(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1466
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$29(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1468
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1469
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1470
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1471
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1472
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1473
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1474
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1476
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1477
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_46e

    .line 1480
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/profile/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v15, Lcom/samsung/privilege/bean/MarketReview;->UserId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/picture"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1481
    .local v3, "profile_src":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$30(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    iget-object v4, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const v6, 0x7f020315

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1487
    :goto_30c
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1489
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    iget-object v4, v15, Lcom/samsung/privilege/bean/MarketReview;->Name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1491
    if-eqz v13, :cond_4a3

    .line 1492
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    iget-object v4, v15, Lcom/samsung/privilege/bean/MarketReview;->PlaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$30(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v4

    iget-object v5, v15, Lcom/samsung/privilege/bean/MarketReview;->ImageUrl:Ljava/lang/String;

    iget-object v6, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    iget-object v7, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

    const v8, 0x7f02039f

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1496
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1497
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Rating:Ljava/lang/String;

    if-eqz v2, :cond_362

    const-string v2, ""

    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_362

    .line 1498
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_362

    .line 1499
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    iget-object v4, v15, Lcom/samsung/privilege/bean/MarketReview;->Rating:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1503
    :cond_362
    iget-object v0, v15, Lcom/samsung/privilege/bean/MarketReview;->ImageUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1504
    .local v16, "strImageUrl":Ljava/lang/String;
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    new-instance v4, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$1;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    .end local v16    # "strImageUrl":Ljava/lang/String;
    :cond_374
    :goto_374
    if-eqz v13, :cond_4d3

    .line 1520
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    iget-wide v4, v15, Lcom/samsung/privilege/bean/MarketReview;->CreatedTime:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lic/buzzebeeslib/util/BBUtil;->CDateToTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1525
    :goto_389
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f7

    .line 1526
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    iput-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    .line 1530
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    iput-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    .line 1531
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    .line 1534
    iget-boolean v2, v15, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    if-eqz v2, :cond_4e8

    .line 1535
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    iget-object v4, v15, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1541
    :goto_3af
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1550
    :goto_3b5
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Landroid/widget/RelativeLayout;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1552
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCommentCount:Landroid/widget/TextView;

    iget v4, v15, Lcom/samsung/privilege/bean/MarketReview;->CommentCount:I

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1554
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    iget v4, v15, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1556
    iget-boolean v2, v15, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    if-nez v2, :cond_515

    .line 1557
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1559
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1566
    :goto_3ee
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Sticker:Ljava/lang/String;

    iget-object v4, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    iget-object v5, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgCommentIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)Z

    move-result v14

    .line 1568
    .local v14, "isShowIcon":Z
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutBackWhite:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;I)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1581
    new-instance v17, Lcom/samsung/privilege/bean/TagLikeMarketReview;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/privilege/bean/TagLikeMarketReview;-><init>()V

    .line 1582
    .local v17, "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/bean/MarketReview;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    .line 1583
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->layoutLike:Landroid/widget/RelativeLayout;

    .line 1584
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->pbImgLike:Landroid/widget/ProgressBar;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->pbImgLike:Landroid/widget/ProgressBar;

    .line 1585
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->imgLike:Landroid/widget/ImageView;

    .line 1586
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->tvLike:Landroid/widget/TextView;

    .line 1587
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1589
    return-object v18

    .line 1394
    .end local v3    # "profile_src":Ljava/lang/String;
    .end local v11    # "holder":Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    .end local v13    # "isPhotoLayout":Z
    .end local v14    # "isShowIcon":Z
    .end local v17    # "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    .end local v18    # "view":Landroid/view/View;
    :catch_43d
    move-exception v10

    .line 1395
    .local v10, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v10}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_15

    .line 1436
    .end local v10    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v11    # "holder":Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    .restart local v18    # "view":Landroid/view/View;
    :cond_443
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "holder":Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    check-cast v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;

    .restart local v11    # "holder":Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;
    goto/16 :goto_1b6

    .line 1453
    .restart local v13    # "isPhotoLayout":Z
    :cond_44b
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvTempForPhoto:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1454
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1455
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1456
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1457
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1eb

    .line 1483
    :cond_46e
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/profile/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v15, Lcom/samsung/privilege/bean/MarketReview;->UserId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/picture"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1484
    .restart local v3    # "profile_src":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$30(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    iget-object v4, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const v6, 0x7f020315

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    goto/16 :goto_30c

    .line 1510
    :cond_4a3
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1511
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1512
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Rating:Ljava/lang/String;

    if-eqz v2, :cond_374

    const-string v2, ""

    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_374

    .line 1513
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_374

    .line 1514
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    iget-object v4, v15, Lcom/samsung/privilege/bean/MarketReview;->Rating:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/RatingBar;->setRating(F)V

    goto/16 :goto_374

    .line 1522
    :cond_4d3
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    iget-wide v4, v15, Lcom/samsung/privilege/bean/MarketReview;->CreatedTime:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lic/buzzebeeslib/util/BBUtil;->CDateToTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_389

    .line 1538
    :cond_4e8
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    iget-object v4, v15, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1539
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3af

    .line 1543
    :cond_4f7
    const-string v2, ""

    iput-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    .line 1544
    const-string v2, ""

    iput-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    .line 1546
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1548
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3b5

    .line 1561
    :cond_515
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1563
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_3ee
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

    .line 1593
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/StickerUtil;->STICKERS_MAPPING(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/Sticker;

    .line 1594
    .local v6, "sticker":Lic/buzzebeeslib/bean/Sticker;
    if-eqz v6, :cond_3a

    .line 1595
    iget-object v0, v6, Lic/buzzebeeslib/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1596
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$30(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v1, v6, Lic/buzzebeeslib/bean/Sticker;->PictureUrl:Ljava/lang/String;

    const v4, 0x7f02039f

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1598
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1608
    :goto_31
    return v5

    .line 1601
    :cond_32
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1602
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 1603
    goto :goto_31

    .line 1606
    :cond_3a
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1607
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 1608
    goto :goto_31
.end method
