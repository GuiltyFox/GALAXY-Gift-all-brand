.class Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;
.super Landroid/widget/BaseAdapter;
.source "RequestHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestHelpAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;
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

.field final synthetic this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity;Ljava/util/ArrayList;)V
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
    .line 836
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/MarketReview;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 837
    iput-object p2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->data:Ljava/util/ArrayList;

    .line 838
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1133
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->doViewPhotoSmart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;)Lcom/samsung/privilege/activity/RequestHelpActivity;
    .registers 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    return-object v0
.end method

.method private doViewPhotoSmart(Ljava/lang/String;)V
    .registers 7
    .param p1, "photo_src"    # Ljava/lang/String;

    .prologue
    .line 1135
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/PhotoViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1136
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1137
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 1141
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_17
    return-void

    .line 1138
    :catch_18
    move-exception v0

    .line 1139
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
    .line 841
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 845
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 849
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 23
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/privilege/bean/MarketReview;

    .line 886
    .local v15, "request":Lcom/samsung/privilege/bean/MarketReview;
    const/4 v10, 0x0

    .line 887
    .local v10, "holder":Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;
    move-object/from16 v18, p2

    .line 889
    .local v18, "view":Landroid/view/View;
    if-eqz p2, :cond_17

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3b8

    .line 890
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 891
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030116

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 892
    new-instance v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;

    .end local v10    # "holder":Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;)V

    .line 893
    .restart local v10    # "holder":Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;
    const v2, 0x7f0c0378

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvTempForPhoto:Landroid/widget/TextView;

    .line 894
    const v2, 0x7f0c0379

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutBackWhite:Landroid/widget/RelativeLayout;

    .line 895
    const v2, 0x7f0c037b

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgProfile:Landroid/widget/ImageView;

    .line 896
    const v2, 0x7f0c0382

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvDisplayName:Landroid/widget/TextView;

    .line 897
    const v2, 0x7f0c037c

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    .line 898
    const v2, 0x7f0c037d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

    .line 899
    const v2, 0x7f0c037e

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgPhotoSmart:Landroid/widget/ImageView;

    .line 900
    const v2, 0x7f0c037f

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    .line 901
    const v2, 0x7f0c0380

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgCreateTimePhoto:Landroid/widget/ImageView;

    .line 902
    const v2, 0x7f0c0381

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    .line 903
    const v2, 0x7f0c0383

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    .line 904
    const v2, 0x7f0c0384

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgCreateTime:Landroid/widget/ImageView;

    .line 905
    const v2, 0x7f0c0385

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvCreateTime:Landroid/widget/TextView;

    .line 906
    const v2, 0x7f0c0386

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutStatus:Landroid/widget/RelativeLayout;

    .line 907
    const v2, 0x7f0c0064

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvStatus:Landroid/widget/TextView;

    .line 908
    const v2, 0x7f0c038a

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvSeeMore:Landroid/widget/TextView;

    .line 909
    const v2, 0x7f0c0389

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/RelativeLayoutButton;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutSeeMore:Lcom/samsung/privilege/control/RelativeLayoutButton;

    .line 910
    const v2, 0x7f0c038b

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutBarPhoto:Landroid/widget/RelativeLayout;

    .line 911
    const v2, 0x7f0c038d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutLike:Landroid/widget/RelativeLayout;

    .line 914
    const v2, 0x7f0c038c

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgBarLike:Landroid/widget/ImageView;

    .line 915
    const v2, 0x7f0c0086

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgLike:Landroid/widget/ImageView;

    .line 916
    const v2, 0x7f0c013e

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvLike:Landroid/widget/TextView;

    .line 917
    const v2, 0x7f0c0387

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    .line 918
    const v2, 0x7f0c0388

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/loopj/android/image/SmartImageView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgReviewIcon:Lcom/loopj/android/image/SmartImageView;

    .line 920
    const v2, 0x7f16001b

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutCommentCount:Landroid/widget/RelativeLayout;

    .line 921
    const v2, 0x7f16001d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvCommentCount:Landroid/widget/TextView;

    .line 923
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 928
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    :goto_187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v17

    .line 929
    .local v17, "tf":Landroid/graphics/Typeface;
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvDisplayName:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 930
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 931
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 932
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvCreateTime:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 933
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 934
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvSeeMore:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 935
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvLike:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 937
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvDisplayName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 938
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 939
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 940
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvCreateTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 941
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 942
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvSeeMore:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 943
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvLike:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 945
    const/4 v13, 0x0

    .line 946
    .local v13, "isPhotoLayout":Z
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->ImageUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_253

    .line 947
    const/4 v13, 0x1

    .line 950
    :cond_253
    if-eqz v13, :cond_3c0

    .line 951
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvTempForPhoto:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 952
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 953
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 962
    :goto_268
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

    .line 965
    .local v3, "profile_src":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$6(Lcom/samsung/privilege/activity/RequestHelpActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    iget-object v4, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgProfile:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const v6, 0x7f020317

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 966
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgProfile:Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 967
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutCommentCount:Landroid/widget/RelativeLayout;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 969
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvDisplayName:Landroid/widget/TextView;

    iget-object v4, v15, Lcom/samsung/privilege/bean/MarketReview;->Name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    if-eqz v13, :cond_3d6

    .line 972
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvLocationNamePhoto:Landroid/widget/TextView;

    iget-object v4, v15, Lcom/samsung/privilege/bean/MarketReview;->PlaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->ImageUrl:Ljava/lang/String;

    const-string v4, "https:"

    const-string v6, "http:"

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 974
    .local v5, "imageUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$6(Lcom/samsung/privilege/activity/RequestHelpActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v4

    iget-object v6, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgPhotoSmart:Landroid/widget/ImageView;

    iget-object v7, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

    const v8, 0x7f0203a7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 975
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgPhotoSmart:Landroid/widget/ImageView;

    new-instance v4, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$1;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;Lcom/samsung/privilege/bean/MarketReview;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 984
    .end local v5    # "imageUrl":Ljava/lang/String;
    :goto_2e6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_300

    .line 985
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgProfile:Landroid/widget/ImageView;

    new-instance v4, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$2;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1001
    :cond_300
    if-eqz v13, :cond_3de

    .line 1003
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvCreateTimePhoto:Landroid/widget/TextView;

    iget-wide v6, v15, Lcom/samsung/privilege/bean/MarketReview;->CreatedTime:J

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/BBUtil;->CDateToTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    :goto_30d
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3fa

    .line 1010
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    iput-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    .line 1014
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    iput-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    .line 1015
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    .line 1018
    iget-boolean v2, v15, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    if-eqz v2, :cond_3eb

    .line 1019
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvStatus:Landroid/widget/TextView;

    iget-object v4, v15, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutSeeMore:Lcom/samsung/privilege/control/RelativeLayoutButton;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/control/RelativeLayoutButton;->setVisibility(I)V

    .line 1026
    :goto_334
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvStatus:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1037
    :goto_33a
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutSeeMore:Lcom/samsung/privilege/control/RelativeLayoutButton;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/control/RelativeLayoutButton;->setTag(Ljava/lang/Object;)V

    .line 1039
    iget v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    if-gez v2, :cond_34a

    .line 1040
    const/4 v2, 0x0

    iput v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    .line 1043
    :cond_34a
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvCommentCount:Landroid/widget/TextView;

    iget v4, v15, Lcom/samsung/privilege/bean/MarketReview;->CommentCount:I

    invoke-static {v4}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvLike:Landroid/widget/TextView;

    iget v4, v15, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    invoke-static {v4}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    iget-boolean v2, v15, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    if-eqz v2, :cond_419

    .line 1051
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgLike:Landroid/widget/ImageView;

    const v4, 0x7f02031c

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1052
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvLike:Landroid/widget/TextView;

    const v4, 0x7f02007b

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1058
    :goto_374
    if-lez p1, :cond_467

    .line 1059
    rem-int/lit8 v12, p1, 0x6

    .line 1060
    .local v12, "intTemp":I
    packed-switch v12, :pswitch_data_472

    .line 1086
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e5

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1094
    .end local v12    # "intTemp":I
    :goto_383
    iget-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->Sticker:Ljava/lang/String;

    iget-object v4, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->progressBarLoadingIcon:Landroid/widget/ProgressBar;

    iget-object v6, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgReviewIcon:Lcom/loopj/android/image/SmartImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v6}, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Lcom/loopj/android/image/SmartImageView;)Z

    move-result v14

    .line 1096
    .local v14, "isShowIcon":Z
    new-instance v16, Lcom/samsung/privilege/bean/TagLikeMarketReview;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/privilege/bean/TagLikeMarketReview;-><init>()V

    .line 1097
    .local v16, "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/privilege/bean/TagLikeMarketReview;->viewRoot:Landroid/view/View;

    .line 1098
    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    .line 1099
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutLike:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->layoutLike:Landroid/widget/RelativeLayout;

    .line 1101
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgLike:Landroid/widget/ImageView;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->imgLike:Landroid/widget/ImageView;

    .line 1102
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvLike:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->tvLike:Landroid/widget/TextView;

    .line 1103
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutLike:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1105
    return-object v18

    .line 925
    .end local v3    # "profile_src":Ljava/lang/String;
    .end local v13    # "isPhotoLayout":Z
    .end local v14    # "isShowIcon":Z
    .end local v16    # "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    .end local v17    # "tf":Landroid/graphics/Typeface;
    :cond_3b8
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "holder":Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;
    check-cast v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;

    .restart local v10    # "holder":Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;
    goto/16 :goto_187

    .line 955
    .restart local v13    # "isPhotoLayout":Z
    .restart local v17    # "tf":Landroid/graphics/Typeface;
    :cond_3c0
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvTempForPhoto:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 956
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutPhoto:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 957
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutCreateTime:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_268

    .line 981
    .restart local v3    # "profile_src":Ljava/lang/String;
    :cond_3d6
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgPhotoSmart:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2e6

    .line 1006
    :cond_3de
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvCreateTime:Landroid/widget/TextView;

    iget-wide v6, v15, Lcom/samsung/privilege/bean/MarketReview;->CreatedTime:J

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/BBUtil;->CDateToTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_30d

    .line 1023
    :cond_3eb
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvStatus:Landroid/widget/TextView;

    iget-object v4, v15, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutSeeMore:Lcom/samsung/privilege/control/RelativeLayoutButton;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/control/RelativeLayoutButton;->setVisibility(I)V

    goto/16 :goto_334

    .line 1028
    :cond_3fa
    const-string v2, ""

    iput-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    .line 1029
    const-string v2, ""

    iput-object v2, v15, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    .line 1031
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvStatus:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvStatus:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1033
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->layoutSeeMore:Lcom/samsung/privilege/control/RelativeLayoutButton;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/control/RelativeLayoutButton;->setVisibility(I)V

    goto/16 :goto_33a

    .line 1054
    :cond_419
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgLike:Landroid/widget/ImageView;

    const v4, 0x7f02031d

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1055
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->tvLike:Landroid/widget/TextView;

    const v4, 0x7f02007c

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_374

    .line 1062
    .restart local v12    # "intTemp":I
    :pswitch_42b
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e5

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_383

    .line 1066
    :pswitch_435
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e6

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_383

    .line 1070
    :pswitch_43f
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e7

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_383

    .line 1074
    :pswitch_449
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_383

    .line 1078
    :pswitch_453
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e9

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_383

    .line 1082
    :pswitch_45d
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202ea

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_383

    .line 1091
    .end local v12    # "intTemp":I
    :cond_467
    iget-object v2, v10, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->imgBarLike:Landroid/widget/ImageView;

    const v4, 0x7f0202e5

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_383

    .line 1060
    nop

    :pswitch_data_472
    .packed-switch 0x0
        :pswitch_42b
        :pswitch_435
        :pswitch_43f
        :pswitch_449
        :pswitch_453
        :pswitch_45d
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

    .line 1109
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/util/StickerUtil;->STICKERS_MAPPING(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/privilege/bean/Sticker;

    .line 1110
    .local v6, "sticker":Lcom/samsung/privilege/bean/Sticker;
    if-eqz v6, :cond_3d

    .line 1111
    iget-object v0, v6, Lcom/samsung/privilege/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1112
    invoke-virtual {p2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1118
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$6(Lcom/samsung/privilege/activity/RequestHelpActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/privilege/bean/Sticker;->PictureUrl:Ljava/lang/String;

    const v4, 0x7f0203a7

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1119
    invoke-virtual {p3, v7}, Lcom/loopj/android/image/SmartImageView;->setVisibility(I)V

    .line 1129
    :goto_34
    return v5

    .line 1122
    :cond_35
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1123
    invoke-virtual {p3, v1}, Lcom/loopj/android/image/SmartImageView;->setVisibility(I)V

    move v5, v7

    .line 1124
    goto :goto_34

    .line 1127
    :cond_3d
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1128
    invoke-virtual {p3, v1}, Lcom/loopj/android/image/SmartImageView;->setVisibility(I)V

    move v5, v7

    .line 1129
    goto :goto_34
.end method
