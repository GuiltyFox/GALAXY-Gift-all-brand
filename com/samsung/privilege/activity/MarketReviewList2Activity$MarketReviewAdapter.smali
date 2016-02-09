.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MarketReviewList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MarketReviewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
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

.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Ljava/util/ArrayList;)V
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
    .line 737
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/MarketReview;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 738
    iput-object p2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

    .line 739
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->doViewPhotoSmart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    return-object v0
.end method

.method private doViewPhotoSmart(Ljava/lang/String;)V
    .registers 7
    .param p1, "photo_src"    # Ljava/lang/String;

    .prologue
    .line 1028
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/PhotoViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1029
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v2, v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 1034
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_17
    return-void

    .line 1031
    :catch_18
    move-exception v0

    .line 1032
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

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 746
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 750
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/privilege/bean/MarketReview;

    .line 784
    .local v16, "review":Lcom/samsung/privilege/bean/MarketReview;
    const/4 v11, 0x0

    .line 785
    .local v11, "holder":Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    move-object/from16 v19, p2

    .line 787
    .local v19, "view":Landroid/view/View;
    if-eqz p2, :cond_17

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3cf

    .line 788
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    .line 789
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030101

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 790
    new-instance v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;

    .end local v11    # "holder":Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;)V

    .line 791
    .restart local v11    # "holder":Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    const v2, 0x7f160022

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvTempForPhoto:Landroid/widget/TextView;

    .line 792
    const v2, 0x7f160009

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutBackWhite:Landroid/widget/RelativeLayout;

    .line 793
    const/high16 v2, 0x7f160000

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    .line 794
    const v2, 0x7f160001

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    .line 795
    const v2, 0x7f16000c

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    .line 796
    const v2, 0x7f16000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

    .line 797
    const v2, 0x7f160007

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    .line 798
    const v2, 0x7f16000f

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    .line 799
    const v2, 0x7f160010

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgCreateTimePhoto:Landroid/widget/ImageView;

    .line 800
    const v2, 0x7f160011

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    .line 801
    const v2, 0x7f16001f

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    .line 802
    const v2, 0x7f160020

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgCreateTime:Landroid/widget/ImageView;

    .line 803
    const v2, 0x7f160008

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    .line 804
    const v2, 0x7f160004

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutStatus:Landroid/widget/RelativeLayout;

    .line 805
    const v2, 0x7f160002

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    .line 806
    const v2, 0x7f160003

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    .line 807
    const v2, 0x7f160013

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/RelativeLayoutButton;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lcom/samsung/privilege/control/RelativeLayoutButton;

    .line 808
    const v2, 0x7f160014

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutBarPhoto:Landroid/widget/RelativeLayout;

    .line 809
    const v2, 0x7f160017

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    .line 812
    const v2, 0x7f160027

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgBarLike:Landroid/widget/ImageView;

    .line 813
    const v2, 0x7f160019

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    .line 814
    const v2, 0x7f16001a

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    .line 815
    const v2, 0x7f160005

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    .line 816
    const v2, 0x7f160026

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/loopj/android/image/SmartImageView;

    iput-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgReviewIcon:Lcom/loopj/android/image/SmartImageView;

    .line 818
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 823
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    :goto_16c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v18

    .line 824
    .local v18, "tf":Landroid/graphics/Typeface;
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 825
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 826
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 827
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 828
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 829
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 831
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 832
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 833
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 834
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 835
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 836
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvSeeMore:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "fonts/kit55p.ttf"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    .line 839
    .local v10, "font_kit55p":Landroid/graphics/Typeface;
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 841
    const/4 v14, 0x0

    .line 842
    .local v14, "isPhotoLayout":Z
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/samsung/privilege/bean/MarketReview;->ImageUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_235

    .line 843
    const/4 v14, 0x1

    .line 846
    :cond_235
    if-eqz v14, :cond_3d7

    .line 847
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvTempForPhoto:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 848
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 849
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 858
    :goto_24a
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/profile/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/samsung/privilege/bean/MarketReview;->UserId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/picture"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 861
    .local v3, "profile_src":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$8(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    iget-object v4, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const v6, 0x7f020315

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 862
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 864
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvDisplayName:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/samsung/privilege/bean/MarketReview;->Name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    if-eqz v14, :cond_3ed

    .line 867
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/samsung/privilege/bean/MarketReview;->PlaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/samsung/privilege/bean/MarketReview;->ImageUrl:Ljava/lang/String;

    const-string v4, "https:"

    const-string v6, "http:"

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 869
    .local v5, "imageUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$8(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v4

    iget-object v6, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    iget-object v7, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

    const v8, 0x7f02039f

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 870
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    new-instance v4, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$1;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;Lcom/samsung/privilege/bean/MarketReview;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    .end local v5    # "imageUrl":Ljava/lang/String;
    :goto_2c9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2e3

    .line 880
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgProfile:Landroid/widget/ImageView;

    new-instance v4, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$2;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    :cond_2e3
    if-eqz v14, :cond_3f5

    .line 898
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/samsung/privilege/bean/MarketReview;->CreatedTime:J

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/BBUtil;->CDateToTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    :goto_2f2
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_424

    .line 905
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    .line 906
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x64

    if-le v2, v4, :cond_404

    .line 907
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x64

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    .line 913
    :goto_334
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    if-eqz v2, :cond_413

    .line 914
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lcom/samsung/privilege/control/RelativeLayoutButton;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/control/RelativeLayoutButton;->setVisibility(I)V

    .line 920
    :goto_34a
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 931
    :goto_350
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lcom/samsung/privilege/control/RelativeLayoutButton;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/control/RelativeLayoutButton;->setTag(Ljava/lang/Object;)V

    .line 933
    move-object/from16 v0, v16

    iget v2, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    if-gez v2, :cond_364

    .line 934
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    .line 941
    :cond_364
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget v4, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    invoke-static {v4}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    if-eqz v2, :cond_447

    .line 944
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    const v4, 0x7f02031a

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 945
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    const v4, 0x7f02007b

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 951
    :goto_387
    if-lez p1, :cond_495

    .line 952
    rem-int/lit8 v13, p1, 0x6

    .line 953
    .local v13, "intTemp":I
    packed-switch v13, :pswitch_data_4a0

    .line 979
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 987
    .end local v13    # "intTemp":I
    :goto_396
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/samsung/privilege/bean/MarketReview;->Sticker:Ljava/lang/String;

    iget-object v4, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    iget-object v6, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgReviewIcon:Lcom/loopj/android/image/SmartImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v6}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Lcom/loopj/android/image/SmartImageView;)Z

    move-result v15

    .line 989
    .local v15, "isShowIcon":Z
    new-instance v17, Lcom/samsung/privilege/bean/TagLikeMarketReview;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/privilege/bean/TagLikeMarketReview;-><init>()V

    .line 990
    .local v17, "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/samsung/privilege/bean/TagLikeMarketReview;->viewRoot:Landroid/view/View;

    .line 991
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    .line 992
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->layoutLike:Landroid/widget/RelativeLayout;

    .line 994
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->imgLike:Landroid/widget/ImageView;

    .line 995
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->tvLike:Landroid/widget/TextView;

    .line 996
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutLike:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 998
    return-object v19

    .line 820
    .end local v3    # "profile_src":Ljava/lang/String;
    .end local v10    # "font_kit55p":Landroid/graphics/Typeface;
    .end local v14    # "isPhotoLayout":Z
    .end local v15    # "isShowIcon":Z
    .end local v17    # "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    .end local v18    # "tf":Landroid/graphics/Typeface;
    :cond_3cf
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "holder":Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    check-cast v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;

    .restart local v11    # "holder":Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
    goto/16 :goto_16c

    .line 851
    .restart local v10    # "font_kit55p":Landroid/graphics/Typeface;
    .restart local v14    # "isPhotoLayout":Z
    .restart local v18    # "tf":Landroid/graphics/Typeface;
    :cond_3d7
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvTempForPhoto:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 852
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 853
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_24a

    .line 876
    .restart local v3    # "profile_src":Ljava/lang/String;
    :cond_3ed
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgPhotoSmart:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2c9

    .line 901
    :cond_3f5
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvCreateTime:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/samsung/privilege/bean/MarketReview;->CreatedTime:J

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/BBUtil;->CDateToTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2f2

    .line 909
    :cond_404
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    .line 910
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    goto/16 :goto_334

    .line 917
    :cond_413
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lcom/samsung/privilege/control/RelativeLayoutButton;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/control/RelativeLayoutButton;->setVisibility(I)V

    goto/16 :goto_34a

    .line 922
    :cond_424
    const-string v2, ""

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    .line 923
    const-string v2, ""

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    .line 925
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvStatus:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 927
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->layoutSeeMore:Lcom/samsung/privilege/control/RelativeLayoutButton;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/control/RelativeLayoutButton;->setVisibility(I)V

    goto/16 :goto_350

    .line 947
    :cond_447
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgLike:Landroid/widget/ImageView;

    const v4, 0x7f02031b

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 948
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->tvLike:Landroid/widget/TextView;

    const v4, 0x7f02007c

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_387

    .line 955
    .restart local v13    # "intTemp":I
    :pswitch_459
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_396

    .line 959
    :pswitch_463
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_396

    .line 963
    :pswitch_46d
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e5

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_396

    .line 967
    :pswitch_477
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e6

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_396

    .line 971
    :pswitch_481
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e7

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_396

    .line 975
    :pswitch_48b
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_396

    .line 984
    .end local v13    # "intTemp":I
    :cond_495
    iget-object v2, v11, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_396

    .line 953
    nop

    :pswitch_data_4a0
    .packed-switch 0x0
        :pswitch_459
        :pswitch_463
        :pswitch_46d
        :pswitch_477
        :pswitch_481
        :pswitch_48b
    .end packed-switch
