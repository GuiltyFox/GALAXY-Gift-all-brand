.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MarketPlaceReviewListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MarketReviewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
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

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Ljava/util/ArrayList;)V
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
    .line 977
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignReview;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 978
    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

    .line 979
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1228
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->doViewPhotoSmart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 975
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    .registers 2

    .prologue
    .line 973
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    return-object v0
.end method

.method private doViewPhotoSmart(Ljava/lang/String;)V
    .registers 7
    .param p1, "photo_src"    # Ljava/lang/String;

    .prologue
    .line 1230
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lic/buzzebeeslib/activity/PhotoViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1231
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v2, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 1236
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_17
    return-void

    .line 1233
    :catch_18
    move-exception v0

    .line 1234
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

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 982
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 986
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 990
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1025
    const/4 v13, 0x0

    .line 1027
    .local v13, "review":Lic/buzzebeeslib/bean/CampaignReview;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

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
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_15} :catch_302

    .line 1032
    :goto_15
    const/4 v9, 0x0

    .line 1033
    .local v9, "holder":Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    move-object/from16 v16, p2

    .line 1035
    .local v16, "view":Landroid/view/View;
    if-eqz p2, :cond_20

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_308

    .line 1036
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1037
    .local v10, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_market_review_row:I

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1038
    new-instance v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;

    .end local v9    # "holder":Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;)V

    .line 1039
    .restart local v9    # "holder":Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvTempForPhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvTempForPhoto:Landroid/widget/TextView;

    .line 1040
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutBackWhite:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutBackWhite:Landroid/widget/RelativeLayout;

    .line 1041
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgProfile:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    .line 1042
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvDisplayName:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    .line 1043
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutPhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    .line 1044
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->pbLoadingPhotoSmart:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

    .line 1045
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgPhotoSmart:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    .line 1046
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->ratingBarPhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    .line 1047
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvLocationNamePhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    .line 1048
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgCreateTimePhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgCreateTimePhoto:Landroid/widget/ImageView;

    .line 1049
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvCreateTimePhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    .line 1050
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->ratingBarStatus:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    .line 1051
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutCreateTime:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    .line 1052
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgCreateTime:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgCreateTime:Landroid/widget/ImageView;

    .line 1053
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvCreateTime:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    .line 1054
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutStatus:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutStatus:Landroid/widget/RelativeLayout;

    .line 1055
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvStatus:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    .line 1056
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutSeeMore:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/control/RelativeLayoutButton;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    .line 1057
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgBarPhotoTemp:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgBarPhotoTemp:Landroid/widget/ImageView;

    .line 1058
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutBarPhoto:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutBarPhoto:Landroid/widget/RelativeLayout;

    .line 1059
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgImageBar:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgImageBar:Landroid/widget/ImageView;

    .line 1060
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutLike:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    .line 1061
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->pbImgLike:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->pbImgLike:Landroid/widget/ProgressBar;

    .line 1062
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgLike:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    .line 1063
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvLike:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    .line 1064
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->progressBarLoadingIcon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    .line 1065
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgCommentIcon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgCommentIcon:Landroid/widget/ImageView;

    .line 1066
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1071
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    :goto_181
    const/4 v11, 0x0

    .line 1072
    .local v11, "isPhotoLayout":Z
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18d

    .line 1073
    const/4 v11, 0x1

    .line 1076
    :cond_18d
    if-eqz v11, :cond_310

    .line 1077
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvTempForPhoto:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1078
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1079
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1080
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1081
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1082
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgBarPhotoTemp:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1092
    :goto_1b6
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1093
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$11(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    invoke-virtual {v13}, Lic/buzzebeeslib/bean/CampaignReview;->GetProfileImage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->bz_image_profile_fb_m:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1096
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1098
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    if-eqz v11, :cond_339

    .line 1101
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->PlaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$11(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    iget-object v4, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    iget-object v5, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1107
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1108
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    if-eqz v2, :cond_22e

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22e

    .line 1109
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_22e

    .line 1110
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1114
    :cond_22e
    iget-object v14, v13, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    .line 1115
    .local v14, "strImageUrl":Ljava/lang/String;
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    .end local v14    # "strImageUrl":Ljava/lang/String;
    :cond_23c
    :goto_23c
    if-eqz v11, :cond_369

    .line 1132
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    iget-wide v4, v13, Lic/buzzebeeslib/bean/CampaignReview;->CreatedTime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lic/buzzebeeslib/util/BBUtil;->CDateToTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    :goto_251
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_396

    .line 1139
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 1140
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_37e

    .line 1141
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

    .line 1147
    :goto_287
    iget-boolean v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    if-eqz v2, :cond_387

    .line 1148
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setVisibility(I)V

    .line 1154
    :goto_298
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1165
    :goto_29e
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setTag(Ljava/lang/Object;)V

    .line 1167
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    iget v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    iget-boolean v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    if-nez v2, :cond_3b4

    .line 1172
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1173
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_icon_like_b:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1179
    :goto_2cb
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Sticker:Ljava/lang/String;

    iget-object v3, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    iget-object v4, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgCommentIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)Z

    move-result v12

    .line 1181
    .local v12, "isShowIcon":Z
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutBackWhite:Landroid/widget/RelativeLayout;

    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1194
    new-instance v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    invoke-direct {v15}, Lic/buzzebeeslib/bean/TagLikeCampaignReview;-><init>()V

    .line 1195
    .local v15, "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    iput-object v13, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    .line 1196
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->layoutLike:Landroid/widget/RelativeLayout;

    .line 1197
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->pbImgLike:Landroid/widget/ProgressBar;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->pbImgLike:Landroid/widget/ProgressBar;

    .line 1198
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    .line 1199
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    iput-object v2, v15, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->tvLike:Landroid/widget/TextView;

    .line 1200
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1202
    return-object v16

    .line 1028
    .end local v9    # "holder":Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    .end local v11    # "isPhotoLayout":Z
    .end local v12    # "isShowIcon":Z
    .end local v15    # "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    .end local v16    # "view":Landroid/view/View;
    :catch_302
    move-exception v8

    .line 1029
    .local v8, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v8}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_15

    .line 1068
    .end local v8    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v9    # "holder":Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    .restart local v16    # "view":Landroid/view/View;
    :cond_308
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "holder":Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    check-cast v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;

    .restart local v9    # "holder":Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    goto/16 :goto_181

    .line 1084
    .restart local v11    # "isPhotoLayout":Z
    :cond_310
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvTempForPhoto:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1085
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1086
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarPhoto:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1087
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1088
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1089
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgBarPhotoTemp:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1b6

    .line 1121
    :cond_339
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1122
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1123
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    if-eqz v2, :cond_23c

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23c

    .line 1124
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_23c

    .line 1125
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->ratingBarStatus:Landroid/widget/RatingBar;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    goto/16 :goto_23c

    .line 1135
    :cond_369
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    iget-wide v4, v13, Lic/buzzebeeslib/bean/CampaignReview;->CreatedTime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lic/buzzebeeslib/util/BBUtil;->CDateToTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_251

    .line 1143
    :cond_37e
    iget-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 1144
    const/4 v2, 0x1

    iput-boolean v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    goto/16 :goto_287

    .line 1151
    :cond_387
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    iget-object v3, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setVisibility(I)V

    goto/16 :goto_298

    .line 1156
    :cond_396
    const-string v2, ""

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 1157
    const-string v2, ""

    iput-object v2, v13, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 1159
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1161
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setVisibility(I)V

    goto/16 :goto_29e

    .line 1175
    :cond_3b4
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1176
    iget-object v2, v9, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_icon_like_a:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_2cb
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

    .line 1206
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/StickerUtil;->STICKERS_MAPPING(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/Sticker;

    .line 1207
    .local v6, "sticker":Lic/buzzebeeslib/bean/Sticker;
    if-eqz v6, :cond_3c

    .line 1208
    iget-object v0, v6, Lic/buzzebeeslib/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1209
    invoke-virtual {p2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$11(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v1, v6, Lic/buzzebeeslib/bean/Sticker;->PictureUrl:Ljava/lang/String;

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1214
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1224
    :goto_33
    return v5

    .line 1217
    :cond_34
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1218
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 1219
    goto :goto_33

    .line 1222
    :cond_3c
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1223
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 1224
    goto :goto_33
.end method
