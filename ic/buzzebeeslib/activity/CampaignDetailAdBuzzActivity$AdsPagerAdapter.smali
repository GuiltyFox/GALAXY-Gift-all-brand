.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "CampaignDetailAdBuzzActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdsPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field gAdBuzzItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/AdBuzzItem;",
            ">;"
        }
    .end annotation
.end field

.field gViewRoot:Landroid/view/View;

.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/AdBuzzItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p3, "adBuzzItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/AdBuzzItem;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 526
    iput-object p2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->context:Landroid/content/Context;

    .line 527
    iput-object p3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    .line 528
    invoke-virtual {p1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 529
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)V
    .registers 1

    .prologue
    .line 1142
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->reset()V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1254
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->resetSurvey(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/Campaign;)V
    .registers 2

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->checkAddressBeforeRedeem(Lic/buzzebeeslib/bean/Campaign;)V

    return-void
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    return-object v0
.end method

.method private checkAddressBeforeRedeem(Lic/buzzebeeslib/bean/Campaign;)V
    .registers 9
    .param p1, "pCampaign"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    const/4 v6, 0x1

    .line 944
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const-string v3, ""

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    sget v5, Lic/buzzebeeslib/R$string;->profile_setting_checking_address:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$19(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Landroid/app/ProgressDialog;)V

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/me?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/Campaign;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 950
    return-void
.end method