.end method

.method public setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Lcom/loopj/android/image/SmartImageView;)Z
    .registers 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "progressBarLoadingIcon"    # Landroid/widget/ProgressBar;
    .param p3, "imgReviewIcon"    # Lcom/loopj/android/image/SmartImageView;

    .prologue
    const/4 v5, 0x1

    const/16 v1, 0x8

    const/4 v7, 0x0

    .line 1002
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/util/StickerUtil;->STICKERS_MAPPING(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/privilege/bean/Sticker;

    .line 1003
    .local v6, "sticker":Lcom/samsung/privilege/bean/Sticker;
    if-eqz v6, :cond_3d

    .line 1004
    iget-object v0, v6, Lcom/samsung/privilege/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1005
    invoke-virtual {p2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1011
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$8(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/privilege/bean/Sticker;->PictureUrl:Ljava/lang/String;

    const v4, 0x7f02039f

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1012
    invoke-virtual {p3, v7}, Lcom/loopj/android/image/SmartImageView;->setVisibility(I)V

    .line 1022
    :goto_34
    return v5

    .line 1015
    :cond_35
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1016
    invoke-virtual {p3, v1}, Lcom/loopj/android/image/SmartImageView;->setVisibility(I)V

    move v5, v7

    .line 1017
    goto :goto_34

    .line 1020
    :cond_3d
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1021
    invoke-virtual {p3, v1}, Lcom/loopj/android/image/SmartImageView;->setVisibility(I)V

    move v5, v7

    .line 1022
    goto :goto_34
.end method