.method private initialViewPhoto(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "adBuzzItem"    # Lic/buzzebeeslib/bean/AdBuzzItem;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 1289
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v4, Lic/buzzebeeslib/R$layout;->bz_campaign_detail_ad_item_pager_image:I

    invoke-virtual {v0, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 1290
    .local v6, "viewPhoto":Landroid/view/View;
    iput-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    .line 1291
    sget v0, Lic/buzzebeeslib/R$id;->image:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1292
    .local v2, "imageView":Landroid/widget/ImageView;
    sget v0, Lic/buzzebeeslib/R$id;->pbLoadingImg:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1294
    .local v3, "pbLoadingImg":Landroid/widget/ProgressBar;
    iget-object v0, p1, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v1, v0, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 1296
    .local v1, "img_url":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$22(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1298
    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v4, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$8;

    invoke-direct {v4, p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$8;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1327
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v0

    new-instance v4, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$9;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$9;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)V

    invoke-virtual {v0, v4}, Lic/buzzebeeslib/control/CustomPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1422
    return-object v6
.end method

.method private initialViewSurvey(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 35
    .param p1, "adBuzzItem"    # Lic/buzzebeeslib/bean/AdBuzzItem;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lic/buzzebeeslib/R$layout;->bz_campaign_detail_ad_item_pager_survey:I

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v30

    .line 574
    .local v30, "viewSurvey":Landroid/view/View;
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    .line 575
    sget v2, Lic/buzzebeeslib/R$idSurvey;->layoutRootSurvey:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 576
    .local v6, "layoutRootSurvey":Landroid/widget/LinearLayout;
    sget v2, Lic/buzzebeeslib/R$idSurvey;->ivExit:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 577
    .local v19, "ivExit":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$idSurvey;->ivReload:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 578
    .local v20, "ivReload":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$idSurvey;->ivSubmit:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 580
    .local v21, "ivSubmit":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$1;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/CustomPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 683
    new-instance v2, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    new-instance v2, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$3;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->IsLastItem:Z

    if-nez v2, :cond_72

    .line 751
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 756
    :cond_72
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lic/buzzebeeslib/R$layout;->bz_survey_title:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    .line 757
    .local v31, "viewTitle":Landroid/view/View;
    sget v2, Lic/buzzebeeslib/R$idSurvey;->tvTitle:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 758
    .local v27, "tvTitle":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$15(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 759
    move-object/from16 v0, p1

    iget-object v2, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->title:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lic/buzzebeeslib/R$layout;->bz_survey_line:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    .line 763
    .local v29, "viewLine":Landroid/view/View;
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 765
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_b6
    move-object/from16 v0, p1

    iget-object v2, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->fields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_c5

    .line 940
    return-object v30

    .line 766
    :cond_c5
    move-object/from16 v0, p1

    iget-object v2, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->fields:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 768
    .local v17, "field":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lic/buzzebeeslib/R$layout;->bz_survey_field_row:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 770
    .local v7, "viewField":Landroid/view/View;
    sget v2, Lic/buzzebeeslib/R$idSurvey;->layoutQuestion:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    .line 771
    .local v25, "layoutQuestion":Landroid/widget/RelativeLayout;
    sget v2, Lic/buzzebeeslib/R$idSurvey;->layoutInfoChoice:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 772
    .local v22, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v2, Lic/buzzebeeslib/R$idSurvey;->layoutInfoInput:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 773
    .local v23, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v2, Lic/buzzebeeslib/R$idSurvey;->layoutInfoTextArea:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout;

    .line 775
    .local v24, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 776
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 777
    const/16 v2, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 778
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 780
    move-object/from16 v0, p1

    iget-object v2, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v3, "info_choice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 781
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 782
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 783
    sget v2, Lic/buzzebeeslib/R$idSurvey;->chkFieldChoice:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    .line 784
    .local v14, "chkFieldChoice":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$15(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 785
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 786
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 789
    .local v5, "index":Ljava/lang/String;
    new-instance v2, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$4;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$4;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v14, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    .end local v5    # "index":Ljava/lang/String;
    .end local v14    # "chkFieldChoice":Landroid/widget/CheckBox;
    :goto_16b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_b6

    .line 812
    :cond_16f
    move-object/from16 v0, p1

    iget-object v2, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v3, "info_input"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20d

    .line 813
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 814
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    sget v2, Lic/buzzebeeslib/R$idSurvey;->tvFieldTitle:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 816
    .local v26, "tvField":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$15(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 817
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    sget v2, Lic/buzzebeeslib/R$idSurvey;->etFieldInput:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 822
    .local v15, "etFieldInput":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$15(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 823
    if-eqz v17, :cond_1e9

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e9

    .line 824
    move-object/from16 v0, p1

    iget-object v2, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v2, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 825
    .local v28, "type":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    .line 826
    const/4 v2, 0x3

    invoke-virtual {v15, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 828
    :cond_1e4
    const-string v2, ""

    invoke-virtual {v15, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 830
    .end local v28    # "type":Ljava/lang/String;
    :cond_1e9
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 831
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 832
    new-instance v2, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$5;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/AdBuzzItem;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    new-instance v2, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$6;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_16b

    .line 863
    .end local v15    # "etFieldInput":Landroid/widget/EditText;
    .end local v26    # "tvField":Landroid/widget/TextView;
    :cond_20d
    move-object/from16 v0, p1

    iget-object v2, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v3, "info_text_area"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    .line 864
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 865
    sget v2, Lic/buzzebeeslib/R$idSurvey;->etFieldTextArea:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    .line 866
    .local v16, "etFieldTextArea":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$15(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 867
    if-eqz v17, :cond_245

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_245

    .line 868
    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 870
    :cond_245
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_16b

    .line 873
    .end local v16    # "etFieldTextArea":Landroid/widget/EditText;
    :cond_24a
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 874
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 875
    sget v2, Lic/buzzebeeslib/R$idSurvey;->tvFieldAnswer:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 876
    .restart local v26    # "tvField":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$15(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 877
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 881
    .restart local v5    # "index":Ljava/lang/String;
    new-instance v8, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v5

    move-object v12, v7

    move-object v13, v6

    invoke-direct/range {v8 .. v13}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/AdBuzzItem;Ljava/lang/String;Landroid/view/View;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_16b
.end method

.method private initialViewVideo(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "adBuzzItem"    # Lic/buzzebeeslib/bean/AdBuzzItem;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1633
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v4, Lic/buzzebeeslib/R$layout;->bz_campaign_detail_ad_item_pager_video:I

    invoke-virtual {v3, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gVideoLayout:Landroid/view/View;

    .line 1634
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    iget-object v2, v2, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gVideoLayout:Landroid/view/View;

    iput-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    .line 1636
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    iget-object v2, v2, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gVideoLayout:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$id;->videoSurface:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$23(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Landroid/view/SurfaceView;)V

    .line 1637
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->videoSurface:Landroid/view/SurfaceView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$24(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1638
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->videoSurface:Landroid/view/SurfaceView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$24(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1639
    .local v1, "videoHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v1, v6}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1640
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1641
    invoke-interface {v1, v7}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1643
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$25(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Landroid/media/MediaPlayer;)V

    .line 1644
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    new-instance v3, Lic/buzzebeeslib/control/VideoControllerView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-direct {v3, v4}, Lic/buzzebeeslib/control/VideoControllerView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$26(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Lic/buzzebeeslib/control/VideoControllerView;)V

    .line 1645
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$27(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/VideoControllerView;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$10;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$10;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/VideoControllerView;->setOnRqExitListener(Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;)V

    .line 1653
    :try_start_68
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$28(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1654
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$28(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 1661
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$4(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uri vdo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$28(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1663
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$28(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1664
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$28(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1665
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$28(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_d4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_68 .. :try_end_d4} :catch_e7
    .catch Ljava/lang/SecurityException; {:try_start_68 .. :try_end_d4} :catch_f3
    .catch Ljava/lang/IllegalStateException; {:try_start_68 .. :try_end_d4} :catch_ff
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_d4} :catch_10b

    .line 1681
    :goto_d4
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/CustomPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1741
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    iget-object v2, v2, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gVideoLayout:Landroid/view/View;

    return-object v2

    .line 1667
    :catch_e7
    move-exception v0

    .line 1668
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const-string v3, "IllegalArgumentException"

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_d4

    .line 1670
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_f3
    move-exception v0

    .line 1671
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const-string v3, "SecurityException"

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    .line 1672
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_d4

    .line 1673
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_ff
    move-exception v0

    .line 1674
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const-string v3, "IllegalStateException"

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_d4

    .line 1676
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_10b
    move-exception v0

    .line 1677
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const-string v3, "IOException"

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    .line 1678
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d4
.end method

.method private reset()V
    .registers 4

    .prologue
    .line 1245
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$21(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Z)V

    .line 1246
    const-string v1, "PONG"

    const-string v2, "isOnComplete = false;"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const-class v2, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1249
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "campaign"

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1250
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1251
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->startActivity(Landroid/content/Intent;)V

    .line 1252
    return-void
.end method

.method private resetSurvey(Landroid/view/View;Landroid/view/View;)V
    .registers 15
    .param p1, "pViewRootSurvey"    # Landroid/view/View;
    .param p2, "pViewField"    # Landroid/view/View;

    .prologue
    .line 1255
    sget v11, Lic/buzzebeeslib/R$idSurvey;->layoutRootSurvey:I

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1256
    .local v8, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_11

    .line 1257
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_b
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-lt v3, v11, :cond_12

    .line 1286
    .end local v3    # "j":I
    :cond_11
    return-void

    .line 1258
    .restart local v3    # "j":I
    :cond_12
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1259
    .local v10, "view_field_row":Landroid/view/View;
    if-eq v10, p2, :cond_84

    .line 1260
    sget v11, Lic/buzzebeeslib/R$idSurvey;->layoutQuestion:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1261
    .local v7, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v7, :cond_84

    .line 1262
    sget v11, Lic/buzzebeeslib/R$idSurvey;->layoutInfoChoice:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1263
    .local v4, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v11, Lic/buzzebeeslib/R$idSurvey;->layoutInfoInput:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1264
    .local v5, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v11, Lic/buzzebeeslib/R$idSurvey;->layoutInfoTextArea:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 1266
    .local v6, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_4c

    .line 1267
    sget v11, Lic/buzzebeeslib/R$idSurvey;->tvFieldAnswer:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1268
    .local v9, "tvFieldAnswer":Landroid/widget/TextView;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1270
    .end local v9    # "tvFieldAnswer":Landroid/widget/TextView;
    :cond_4c
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_5e

    .line 1271
    sget v11, Lic/buzzebeeslib/R$idSurvey;->chkFieldChoice:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1272
    .local v0, "chkFieldChoice":Landroid/widget/CheckBox;
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1274
    .end local v0    # "chkFieldChoice":Landroid/widget/CheckBox;
    :cond_5e
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_71

    .line 1275
    sget v11, Lic/buzzebeeslib/R$idSurvey;->etFieldInput:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1276
    .local v1, "etFieldInput":Landroid/widget/EditText;
    const-string v11, ""

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    .end local v1    # "etFieldInput":Landroid/widget/EditText;
    :cond_71
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_84

    .line 1279
    sget v11, Lic/buzzebeeslib/R$idSurvey;->etFieldTextArea:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1280
    .local v2, "etFieldTextArea":Landroid/widget/EditText;
    const-string v11, ""

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    .end local v2    # "etFieldTextArea":Landroid/widget/EditText;
    .end local v4    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v5    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v6    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v7    # "layoutQuestion":Landroid/widget/RelativeLayout;
    :cond_84
    add-int/lit8 v3, v3, 0x1

    goto :goto_b
.end method


# virtual methods
.method public actionSubmit()V
    .registers 32

    .prologue
    .line 1016
    const-string v10, "["

    .line 1017
    .local v10, "info1":Ljava/lang/String;
    const-string v18, ""

    .line 1020
    .local v18, "str_comma":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-object/from16 v25, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static/range {v25 .. v25}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lic/buzzebeeslib/control/CustomPager;->getChildCount()I

    move-result v25

    add-int/lit8 v9, v25, -0x1

    .local v9, "i":I
    :goto_14
    if-gez v9, :cond_11c

    .line 1066
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1069
    const-string v25, "LOGOAT"

    move-object/from16 v0, v25

    invoke-static {v0, v10}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-object/from16 v26, v0

    const-string v27, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-object/from16 v28, v0

    sget v29, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual/range {v28 .. v29}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v30, 0x0

    invoke-static/range {v26 .. v30}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$19(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Landroid/app/ProgressDialog;)V

    .line 1072
    new-instance v6, Lic/buzzebeeslib/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Lic/buzzebeeslib/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1073
    .local v6, "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lic/buzzebeeslib/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1074
    .local v3, "carrier":Ljava/lang/String;
    invoke-virtual {v6}, Lic/buzzebeeslib/util/DeviceHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 1076
    .local v5, "contact_number":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    sget-object v26, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "api/campaign/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-object/from16 v26, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v26 .. v26}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/redeem?token="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "&carrier="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "&contact_number="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1077
    .local v22, "url":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "&info1="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1078
    const-string v25, "campaign.adbuzz"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "redeem url="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    new-instance v17, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v17 .. v17}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1083
    .local v17, "params":Lcom/loopj/android/http/RequestParams;
    new-instance v25, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1084
    return-void

    .line 1021
    .end local v3    # "carrier":Ljava/lang/String;
    .end local v5    # "contact_number":Ljava/lang/String;
    .end local v6    # "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    .end local v17    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v22    # "url":Ljava/lang/String;
    :cond_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-object/from16 v25, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static/range {v25 .. v25}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lic/buzzebeeslib/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 1022
    .local v24, "view_pager_survey":Landroid/view/View;
    sget v25, Lic/buzzebeeslib/R$idSurvey;->layoutRootSurvey:I

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 1023
    .local v16, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v16, :cond_173

    .line 1024
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "{inputs:["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1025
    .local v20, "str_input_prefix":Ljava/lang/String;
    const-string v19, ""

    .line 1026
    .local v19, "str_input_comma":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_14c
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v25

    move/from16 v0, v25

    if-lt v11, v0, :cond_177

    .line 1061
    const-string v25, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_173

    .line 1062
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "]}"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1020
    .end local v11    # "j":I
    .end local v19    # "str_input_comma":Ljava/lang/String;
    .end local v20    # "str_input_prefix":Ljava/lang/String;
    :cond_173
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_14

    .line 1027
    .restart local v11    # "j":I
    .restart local v19    # "str_input_comma":Ljava/lang/String;
    .restart local v20    # "str_input_prefix":Ljava/lang/String;
    :cond_177
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 1028
    .local v23, "view_field_row":Landroid/view/View;
    sget v25, Lic/buzzebeeslib/R$idSurvey;->layoutQuestion:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 1029
    .local v15, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v15, :cond_1f0

    .line 1030
    sget v25, Lic/buzzebeeslib/R$idSurvey;->layoutInfoChoice:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 1031
    .local v12, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v25, Lic/buzzebeeslib/R$idSurvey;->layoutInfoInput:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 1032
    .local v13, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v25, Lic/buzzebeeslib/R$idSurvey;->layoutInfoTextArea:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 1034
    .local v14, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    invoke-virtual {v15}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v25

    if-nez v25, :cond_1f4

    .line 1035
    sget v25, Lic/buzzebeeslib/R$idSurvey;->tvFieldAnswer:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1036
    .local v21, "tvFieldAnswer":Landroid/widget/TextView;
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_1f0

    .line 1037
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "{answer:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v11, -0x2

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "}"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1038
    const-string v18, ","

    .line 1026
    .end local v12    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v13    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v14    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v21    # "tvFieldAnswer":Landroid/widget/TextView;
    :cond_1f0
    :goto_1f0
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_14c

    .line 1040
    .restart local v12    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .restart local v13    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .restart local v14    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    :cond_1f4
    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v25

    if-nez v25, :cond_236

    .line 1041
    sget v25, Lic/buzzebeeslib/R$idSurvey;->chkFieldChoice:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 1042
    .local v4, "chkFieldChoice":Landroid/widget/CheckBox;
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v25

    if-eqz v25, :cond_1f0

    .line 1043
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "{answer:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v11, -0x2

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "}"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1044
    const-string v18, ","

    .line 1046
    goto :goto_1f0

    .end local v4    # "chkFieldChoice":Landroid/widget/CheckBox;
    :cond_236
    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v25

    if-nez v25, :cond_289

    .line 1047
    sget v25, Lic/buzzebeeslib/R$idSurvey;->etFieldInput:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 1048
    .local v7, "etFieldInput":Landroid/widget/EditText;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1049
    const-string v20, ""

    .line 1050
    const-string v19, ","

    .line 1051
    const-string v18, ","

    .line 1052
    goto/16 :goto_1f0

    .end local v7    # "etFieldInput":Landroid/widget/EditText;
    :cond_289
    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v25

    if-nez v25, :cond_1f0

    .line 1053
    sget v25, Lic/buzzebeeslib/R$idSurvey;->etFieldTextArea:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 1054
    .local v8, "etFieldTextArea":Landroid/widget/EditText;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1055
    const-string v20, ""

    .line 1056
    const-string v19, ","

    .line 1057
    const-string v18, ","

    goto/16 :goto_1f0
.end method

.method public actionSubmitValidate(Lic/buzzebeeslib/bean/AdBuzzItem;)V
    .registers 18
    .param p1, "adBuzzItem"    # Lic/buzzebeeslib/bean/AdBuzzItem;

    .prologue
    .line 1087
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v12}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v12

    invoke-virtual {v12}, Lic/buzzebeeslib/control/CustomPager;->getChildCount()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .local v2, "i":I
    :goto_e
    if-gez v2, :cond_11

    .line 1140
    return-void

    .line 1088
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v12}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v12

    invoke-virtual {v12, v2}, Lic/buzzebeeslib/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1089
    .local v11, "view_pager_survey":Landroid/view/View;
    sget v12, Lic/buzzebeeslib/R$idSurvey;->layoutRootSurvey:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1090
    .local v8, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_30

    .line 1091
    const-string v9, ""

    .line 1092
    .local v9, "str_input_comma":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2a
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v12

    if-lt v3, v12, :cond_33

    .line 1087
    .end local v3    # "j":I
    .end local v9    # "str_input_comma":Ljava/lang/String;
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 1093
    .restart local v3    # "j":I
    .restart local v9    # "str_input_comma":Ljava/lang/String;
    :cond_33
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1094
    .local v10, "view_field_row":Landroid/view/View;
    sget v12, Lic/buzzebeeslib/R$idSurvey;->layoutQuestion:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1095
    .local v7, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v7, :cond_2ef

    .line 1096
    sget v12, Lic/buzzebeeslib/R$idSurvey;->layoutInfoChoice:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1097
    .local v4, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v12, Lic/buzzebeeslib/R$idSurvey;->layoutInfoInput:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1098
    .local v5, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v12, Lic/buzzebeeslib/R$idSurvey;->layoutInfoTextArea:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 1100
    .local v6, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_2ef

    .line 1102
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_2ef

    .line 1104
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v12

    if-nez v12, :cond_2f3

    .line 1105
    sget v12, Lic/buzzebeeslib/R$idSurvey;->etFieldInput:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1106
    .local v1, "etFieldInput":Landroid/widget/EditText;
    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v13, v3, -0x2

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    const-string v13, "text"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f7

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v14, v3, -0x2

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->min_length:I

    if-ge v13, v12, :cond_f7

    .line 1107
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$20(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Z)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v12, "Please input "

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v15, v3, -0x2

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " minimun "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v15, v3, -0x2

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->min_length:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 1110
    :cond_f7
    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v13, v3, -0x2

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    const-string v13, "email"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17b

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v14, v3, -0x2

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->min_length:I

    if-ge v13, v12, :cond_17b

    .line 1111
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$20(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Z)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v12, "Please input "

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v15, v3, -0x2

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " minimun "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v15, v3, -0x2

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->min_length:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 1115
    :cond_17b
    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v13, v3, -0x2

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    const-string v13, "email"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1df

    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->validateEmail(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1df

    .line 1116
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$20(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Z)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v12, "Please input "

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v15, v3, -0x2

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " invalid"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 1119
    :cond_1df
    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v13, v3, -0x2

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    const-string v13, "number"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_263

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v14, v3, -0x2

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->min_length:I

    if-ge v13, v12, :cond_263

    .line 1120
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$20(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Z)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v12, "Please input "

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v15, v3, -0x2

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " minimun "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v15, v3, -0x2

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->min_length:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 1124
    :cond_263
    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v13, v3, -0x2

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    const-string v13, "textarea"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e7

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v14, v3, -0x2

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->min_length:I

    if-ge v13, v12, :cond_2e7

    .line 1125
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$20(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Z)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v12, "Please input "

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v15, v3, -0x2

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " minimun "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v12, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    add-int/lit8 v15, v3, -0x2

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v12, v12, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->min_length:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 1130
    :cond_2e7
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$20(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Z)V

    .line 1092
    .end local v1    # "etFieldInput":Landroid/widget/EditText;
    .end local v4    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v5    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v6    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    :cond_2ef
    :goto_2ef
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2a

    .line 1133
    .restart local v4    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .restart local v5    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .restart local v6    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    :cond_2f3
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    goto :goto_2ef
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 570
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 544
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/AdBuzzItem;

    .line 546
    .local v0, "adBuzzItem":Lic/buzzebeeslib/bean/AdBuzzItem;
    iget-object v4, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    if-eqz v4, :cond_51

    .line 547
    iget-object v4, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Content_type:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 548
    invoke-direct {p0, v0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->initialViewVideo(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 549
    .local v3, "viewVideo":Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v3, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 550
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-static {v4, p2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$8(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;I)V

    .line 551
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-static {v4, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$9(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;I)V

    .line 552
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lic/buzzebeeslib/control/CustomPager;->setPagingEnabled(Z)V

    .line 564
    .end local v3    # "viewVideo":Landroid/view/View;
    :goto_35
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    return-object v4

    .line 554
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_38
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-static {v4, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$9(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;I)V

    .line 555
    invoke-direct {p0, v0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->initialViewPhoto(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 556
    .local v1, "viewPhoto":Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v1, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 557
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/control/CustomPager;->setPagingEnabled(Z)V

    goto :goto_35

    .line 560
    .end local v1    # "viewPhoto":Landroid/view/View;
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_51
    invoke-direct {p0, v0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->initialViewSurvey(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 561
    .local v2, "viewSurvey":Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v2, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_35
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 539
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
