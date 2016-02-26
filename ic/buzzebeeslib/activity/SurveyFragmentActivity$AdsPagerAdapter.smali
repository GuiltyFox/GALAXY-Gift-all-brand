.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SurveyFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdsPagerAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field filter:Landroid/text/InputFilter;

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

.field final synthetic this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
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
    .line 482
    .local p3, "adBuzzItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/AdBuzzItem;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1164
    new-instance v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$1;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$1;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    .line 483
    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->context:Landroid/content/Context;

    .line 484
    iput-object p3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    .line 485
    invoke-virtual {p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 486
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1799
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->resetSurvey(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    return-object v0
.end method

.method private initialViewDescription(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 17
    .param p1, "adBuzzItem"    # Lic/buzzebeeslib/bean/AdBuzzItem;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "position"    # I

    .prologue
    .line 1988
    iget-object v10, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v11, Lic/buzzebeeslib/R$layout;->bz_survey_v2_list_row:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, p2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1990
    .local v9, "viewDescription":Landroid/view/View;
    iput-object v9, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    .line 1991
    sget v10, Lic/buzzebeeslib/R$id;->layoutRootSurvey:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1992
    .local v2, "layoutRootSurvey":Landroid/widget/LinearLayout;
    sget v10, Lic/buzzebeeslib/R$id;->vLine:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1993
    .local v7, "vLine":Landroid/view/View;
    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1994
    iget-object v10, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v11, Lic/buzzebeeslib/R$layout;->bz_survey_v2_last_page:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1995
    .local v8, "viewContent":Landroid/view/View;
    sget v10, Lic/buzzebeeslib/R$id;->tvSurveyName:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1996
    .local v6, "tvSurveyName":Landroid/widget/TextView;
    sget v10, Lic/buzzebeeslib/R$id;->tvNumQuestion:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1997
    .local v5, "tvNumQuestion":Landroid/widget/TextView;
    sget v10, Lic/buzzebeeslib/R$id;->tvFinishDate:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1998
    .local v4, "tvFinishDate":Landroid/widget/TextView;
    sget v10, Lic/buzzebeeslib/R$id;->btnSaveSurvey:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1999
    .local v0, "btnSaveSurvey":Landroid/widget/TextView;
    iget-object v10, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v10}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2000
    iget-object v10, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v10}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2001
    iget-object v10, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v10}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2002
    iget-object v10, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v10}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v10

    iget-object v10, v10, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2003
    iget-object v10, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v10}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v10

    iget-object v10, v10, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v10, v10, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraSurvey:Lic/buzzebeeslib/bean/CampaignExtraSurvey;

    iget-object v10, v10, Lic/buzzebeeslib/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2004
    .local v3, "qt":I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "All  : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2006
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2008
    .local v1, "currentDateTimeString":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Finish  : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2009
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2011
    new-instance v10, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$24;

    invoke-direct {v10, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$24;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2019
    return-object v9
.end method

.method private initialViewPhoto(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "adBuzzItem"    # Lic/buzzebeeslib/bean/AdBuzzItem;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 1882
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v4, Lic/buzzebeeslib/R$layout;->bz_campaign_detail_ad_item_pager_image:I

    invoke-virtual {v0, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 1883
    .local v6, "viewPhoto":Landroid/view/View;
    iput-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    .line 1884
    sget v0, Lic/buzzebeeslib/R$id;->image:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1885
    .local v2, "imageView":Landroid/widget/ImageView;
    sget v0, Lic/buzzebeeslib/R$id;->pbLoadingImg:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1886
    .local v3, "pbLoadingImg":Landroid/widget/ProgressBar;
    iget-object v0, p1, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v1, v0, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 1888
    .local v1, "img_url":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$21(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1890
    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$22;

    invoke-direct {v4, p0, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$22;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1903
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v0

    new-instance v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v0, v4}, Lic/buzzebeeslib/control/CustomPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1984
    return-object v6
.end method

.method private initialViewSurvey(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 77
    .param p1, "adBuzzItem"    # Lic/buzzebeeslib/bean/AdBuzzItem;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "position"    # I

    .prologue
    .line 536
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lic/buzzebeeslib/R$layout;->bz_survey_v2_list_row:I

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v6, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v70

    .line 537
    .local v70, "viewSurvey":Landroid/view/View;
    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    .line 538
    move-object/from16 v0, p0

    iget-object v6, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    sget v5, Lic/buzzebeeslib/R$id;->scvSurvey:I

    move-object/from16 v0, v70

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, v6, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->scvSurvey:Landroid/widget/ScrollView;

    .line 539
    sget v5, Lic/buzzebeeslib/R$id;->layoutRootSurvey:I

    move-object/from16 v0, v70

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 540
    .local v12, "layoutRootSurvey":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v65, v5, 0xf

    .line 542
    .local v65, "screenSize":I
    packed-switch v65, :pswitch_data_b84

    .line 559
    :goto_40
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v5

    new-instance v6, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$2;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/control/CustomPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 620
    sget v5, Lic/buzzebeeslib/R$id;->tvTitle:I

    move-object/from16 v0, v70

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v68

    check-cast v68, Landroid/widget/TextView;

    .line 621
    .local v68, "tvTitle":Landroid/widget/TextView;
    sget v5, Lic/buzzebeeslib/R$id;->wvTitle:I

    move-object/from16 v0, v70

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 622
    .local v4, "wvTitle":Landroid/webkit/WebView;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 623
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 624
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->html_question:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18b

    .line 625
    const/16 v5, 0x8

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 626
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 627
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 628
    sget v41, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 629
    .local v41, "gSDK_INT":I
    const/16 v5, 0xb

    move/from16 v0, v41

    if-lt v0, v5, :cond_a5

    .line 630
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 633
    :cond_a5
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$3;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 641
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v72

    .line 642
    .local v72, "webSettings":Landroid/webkit/WebSettings;
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "<div style=\'width:100%;\'>"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v8, v8, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->html_question:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "</div>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/html"

    const-string v8, "UTF-8"

    const-string v9, ""

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const/4 v5, 0x1

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 644
    sget-object v5, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 645
    new-instance v5, Landroid/webkit/WebChromeClient;

    invoke-direct {v5}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 646
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 653
    .end local v41    # "gSDK_INT":I
    .end local v72    # "webSettings":Landroid/webkit/WebSettings;
    :goto_f7
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->order_by:Ljava/lang/String;

    const-string v6, "shuffle"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10e

    .line 654
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 657
    :cond_10e
    const/16 v42, 0x0

    .local v42, "i":I
    :goto_110
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v42

    if-lt v0, v5, :cond_1a3

    .line 1161
    return-object v70

    .line 544
    .end local v4    # "wvTitle":Landroid/webkit/WebView;
    .end local v42    # "i":I
    .end local v68    # "tvTitle":Landroid/widget/TextView;
    :pswitch_11f
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v8}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v8

    div-int/lit8 v8, v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {v12, v5, v6, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_40

    .line 547
    :pswitch_13a
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v5

    div-int/lit8 v5, v5, 0xf

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v8}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v8

    div-int/lit8 v8, v8, 0xf

    const/4 v9, 0x0

    invoke-virtual {v12, v5, v6, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_40

    .line 550
    :pswitch_155
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v5

    div-int/lit8 v5, v5, 0xf

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v8}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v8

    div-int/lit8 v8, v8, 0xf

    const/4 v9, 0x0

    invoke-virtual {v12, v5, v6, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_40

    .line 553
    :pswitch_170
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v8}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v8

    div-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v12, v5, v6, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_40

    .line 648
    .restart local v4    # "wvTitle":Landroid/webkit/WebView;
    .restart local v68    # "tvTitle":Landroid/widget/TextView;
    :cond_18b
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->title:Ljava/lang/String;

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    const/4 v5, 0x0

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_f7

    .line 658
    .restart local v42    # "i":I
    :cond_1a3
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 660
    .local v40, "field":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lic/buzzebeeslib/R$layout;->bz_survey_v2_list_row_answer:I

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 662
    .local v13, "viewField":Landroid/view/View;
    sget v5, Lic/buzzebeeslib/R$id;->layoutQuestion:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v58

    check-cast v58, Landroid/widget/RelativeLayout;

    .line 663
    .local v58, "layoutQuestion":Landroid/widget/RelativeLayout;
    sget v5, Lic/buzzebeeslib/R$id;->layoutQuestionwithBox:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/RelativeLayout;

    .line 664
    .local v59, "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    sget v5, Lic/buzzebeeslib/R$id;->layoutInfoChoice:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/RelativeLayout;

    .line 665
    .local v51, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v5, Lic/buzzebeeslib/R$id;->layoutInfoCheckbox:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/RelativeLayout;

    .line 666
    .local v50, "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    sget v5, Lic/buzzebeeslib/R$id;->layoutInfoInput:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v54

    check-cast v54, Landroid/widget/RelativeLayout;

    .line 667
    .local v54, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v5, Lic/buzzebeeslib/R$id;->layoutDate:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/RelativeLayout;

    .line 668
    .local v47, "layoutDate":Landroid/widget/RelativeLayout;
    sget v5, Lic/buzzebeeslib/R$id;->layoutTime:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/widget/RelativeLayout;

    .line 669
    .local v61, "layoutTime":Landroid/widget/RelativeLayout;
    sget v5, Lic/buzzebeeslib/R$id;->layoutScanCodeInput:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v60

    check-cast v60, Landroid/widget/RelativeLayout;

    .line 670
    .local v60, "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    sget v5, Lic/buzzebeeslib/R$id;->layoutImageInput:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/RelativeLayout;

    .line 671
    .local v48, "layoutImageInput":Landroid/widget/RelativeLayout;
    sget v5, Lic/buzzebeeslib/R$id;->layoutInfoTextArea:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/RelativeLayout;

    .line 672
    .local v57, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    sget v5, Lic/buzzebeeslib/R$id;->layoutInfoRate:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/LinearLayout;

    .line 673
    .local v56, "layoutInfoRate":Landroid/widget/LinearLayout;
    sget v5, Lic/buzzebeeslib/R$id;->layoutInfoEmotion:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/LinearLayout;

    .line 674
    .local v53, "layoutInfoEmotion":Landroid/widget/LinearLayout;
    sget v5, Lic/buzzebeeslib/R$id;->layoutInfoLocation:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/LinearLayout;

    .line 676
    .local v55, "layoutInfoLocation":Landroid/widget/LinearLayout;
    const/16 v5, 0x8

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 677
    const/16 v5, 0x8

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 678
    const/16 v5, 0x8

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 679
    const/16 v5, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 680
    const/16 v5, 0x8

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 681
    const/16 v5, 0x8

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 682
    const/16 v5, 0x8

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 683
    const/16 v5, 0x8

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 684
    const/16 v5, 0x8

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 685
    const/16 v5, 0x8

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 686
    const/16 v5, 0x8

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 687
    const/16 v5, 0x8

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 688
    const/16 v5, 0x8

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 689
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v6, "scan_code"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2dd

    .line 691
    const/4 v5, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 692
    sget v5, Lic/buzzebeeslib/R$id;->btnGetCode:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 693
    .local v25, "btnGetCode":Landroid/widget/TextView;
    sget v5, Lic/buzzebeeslib/R$id;->etFieldInputCode:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 694
    .local v31, "etFieldInputCode":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 695
    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->tvScanCode:Ljava/util/List;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$12(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 698
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v5, v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$4;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    .end local v25    # "btnGetCode":Landroid/widget/TextView;
    .end local v31    # "etFieldInputCode":Landroid/widget/TextView;
    :goto_2d9
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_110

    .line 710
    :cond_2dd
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v6, "capture_image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37e

    .line 712
    const/4 v5, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 713
    sget v5, Lic/buzzebeeslib/R$id;->imgCapture:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/ImageView;

    .line 714
    .local v43, "imgCapture":Landroid/widget/ImageView;
    sget v5, Lic/buzzebeeslib/R$id;->imgCaptureDelete:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/ImageView;

    .line 715
    .local v44, "imgCaptureDelete":Landroid/widget/ImageView;
    sget v5, Lic/buzzebeeslib/R$id;->etFieldInputImage:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 716
    .local v33, "etFieldInputImage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 717
    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v5, v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->params:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$15(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageCancel:Ljava/util/List;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$16(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->tvImageUrl:Ljava/util/List;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$17(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 723
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v5, v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$5;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v5, v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$6;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v5, v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$7;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/ImageView;)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2d9

    .line 752
    .end local v33    # "etFieldInputImage":Landroid/widget/TextView;
    .end local v43    # "imgCapture":Landroid/widget/ImageView;
    .end local v44    # "imgCaptureDelete":Landroid/widget/ImageView;
    :cond_37e
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_417

    .line 754
    const/4 v5, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 755
    sget v5, Lic/buzzebeeslib/R$id;->btnGetLocation:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 756
    .local v26, "btnGetLocation":Landroid/widget/TextView;
    sget v5, Lic/buzzebeeslib/R$id;->etFieldInputLocation:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 757
    .local v34, "etFieldInputLocation":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gps:Lic/buzzebeeslib/util/GPSTracker;
    invoke-static {v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$18(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/util/GPSTracker;

    move-result-object v6

    invoke-virtual {v6}, Lic/buzzebeeslib/util/GPSTracker;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gps:Lic/buzzebeeslib/util/GPSTracker;
    invoke-static {v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$18(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/util/GPSTracker;

    move-result-object v6

    invoke-virtual {v6}, Lic/buzzebeeslib/util/GPSTracker;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gps:Lic/buzzebeeslib/util/GPSTracker;
    invoke-static {v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$18(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/util/GPSTracker;

    move-result-object v6

    invoke-virtual {v6}, Lic/buzzebeeslib/util/GPSTracker;->getLatitude()D

    move-result-wide v8

    iput-wide v8, v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lat:D

    .line 759
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gps:Lic/buzzebeeslib/util/GPSTracker;
    invoke-static {v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$18(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/util/GPSTracker;

    move-result-object v6

    invoke-virtual {v6}, Lic/buzzebeeslib/util/GPSTracker;->getLongitude()D

    move-result-wide v8

    iput-wide v8, v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lng:D

    .line 760
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 762
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v5, v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$8;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 774
    goto/16 :goto_2d9

    .end local v26    # "btnGetLocation":Landroid/widget/TextView;
    .end local v34    # "etFieldInputLocation":Landroid/widget/TextView;
    :cond_417
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v6, "info_choice_image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_591

    .line 776
    const/4 v5, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 777
    sget v5, Lic/buzzebeeslib/R$id;->view_pager:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v71

    check-cast v71, Landroid/support/v4/view/ViewPager;

    .line 778
    .local v71, "view_pager":Landroid/support/v4/view/ViewPager;
    sget v5, Lic/buzzebeeslib/R$id;->linCircle:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v62

    check-cast v62, Landroid/widget/LinearLayout;

    .line 779
    .local v62, "linCircle":Landroid/widget/LinearLayout;
    sget v5, Lic/buzzebeeslib/R$id;->etFieldInputMode:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 780
    .local v35, "etFieldInputMode":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v71

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 781
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v0, p1

    iget-object v6, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->arrImg:[Ljava/lang/String;

    .line 782
    const/16 v46, 0x0

    .local v46, "j":I
    :goto_468
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v46

    if-lt v0, v5, :cond_543

    .line 785
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$QTPagerAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v8, v8, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->arrImg:[Ljava/lang/String;

    invoke-direct {v5, v6, v8}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$QTPagerAdapter;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;[Ljava/lang/String;)V

    move-object/from16 v0, v71

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 786
    invoke-virtual/range {v62 .. v62}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 787
    new-instance v63, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const/high16 v6, 0x41200000

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const/high16 v8, 0x41200000

    invoke-virtual {v6, v8}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v6

    move-object/from16 v0, v63

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 788
    .local v63, "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const/high16 v6, 0x40400000

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const/high16 v8, 0x40400000

    invoke-virtual {v6, v8}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const/high16 v9, 0x40400000

    invoke-virtual {v8, v9}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const/high16 v10, 0x40400000

    invoke-virtual {v9, v10}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v9

    move-object/from16 v0, v63

    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 789
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/widget/ImageView;

    move-object/from16 v45, v0

    .line 790
    .local v45, "imgCircle":[Landroid/widget/ImageView;
    const/16 v46, 0x0

    :goto_4e5
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v46

    if-lt v0, v5, :cond_55f

    .line 800
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->index:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-direct {v5, v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$9;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/support/v4/view/ViewPager;)V

    move-object/from16 v0, v71

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 836
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v35

    invoke-direct {v5, v0, v1, v2, v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$10;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/AdBuzzItem;[Landroid/widget/ImageView;Landroid/widget/TextView;)V

    move-object/from16 v0, v71

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 860
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 861
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 862
    goto/16 :goto_2d9

    .line 783
    .end local v45    # "imgCircle":[Landroid/widget/ImageView;
    .end local v63    # "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    :cond_543
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v6, v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->arrImg:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    aput-object v5, v6, v46

    .line 782
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_468

    .line 791
    .restart local v45    # "imgCircle":[Landroid/widget/ImageView;
    .restart local v63    # "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    :cond_55f
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v5, v45, v46

    .line 792
    aget-object v5, v45, v46

    move-object/from16 v0, v63

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    if-nez v46, :cond_589

    .line 794
    aget-object v5, v45, v46

    sget v6, Lic/buzzebeeslib/R$drawable;->rounded_circle_selected:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 798
    :goto_57e
    aget-object v5, v45, v46

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 790
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_4e5

    .line 796
    :cond_589
    aget-object v5, v45, v46

    sget v6, Lic/buzzebeeslib/R$drawable;->rounded_circle:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_57e

    .line 862
    .end local v35    # "etFieldInputMode":Landroid/widget/TextView;
    .end local v45    # "imgCircle":[Landroid/widget/ImageView;
    .end local v46    # "j":I
    .end local v62    # "linCircle":Landroid/widget/LinearLayout;
    .end local v63    # "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    .end local v71    # "view_pager":Landroid/support/v4/view/ViewPager;
    :cond_591
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v6, "info_choice_rate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5fb

    .line 864
    const/4 v5, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 865
    sget v5, Lic/buzzebeeslib/R$id;->etFieldInputRate:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 866
    .local v36, "etFieldInputRate":Landroid/widget/TextView;
    sget v5, Lic/buzzebeeslib/R$id;->etFieldInputRateValue:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 867
    .local v37, "etFieldInputRateValue":Landroid/widget/TextView;
    sget v5, Lic/buzzebeeslib/R$id;->sbvRate:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v64

    check-cast v64, Landroid/widget/SeekBar;

    .line 868
    .local v64, "sbvRate":Landroid/widget/SeekBar;
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v64

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 869
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, p1

    move-object/from16 v3, v37

    invoke-direct {v5, v0, v1, v2, v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$11;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/widget/TextView;)V

    move-object/from16 v0, v64

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 888
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$12;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$12;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    move-object/from16 v0, v64

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 908
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 909
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 910
    goto/16 :goto_2d9

    .end local v36    # "etFieldInputRate":Landroid/widget/TextView;
    .end local v37    # "etFieldInputRateValue":Landroid/widget/TextView;
    .end local v64    # "sbvRate":Landroid/widget/SeekBar;
    :cond_5fb
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v6, "info_check_box"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64d

    .line 912
    const/4 v5, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 913
    sget v5, Lic/buzzebeeslib/R$id;->chkFieldCheckbox:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/CheckBox;

    .line 914
    .local v27, "chkFieldCheckbox":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 915
    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 916
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 918
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 920
    .local v11, "index":Ljava/lang/String;
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1, v11}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$13;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/AdBuzzItem;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2d9

    .line 928
    .end local v11    # "index":Ljava/lang/String;
    .end local v27    # "chkFieldCheckbox":Landroid/widget/CheckBox;
    :cond_64d
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v6, "info_check_box_with_others"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_734

    .line 930
    const/4 v5, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 931
    sget v5, Lic/buzzebeeslib/R$id;->layoutInfoChoiceEdt:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/RelativeLayout;

    .line 932
    .local v52, "layoutInfoChoiceEdt":Landroid/widget/RelativeLayout;
    sget v5, Lic/buzzebeeslib/R$id;->chkFieldChoice:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/CheckBox;

    .line 933
    .local v28, "chkFieldChoice":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 934
    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 935
    sget v5, Lic/buzzebeeslib/R$id;->etFieldInputChoice:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/EditText;

    .line 936
    .local v30, "etFieldInputChoice":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 937
    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 938
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->max_length:I

    if-eqz v5, :cond_70b

    .line 939
    const/4 v5, 0x2

    new-array v6, v5, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v8, v6, v5

    const/4 v8, 0x1

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->max_length:I

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v6, v8

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 944
    :goto_6da
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 946
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 948
    .restart local v11    # "index":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v42

    if-ne v0, v5, :cond_71b

    .line 949
    const/4 v5, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 950
    const/16 v5, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2d9

    .line 941
    .end local v11    # "index":Ljava/lang/String;
    :cond_70b
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v8, v5, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_6da

    .line 952
    .restart local v11    # "index":Ljava/lang/String;
    :cond_71b
    const/16 v5, 0x8

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 953
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$14;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v5, v0, v1, v11, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$14;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/EditText;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2d9

    .line 964
    .end local v11    # "index":Ljava/lang/String;
    .end local v28    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v30    # "etFieldInputChoice":Landroid/widget/EditText;
    .end local v52    # "layoutInfoChoiceEdt":Landroid/widget/RelativeLayout;
    :cond_734
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v6, "info_choice"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e1

    .line 965
    const/4 v5, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 966
    sget v5, Lic/buzzebeeslib/R$id;->tvFieldAnswer:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/CheckBox;

    .line 967
    .restart local v28    # "chkFieldChoice":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 968
    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 969
    sget v5, Lic/buzzebeeslib/R$id;->imgCheckBoxAnswer:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 970
    .local v7, "imgCheckBoxAnswer":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    if-eqz v5, :cond_7db

    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7db

    .line 972
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 973
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$21(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    const/4 v8, 0x0

    sget v9, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 977
    :goto_7b3
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 979
    .restart local v11    # "index":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 980
    new-instance v8, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$15;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v8 .. v13}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$15;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/View;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2d9

    .line 975
    .end local v11    # "index":Ljava/lang/String;
    :cond_7db
    const/16 v5, 0x8

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7b3

    .line 989
    .end local v7    # "imgCheckBoxAnswer":Landroid/widget/ImageView;
    .end local v28    # "chkFieldChoice":Landroid/widget/CheckBox;
    :cond_7e1
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v6, "info_choice_with_others"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93c

    .line 991
    const/4 v5, 0x0

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 992
    sget v5, Lic/buzzebeeslib/R$id;->layoutInfoAnswerEdt:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/RelativeLayout;

    .line 993
    .local v49, "layoutInfoAnswerEdt":Landroid/widget/RelativeLayout;
    sget v5, Lic/buzzebeeslib/R$id;->tvFieldAnswerBox:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v67

    check-cast v67, Landroid/widget/CheckBox;

    .line 994
    .local v67, "tvFieldAnswerBox":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v67

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 995
    move-object/from16 v0, v67

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 996
    sget v5, Lic/buzzebeeslib/R$id;->etFieldInputAnswer:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    .line 997
    .local v18, "etFieldInputAnswer":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 998
    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 999
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->max_length:I

    if-eqz v5, :cond_900

    .line 1000
    const/4 v5, 0x2

    new-array v6, v5, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v8, v6, v5

    const/4 v8, 0x1

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->max_length:I

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v6, v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1004
    :goto_86e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1006
    .restart local v11    # "index":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v42

    if-ne v0, v5, :cond_911

    .line 1007
    const/4 v5, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1008
    const/16 v5, 0x8

    move-object/from16 v0, v67

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1009
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12, v13}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$16;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/LinearLayout;Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1037
    :goto_8a6
    sget v5, Lic/buzzebeeslib/R$id;->imgCheckBoxAnswerBox:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 1038
    .local v21, "imgCheckBoxAnswerBox":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    if-eqz v5, :cond_934

    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_934

    .line 1040
    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$21(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    sget v23, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/16 v24, 0x0

    invoke-virtual/range {v19 .. v24}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1045
    :goto_8fb
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2d9

    .line 1002
    .end local v11    # "index":Ljava/lang/String;
    .end local v21    # "imgCheckBoxAnswerBox":Landroid/widget/ImageView;
    :cond_900
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v8, v5, v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_86e

    .line 1019
    .restart local v11    # "index":Ljava/lang/String;
    :cond_911
    const/16 v5, 0x8

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1020
    const/4 v5, 0x0

    move-object/from16 v0, v67

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1021
    new-instance v14, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/view/View;)V

    move-object/from16 v0, v67

    invoke-virtual {v0, v14}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8a6

    .line 1043
    .restart local v21    # "imgCheckBoxAnswerBox":Landroid/widget/ImageView;
    :cond_934
    const/16 v5, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8fb

    .line 1046
    .end local v11    # "index":Ljava/lang/String;
    .end local v18    # "etFieldInputAnswer":Landroid/widget/EditText;
    .end local v21    # "imgCheckBoxAnswerBox":Landroid/widget/ImageView;
    .end local v49    # "layoutInfoAnswerEdt":Landroid/widget/RelativeLayout;
    .end local v67    # "tvFieldAnswerBox":Landroid/widget/CheckBox;
    :cond_93c
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v6, "info_input"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab4

    .line 1048
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const v6, 0x103006b

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->setTheme(I)V

    .line 1049
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    const-string v6, "date"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a1

    .line 1050
    const/4 v5, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1051
    sget v5, Lic/buzzebeeslib/R$id;->etFieldInputDate:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 1052
    .local v32, "etFieldInputDate":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1053
    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1054
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$18;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v5, v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$18;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    .end local v32    # "etFieldInputDate":Landroid/widget/TextView;
    :cond_99c
    :goto_99c
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2d9

    .line 1076
    :cond_9a1
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    const-string v6, "time"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9ea

    .line 1077
    const/4 v5, 0x0

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1078
    sget v5, Lic/buzzebeeslib/R$id;->etFieldInputTime:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 1079
    .local v38, "etFieldInputTime":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1080
    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1081
    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$19;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v5, v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$19;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;)V

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_99c

    .line 1103
    .end local v38    # "etFieldInputTime":Landroid/widget/TextView;
    :cond_9ea
    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1104
    sget v5, Lic/buzzebeeslib/R$id;->tvFieldTitle:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v66

    check-cast v66, Landroid/widget/TextView;

    .line 1105
    .local v66, "tvField":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1106
    move-object/from16 v0, v66

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    sget v5, Lic/buzzebeeslib/R$id;->etFieldInput:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/EditText;

    .line 1111
    .local v29, "etFieldInput":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1112
    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1113
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->max_length:I

    if-eqz v5, :cond_a91

    .line 1114
    const/4 v5, 0x2

    new-array v6, v5, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v8, v6, v5

    const/4 v8, 0x1

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->max_length:I

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v6, v8

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1118
    :goto_a61
    if-eqz v40, :cond_99c

    const-string v5, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_99c

    .line 1119
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    move-object/from16 v69, v0

    .line 1120
    .local v69, "type":Ljava/lang/String;
    const-string v5, "number"

    move-object/from16 v0, v69

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa1

    .line 1121
    const/4 v5, 0x3

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_99c

    .line 1116
    .end local v69    # "type":Ljava/lang/String;
    :cond_a91
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v8, v5, v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_a61

    .line 1122
    .restart local v69    # "type":Ljava/lang/String;
    :cond_aa1
    const-string v5, "email"

    move-object/from16 v0, v69

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99c

    .line 1123
    const/16 v5, 0x20

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_99c

    .line 1128
    .end local v29    # "etFieldInput":Landroid/widget/EditText;
    .end local v66    # "tvField":Landroid/widget/TextView;
    .end local v69    # "type":Ljava/lang/String;
    :cond_ab4
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string v6, "info_text_area"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3a

    .line 1129
    const/4 v5, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1130
    sget v5, Lic/buzzebeeslib/R$id;->etFieldTextArea:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/EditText;

    .line 1131
    .local v39, "etFieldTextArea":Landroid/widget/EditText;
    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->max_length:I

    if-eqz v5, :cond_b2a

    .line 1132
    const/4 v5, 0x2

    new-array v6, v5, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v8, v6, v5

    const/4 v8, 0x1

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v5, v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->max_length:I

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v6, v8

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1136
    :goto_b09
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1137
    if-eqz v40, :cond_b25

    const-string v5, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b25

    .line 1138
    invoke-virtual/range {v39 .. v40}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1140
    :cond_b25
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2d9

    .line 1134
    :cond_b2a
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->filter:Landroid/text/InputFilter;

    aput-object v8, v5, v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_b09

    .line 1142
    .end local v39    # "etFieldTextArea":Landroid/widget/EditText;
    :cond_b3a
    const/4 v5, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1143
    sget v5, Lic/buzzebeeslib/R$id;->tvFieldAnswer:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/CheckBox;

    .line 1144
    .restart local v28    # "chkFieldChoice":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1145
    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1148
    .restart local v11    # "index":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1149
    new-instance v8, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$20;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v8 .. v13}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$20;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/View;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2d9

    .line 542
    :pswitch_data_b84
    .packed-switch 0x1
        :pswitch_155
        :pswitch_13a
        :pswitch_11f
        :pswitch_170
    .end packed-switch
.end method

.method private initialViewVideo(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "adBuzzItem"    # Lic/buzzebeeslib/bean/AdBuzzItem;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/high16 v9, 0x42b40000

    const/high16 v8, 0x41f00000

    const/4 v7, 0x1

    .line 2023
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iput-boolean v7, v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->isVideo:Z

    .line 2024
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lic/buzzebeeslib/R$layout;->bz_campaign_detail_ad_item_pager_video:I

    invoke-virtual {v5, v6, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    .line 2025
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    iput-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    .line 2026
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$6(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2027
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$7(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2028
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    sget v6, Lic/buzzebeeslib/R$id;->videoSurface:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    invoke-static {v5, v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$25(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Landroid/view/SurfaceView;)V

    .line 2029
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    sget v5, Lic/buzzebeeslib/R$id;->videoSurfaceContainer:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 2030
    .local v3, "videoSurfaceContainer":Landroid/widget/FrameLayout;
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenHeight:I
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$26(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v5

    if-le v4, v5, :cond_143

    .line 2031
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenHeight:I
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$26(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v5, v9}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v5

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x10

    div-int/lit8 v4, v4, 0x9

    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenHeight:I
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$26(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v6, v9}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2032
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2038
    :goto_82
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$27(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2039
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$27(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 2040
    .local v2, "videoHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v2, v7}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 2041
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-interface {v2, v4}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2042
    invoke-interface {v2, v11}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 2044
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$28(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Landroid/media/MediaPlayer;)V

    .line 2045
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    new-instance v5, Lic/buzzebeeslib/control/VideoControllerView;

    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-direct {v5, v6}, Lic/buzzebeeslib/control/VideoControllerView;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$29(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Lic/buzzebeeslib/control/VideoControllerView;)V

    .line 2046
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$30(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/VideoControllerView;

    move-result-object v4

    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$25;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$25;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/control/VideoControllerView;->setOnRqExitListener(Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;)V

    .line 2054
    :try_start_c4
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$31(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2055
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$31(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 2056
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$32(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uri vdo "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v6

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$31(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v6

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2058
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$31(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2059
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$31(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2060
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$31(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_130
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c4 .. :try_end_130} :catch_16b
    .catch Ljava/lang/SecurityException; {:try_start_c4 .. :try_end_130} :catch_177
    .catch Ljava/lang/IllegalStateException; {:try_start_c4 .. :try_end_130} :catch_183
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_130} :catch_18f

    .line 2075
    :goto_130
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v4

    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$26;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$26;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/control/CustomPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2130
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    return-object v4

    .line 2034
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "videoHolder":Landroid/view/SurfaceHolder;
    :cond_143
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v5, v8}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v6, v8}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0x10

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2035
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_82

    .line 2061
    .restart local v2    # "videoHolder":Landroid/view/SurfaceHolder;
    :catch_16b
    move-exception v0

    .line 2062
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const-string v5, "IllegalArgumentException"

    # invokes: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 2063
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_130

    .line 2064
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_177
    move-exception v0

    .line 2065
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const-string v5, "SecurityException"

    # invokes: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 2066
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_130

    .line 2067
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_183
    move-exception v0

    .line 2068
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const-string v5, "IllegalStateException"

    # invokes: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_130

    .line 2070
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_18f
    move-exception v0

    .line 2071
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const-string v5, "IOException"

    # invokes: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 2072
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_130
.end method

.method private resetSurvey(Landroid/view/View;Landroid/view/View;)V
    .registers 20
    .param p1, "pViewRootSurvey"    # Landroid/view/View;
    .param p2, "pViewField"    # Landroid/view/View;

    .prologue
    .line 1800
    sget v15, Lic/buzzebeeslib/R$id;->layoutRootSurvey:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 1801
    .local v12, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v12, :cond_13

    .line 1802
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_d
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    if-lt v6, v15, :cond_14

    .line 1840
    .end local v6    # "j":I
    :cond_13
    return-void

    .line 1803
    .restart local v6    # "j":I
    :cond_14
    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1804
    .local v14, "view_field_row":Landroid/view/View;
    move-object/from16 v0, p2

    if-eq v14, v0, :cond_c6

    .line 1805
    sget v15, Lic/buzzebeeslib/R$id;->layoutQuestion:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 1806
    .local v10, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v10, :cond_c6

    .line 1807
    sget v15, Lic/buzzebeeslib/R$id;->layoutInfoChoice:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1808
    .local v7, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v15, Lic/buzzebeeslib/R$id;->layoutInfoInput:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 1809
    .local v8, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v15, Lic/buzzebeeslib/R$id;->layoutInfoTextArea:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 1810
    .local v9, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    sget v15, Lic/buzzebeeslib/R$id;->layoutQuestionwithBox:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 1812
    .local v11, "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_58

    .line 1813
    sget v15, Lic/buzzebeeslib/R$id;->tvFieldAnswer:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1814
    .local v1, "chkFieldChoice":Landroid/widget/CheckBox;
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1816
    .end local v1    # "chkFieldChoice":Landroid/widget/CheckBox;
    :cond_58
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_8e

    .line 1817
    sget v15, Lic/buzzebeeslib/R$id;->tvFieldAnswerBox:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 1818
    .local v13, "tvFieldAnswerBox":Landroid/widget/CheckBox;
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1819
    sget v15, Lic/buzzebeeslib/R$id;->etFieldInputAnswer:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1820
    .local v3, "etFieldInputAnswer":Landroid/widget/EditText;
    const-string v15, ""

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v15, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const-string v16, "input_method"

    invoke-virtual/range {v15 .. v16}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 1822
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1824
    .end local v3    # "etFieldInputAnswer":Landroid/widget/EditText;
    .end local v5    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v13    # "tvFieldAnswerBox":Landroid/widget/CheckBox;
    :cond_8e
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_a0

    .line 1825
    sget v15, Lic/buzzebeeslib/R$id;->chkFieldChoice:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1826
    .restart local v1    # "chkFieldChoice":Landroid/widget/CheckBox;
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1828
    .end local v1    # "chkFieldChoice":Landroid/widget/CheckBox;
    :cond_a0
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_b3

    .line 1829
    sget v15, Lic/buzzebeeslib/R$id;->etFieldInput:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1830
    .local v2, "etFieldInput":Landroid/widget/EditText;
    const-string v15, ""

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1832
    .end local v2    # "etFieldInput":Landroid/widget/EditText;
    :cond_b3
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_c6

    .line 1833
    sget v15, Lic/buzzebeeslib/R$id;->etFieldTextArea:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1834
    .local v4, "etFieldTextArea":Landroid/widget/EditText;
    const-string v15, ""

    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1802
    .end local v4    # "etFieldTextArea":Landroid/widget/EditText;
    .end local v7    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v8    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v9    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v10    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .end local v11    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    :cond_c6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d
.end method


# virtual methods
.method public actionBackClear(I)Ljava/lang/String;
    .registers 43
    .param p1, "position"    # I

    .prologue
    .line 1697
    const-string v4, ""

    .line 1700
    .local v4, "alertText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static/range {v39 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 1701
    .local v38, "view_pager_survey":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    sub-int v40, v40, p1

    invoke-virtual/range {v39 .. v40}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/AdBuzzItem;

    .line 1702
    .local v3, "adBuzzItem":Lic/buzzebeeslib/bean/AdBuzzItem;
    sget v39, Lic/buzzebeeslib/R$id;->layoutRootSurvey:I

    invoke-virtual/range {v38 .. v39}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout;

    .line 1703
    .local v31, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v31, :cond_42

    .line 1705
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_38
    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v39

    move/from16 v0, v19

    move/from16 v1, v39

    if-lt v0, v1, :cond_43

    .line 1795
    .end local v19    # "j":I
    :cond_42
    return-object v4

    .line 1706
    .restart local v19    # "j":I
    :cond_43
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    .line 1707
    .local v36, "view_field_row":Landroid/view/View;
    sget v39, Lic/buzzebeeslib/R$id;->layoutQuestion:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/RelativeLayout;

    .line 1708
    .local v29, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v29, :cond_102

    .line 1709
    sget v39, Lic/buzzebeeslib/R$id;->layoutInfoChoice:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 1710
    .local v23, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v39, Lic/buzzebeeslib/R$id;->layoutInfoCheckbox:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 1711
    .local v22, "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    sget v39, Lic/buzzebeeslib/R$id;->layoutInfoInput:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    .line 1712
    .local v25, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v39, Lic/buzzebeeslib/R$id;->layoutDate:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 1713
    .local v20, "layoutDate":Landroid/widget/RelativeLayout;
    sget v39, Lic/buzzebeeslib/R$id;->layoutTime:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/RelativeLayout;

    .line 1714
    .local v33, "layoutTime":Landroid/widget/RelativeLayout;
    sget v39, Lic/buzzebeeslib/R$id;->layoutInfoTextArea:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/RelativeLayout;

    .line 1715
    .local v28, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    sget v39, Lic/buzzebeeslib/R$id;->layoutQuestionwithBox:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout;

    .line 1716
    .local v30, "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    sget v39, Lic/buzzebeeslib/R$id;->layoutScanCodeInput:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/RelativeLayout;

    .line 1717
    .local v32, "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    sget v39, Lic/buzzebeeslib/R$id;->layoutImageInput:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 1718
    .local v21, "layoutImageInput":Landroid/widget/RelativeLayout;
    sget v39, Lic/buzzebeeslib/R$id;->layoutInfoRate:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 1719
    .local v27, "layoutInfoRate":Landroid/widget/LinearLayout;
    sget v39, Lic/buzzebeeslib/R$id;->layoutInfoEmotion:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 1720
    .local v24, "layoutInfoEmotion":Landroid/widget/LinearLayout;
    sget v39, Lic/buzzebeeslib/R$id;->layoutInfoLocation:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 1721
    .local v26, "layoutInfoLocation":Landroid/widget/LinearLayout;
    invoke-virtual/range {v32 .. v32}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_106

    .line 1722
    sget v39, Lic/buzzebeeslib/R$id;->etFieldInputCode:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1723
    .local v10, "etFieldInputCode":Landroid/widget/TextView;
    const-string v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1705
    .end local v10    # "etFieldInputCode":Landroid/widget/TextView;
    .end local v20    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v21    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v22    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v23    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v24    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v25    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v26    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v27    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v28    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v30    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v32    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v33    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_102
    :goto_102
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_38

    .line 1724
    .restart local v20    # "layoutDate":Landroid/widget/RelativeLayout;
    .restart local v21    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .restart local v22    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .restart local v23    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .restart local v24    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .restart local v25    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .restart local v26    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .restart local v27    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .restart local v28    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .restart local v30    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .restart local v32    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .restart local v33    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_106
    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_154

    .line 1725
    sget v39, Lic/buzzebeeslib/R$id;->imgCapture:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 1726
    .local v16, "imgCapture":Landroid/widget/ImageView;
    sget v39, Lic/buzzebeeslib/R$id;->imgCaptureDelete:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 1727
    .local v17, "imgCaptureDelete":Landroid/widget/ImageView;
    sget v39, Lic/buzzebeeslib/R$id;->etFieldInputImage:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1729
    .local v11, "etFieldInputImage":Landroid/widget/TextView;
    const/16 v39, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1730
    const/16 v39, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1731
    const-string v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1732
    const v39, 0x106000d

    move-object/from16 v0, v16

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_102

    .line 1733
    .end local v11    # "etFieldInputImage":Landroid/widget/TextView;
    .end local v16    # "imgCapture":Landroid/widget/ImageView;
    .end local v17    # "imgCaptureDelete":Landroid/widget/ImageView;
    :cond_154
    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_183

    .line 1734
    sget v39, Lic/buzzebeeslib/R$id;->sbvRate:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/SeekBar;

    .line 1735
    .local v34, "sbvRate":Landroid/widget/SeekBar;
    sget v39, Lic/buzzebeeslib/R$id;->etFieldInputRate:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1736
    .local v14, "etFieldInputRate":Landroid/widget/TextView;
    const/16 v39, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1737
    const-string v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_102

    .line 1738
    .end local v14    # "etFieldInputRate":Landroid/widget/TextView;
    .end local v34    # "sbvRate":Landroid/widget/SeekBar;
    :cond_183
    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_1b3

    .line 1739
    sget v39, Lic/buzzebeeslib/R$id;->etFieldInputMode:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1740
    .local v13, "etFieldInputMode":Landroid/widget/TextView;
    sget v39, Lic/buzzebeeslib/R$id;->view_pager:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/support/v4/view/ViewPager;

    .line 1741
    .local v37, "view_pager":Landroid/support/v4/view/ViewPager;
    const/16 v39, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1742
    const-string v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_102

    .line 1743
    .end local v13    # "etFieldInputMode":Landroid/widget/TextView;
    .end local v37    # "view_pager":Landroid/support/v4/view/ViewPager;
    :cond_1b3
    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_1ce

    .line 1744
    sget v39, Lic/buzzebeeslib/R$id;->etFieldInputLocation:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1745
    .local v12, "etFieldInputLocation":Landroid/widget/TextView;
    const-string v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_102

    .line 1746
    .end local v12    # "etFieldInputLocation":Landroid/widget/TextView;
    :cond_1ce
    invoke-virtual/range {v29 .. v29}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_1e9

    .line 1747
    sget v39, Lic/buzzebeeslib/R$id;->tvFieldAnswer:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 1748
    .local v6, "chkFieldChoice":Landroid/widget/CheckBox;
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_102

    .line 1749
    .end local v6    # "chkFieldChoice":Landroid/widget/CheckBox;
    :cond_1e9
    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_204

    .line 1750
    sget v39, Lic/buzzebeeslib/R$id;->chkFieldCheckbox:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 1751
    .local v5, "chkFieldCheckbox":Landroid/widget/CheckBox;
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_102

    .line 1752
    .end local v5    # "chkFieldCheckbox":Landroid/widget/CheckBox;
    :cond_204
    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_251

    .line 1753
    sget v39, Lic/buzzebeeslib/R$id;->tvFieldAnswerBox:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/CheckBox;

    .line 1754
    .local v35, "tvFieldAnswerBox":Landroid/widget/CheckBox;
    sget v39, Lic/buzzebeeslib/R$id;->etFieldInputAnswer:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 1755
    .local v8, "etFieldInputAnswer":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    const-string v40, "input_method"

    invoke-virtual/range {v39 .. v40}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 1756
    .local v18, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v8}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1757
    const/16 v39, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1758
    const-string v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_102

    .line 1759
    .end local v8    # "etFieldInputAnswer":Landroid/widget/EditText;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v35    # "tvFieldAnswerBox":Landroid/widget/CheckBox;
    :cond_251
    invoke-virtual/range {v23 .. v23}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_29c

    .line 1760
    sget v39, Lic/buzzebeeslib/R$id;->chkFieldChoice:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 1761
    .restart local v6    # "chkFieldChoice":Landroid/widget/CheckBox;
    sget v39, Lic/buzzebeeslib/R$id;->etFieldInputChoice:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 1762
    .local v9, "etFieldInputChoice":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    const-string v40, "input_method"

    invoke-virtual/range {v39 .. v40}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 1763
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v9}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1764
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1765
    const-string v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_102

    .line 1767
    .end local v6    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v9    # "etFieldInputChoice":Landroid/widget/EditText;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_29c
    invoke-virtual/range {v25 .. v25}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_2d4

    .line 1768
    sget v39, Lic/buzzebeeslib/R$id;->etFieldInput:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 1769
    .local v7, "etFieldInput":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    const-string v40, "input_method"

    invoke-virtual/range {v39 .. v40}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 1770
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v7}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1771
    const-string v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_102

    .line 1773
    .end local v7    # "etFieldInput":Landroid/widget/EditText;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2d4
    invoke-virtual/range {v33 .. v33}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_30c

    .line 1774
    sget v39, Lic/buzzebeeslib/R$id;->etFieldInputTime:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1775
    .local v7, "etFieldInput":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    const-string v40, "input_method"

    invoke-virtual/range {v39 .. v40}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 1776
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v7}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1777
    const-string v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_102

    .line 1778
    .end local v7    # "etFieldInput":Landroid/widget/TextView;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_30c
    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_344

    .line 1779
    sget v39, Lic/buzzebeeslib/R$id;->etFieldInputDate:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1780
    .restart local v7    # "etFieldInput":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    const-string v40, "input_method"

    invoke-virtual/range {v39 .. v40}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 1781
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v7}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1782
    const-string v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_102

    .line 1783
    .end local v7    # "etFieldInput":Landroid/widget/TextView;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_344
    invoke-virtual/range {v28 .. v28}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v39

    if-nez v39, :cond_102

    .line 1784
    sget v39, Lic/buzzebeeslib/R$id;->etFieldTextArea:I

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 1785
    .local v15, "etFieldTextArea":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    const-string v40, "input_method"

    invoke-virtual/range {v39 .. v40}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 1786
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v15}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1787
    const-string v39, ""

    move-object/from16 v0, v39

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_102
.end method

.method public actionSubmit()V
    .registers 63

    .prologue
    .line 1182
    const/16 v21, 0x0

    .line 1183
    .local v21, "isCheck":Z
    const/16 v40, 0x0

    .line 1184
    .local v40, "passSurvey":Z
    const/16 v18, 0x0

    .line 1185
    .local v18, "haveAnswer":Z
    const-string v4, ""

    .line 1186
    .local v4, "checkbox_input_text":Ljava/lang/String;
    const-string v20, "["

    .line 1187
    .local v20, "info1":Ljava/lang/String;
    const-string v47, ""

    .line 1188
    .local v47, "str_comma":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1189
    .local v17, "forIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v56, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static/range {v56 .. v56}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lic/buzzebeeslib/control/CustomPager;->getChildCount()I

    move-result v56

    add-int/lit8 v19, v56, -0x1

    .local v19, "i":I
    :goto_1e
    if-gtz v19, :cond_f9

    .line 1433
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "]"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1434
    const-string v56, "OAT"

    move-object/from16 v0, v56

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :try_start_3c
    const-string v56, "utf-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3c .. :try_end_45} :catch_a34

    move-result-object v20

    .line 1441
    :goto_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v57, v0

    const-string v58, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v59, v0

    sget v60, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual/range {v59 .. v60}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v59

    const/16 v60, 0x1

    const/16 v61, 0x1

    invoke-static/range {v57 .. v61}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$22(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Landroid/app/ProgressDialog;)V

    .line 1442
    new-instance v56, Ljava/lang/StringBuilder;

    sget-object v57, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v57 .. v57}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "api/campaign/"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v57, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v57 .. v57}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v57

    move-object/from16 v0, v57

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "/redeem?token="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v57

    invoke-static/range {v57 .. v57}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    .line 1443
    .local v53, "url":Ljava/lang/String;
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v53 .. v53}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "&info1="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    .line 1444
    const-string v56, "campaign.adbuzz"

    new-instance v57, Ljava/lang/StringBuilder;

    const-string v58, "redeem url="

    invoke-direct/range {v57 .. v58}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v57

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    new-instance v39, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v39 .. v39}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1447
    .local v39, "params":Lcom/loopj/android/http/RequestParams;
    new-instance v56, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v57, v0

    invoke-direct/range {v56 .. v57}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v39

    move-object/from16 v2, v56

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1448
    return-void

    .line 1190
    .end local v39    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v53    # "url":Ljava/lang/String;
    :cond_f9
    add-int/lit8 v17, v17, 0x1

    .line 1191
    if-eqz v40, :cond_11e

    if-nez v18, :cond_11e

    .line 1192
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "{survey_pass:true}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1193
    const-string v47, ","

    .line 1194
    const/16 v40, 0x0

    .line 1197
    :cond_11e
    const/16 v21, 0x0

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v56, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static/range {v56 .. v56}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v55

    .line 1199
    .local v55, "view_pager_survey":Landroid/view/View;
    sget v56, Lic/buzzebeeslib/R$id;->layoutRootSurvey:I

    invoke-virtual/range {v55 .. v56}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/LinearLayout;

    .line 1200
    .local v36, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v36, :cond_269

    .line 1201
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "{check_box:["

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 1202
    .local v44, "str_checkbox_prefix":Ljava/lang/String;
    const-string v41, ""

    .line 1203
    .local v41, "str_checkbox_comma":Ljava/lang/String;
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "{check_box:["

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 1204
    .local v43, "str_checkbox_input_prefix":Ljava/lang/String;
    const-string v42, ""

    .line 1205
    .local v42, "str_checkbox_input_comma":Ljava/lang/String;
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "{info_choice_with_others:["

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    .line 1206
    .local v46, "str_choice_input_prefix":Ljava/lang/String;
    const-string v45, ""

    .line 1207
    .local v45, "str_choice_input_comma":Ljava/lang/String;
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "{inputs:["

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .line 1208
    .local v50, "str_input_prefix":Ljava/lang/String;
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "{image_url:["

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 1209
    .local v48, "str_image_prefix":Ljava/lang/String;
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "{scan_code:["

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 1210
    .local v51, "str_scan_prefix":Ljava/lang/String;
    const-string v49, ""

    .line 1211
    .local v49, "str_input_comma":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1212
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_1ba
    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v56

    move/from16 v0, v22

    move/from16 v1, v56

    if-lt v0, v1, :cond_26d

    .line 1409
    const-string v56, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_1e3

    .line 1410
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "]}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1412
    :cond_1e3
    const-string v56, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_20c

    .line 1413
    const-string v56, ""

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_9e6

    .line 1414
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "]}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1421
    :cond_20c
    :goto_20c
    const-string v56, ""

    move-object/from16 v0, v50

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_22b

    .line 1422
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "]}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1424
    :cond_22b
    const-string v56, ""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_24a

    .line 1425
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "]}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1427
    :cond_24a
    const-string v56, ""

    move-object/from16 v0, v51

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_269

    .line 1428
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "]}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1189
    .end local v22    # "j":I
    .end local v41    # "str_checkbox_comma":Ljava/lang/String;
    .end local v42    # "str_checkbox_input_comma":Ljava/lang/String;
    .end local v43    # "str_checkbox_input_prefix":Ljava/lang/String;
    .end local v44    # "str_checkbox_prefix":Ljava/lang/String;
    .end local v45    # "str_choice_input_comma":Ljava/lang/String;
    .end local v46    # "str_choice_input_prefix":Ljava/lang/String;
    .end local v48    # "str_image_prefix":Ljava/lang/String;
    .end local v49    # "str_input_comma":Ljava/lang/String;
    .end local v50    # "str_input_prefix":Ljava/lang/String;
    .end local v51    # "str_scan_prefix":Ljava/lang/String;
    :cond_269
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_1e

    .line 1213
    .restart local v22    # "j":I
    .restart local v41    # "str_checkbox_comma":Ljava/lang/String;
    .restart local v42    # "str_checkbox_input_comma":Ljava/lang/String;
    .restart local v43    # "str_checkbox_input_prefix":Ljava/lang/String;
    .restart local v44    # "str_checkbox_prefix":Ljava/lang/String;
    .restart local v45    # "str_choice_input_comma":Ljava/lang/String;
    .restart local v46    # "str_choice_input_prefix":Ljava/lang/String;
    .restart local v48    # "str_image_prefix":Ljava/lang/String;
    .restart local v49    # "str_input_comma":Ljava/lang/String;
    .restart local v50    # "str_input_prefix":Ljava/lang/String;
    .restart local v51    # "str_scan_prefix":Ljava/lang/String;
    :cond_26d
    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v54

    .line 1214
    .local v54, "view_field_row":Landroid/view/View;
    sget v56, Lic/buzzebeeslib/R$id;->layoutQuestion:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout;

    .line 1215
    .local v34, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v34, :cond_37c

    .line 1217
    sget v56, Lic/buzzebeeslib/R$id;->layoutInfoChoice:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/RelativeLayout;

    .line 1218
    .local v27, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v56, Lic/buzzebeeslib/R$id;->layoutInfoCheckbox:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout;

    .line 1219
    .local v26, "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    sget v56, Lic/buzzebeeslib/R$id;->layoutInfoInput:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout;

    .line 1220
    .local v30, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v56, Lic/buzzebeeslib/R$id;->layoutDate:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 1221
    .local v23, "layoutDate":Landroid/widget/RelativeLayout;
    sget v56, Lic/buzzebeeslib/R$id;->layoutTime:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/RelativeLayout;

    .line 1222
    .local v38, "layoutTime":Landroid/widget/RelativeLayout;
    sget v56, Lic/buzzebeeslib/R$id;->layoutInfoTextArea:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/RelativeLayout;

    .line 1223
    .local v33, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    sget v56, Lic/buzzebeeslib/R$id;->layoutQuestionwithBox:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/RelativeLayout;

    .line 1224
    .local v35, "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    sget v56, Lic/buzzebeeslib/R$id;->layoutScanCodeInput:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/RelativeLayout;

    .line 1225
    .local v37, "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    sget v56, Lic/buzzebeeslib/R$id;->layoutImageInput:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout;

    .line 1226
    .local v24, "layoutImageInput":Landroid/widget/RelativeLayout;
    sget v56, Lic/buzzebeeslib/R$id;->layoutInfoRate:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    .line 1227
    .local v32, "layoutInfoRate":Landroid/widget/LinearLayout;
    sget v56, Lic/buzzebeeslib/R$id;->layoutInfoEmotion:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 1228
    .local v29, "layoutInfoEmotion":Landroid/widget/LinearLayout;
    sget v56, Lic/buzzebeeslib/R$id;->layoutInfoLocation:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout;

    .line 1229
    .local v31, "layoutInfoLocation":Landroid/widget/LinearLayout;
    invoke-virtual/range {v37 .. v37}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_383

    .line 1230
    sget v56, Lic/buzzebeeslib/R$id;->etFieldInputCode:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1232
    .local v11, "etFieldInputCode":Landroid/widget/TextView;
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v56

    const-string v57, ""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_380

    .line 1233
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1234
    const-string v51, ""

    .line 1235
    const-string v49, ","

    .line 1236
    const-string v47, ","

    .line 1237
    const/16 v40, 0x0

    .line 1238
    const/16 v18, 0x1

    .line 1212
    .end local v11    # "etFieldInputCode":Landroid/widget/TextView;
    .end local v23    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v24    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v26    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v27    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v29    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v30    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v31    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v32    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v33    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v35    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v37    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v38    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_37c
    :goto_37c
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1ba

    .line 1240
    .restart local v11    # "etFieldInputCode":Landroid/widget/TextView;
    .restart local v23    # "layoutDate":Landroid/widget/RelativeLayout;
    .restart local v24    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .restart local v26    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .restart local v27    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .restart local v29    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .restart local v30    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .restart local v31    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .restart local v32    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .restart local v33    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .restart local v35    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .restart local v37    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .restart local v38    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_380
    const/16 v40, 0x1

    .line 1242
    goto :goto_37c

    .end local v11    # "etFieldInputCode":Landroid/widget/TextView;
    :cond_383
    invoke-virtual/range {v24 .. v24}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_3f0

    .line 1243
    sget v56, Lic/buzzebeeslib/R$id;->etFieldInputImage:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1245
    .local v12, "etFieldInputImage":Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v56

    const-string v57, ""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_3ed

    .line 1246
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1247
    const-string v48, ""

    .line 1248
    const-string v49, ","

    .line 1249
    const-string v47, ","

    .line 1250
    const/16 v40, 0x0

    .line 1251
    const/16 v18, 0x1

    .line 1252
    goto :goto_37c

    .line 1253
    :cond_3ed
    const/16 v40, 0x1

    .line 1255
    goto :goto_37c

    .end local v12    # "etFieldInputImage":Landroid/widget/TextView;
    :cond_3f0
    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_452

    .line 1256
    sget v56, Lic/buzzebeeslib/R$id;->etFieldInputRateValue:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1257
    .local v15, "etFieldInputRateValue":Landroid/widget/TextView;
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v56

    const-string v57, ""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_44f

    .line 1258
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "{answer:"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1259
    const-string v47, ","

    .line 1260
    const/16 v40, 0x0

    .line 1261
    const/16 v18, 0x1

    .line 1265
    :goto_449
    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v22

    .line 1266
    goto/16 :goto_37c

    .line 1263
    :cond_44f
    const/16 v40, 0x1

    goto :goto_449

    .line 1266
    .end local v15    # "etFieldInputRateValue":Landroid/widget/TextView;
    :cond_452
    invoke-virtual/range {v29 .. v29}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_4b4

    .line 1267
    sget v56, Lic/buzzebeeslib/R$id;->etFieldInputMode:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1268
    .local v14, "etFieldInputMode":Landroid/widget/TextView;
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v56

    const-string v57, ""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_4b1

    .line 1269
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "{answer:"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1270
    const-string v47, ","

    .line 1271
    const/16 v40, 0x0

    .line 1272
    const/16 v18, 0x1

    .line 1276
    :goto_4ab
    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v22

    .line 1277
    goto/16 :goto_37c

    .line 1274
    :cond_4b1
    const/16 v40, 0x1

    goto :goto_4ab

    .line 1277
    .end local v14    # "etFieldInputMode":Landroid/widget/TextView;
    :cond_4b4
    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_53b

    .line 1278
    sget v56, Lic/buzzebeeslib/R$id;->etFieldInputLocation:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1279
    .local v13, "etFieldInputLocation":Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v56

    const-string v57, ""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_537

    .line 1280
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "{latitude:"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-wide v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lat:D

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ","

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "longitude:"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-wide v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lng:D

    move-wide/from16 v58, v0

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1281
    const-string v47, ","

    .line 1282
    const/16 v40, 0x0

    .line 1283
    const/16 v18, 0x1

    .line 1284
    goto/16 :goto_37c

    .line 1285
    :cond_537
    const/16 v40, 0x1

    .line 1287
    goto/16 :goto_37c

    .end local v13    # "etFieldInputLocation":Landroid/widget/TextView;
    :cond_53b
    invoke-virtual/range {v34 .. v34}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_5b8

    .line 1288
    sget v56, Lic/buzzebeeslib/R$id;->tvFieldAnswer:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 1289
    .local v6, "chkFieldChoice":Landroid/widget/CheckBox;
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v56

    if-eqz v56, :cond_5b4

    .line 1290
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "{answer:"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    add-int/lit8 v58, v17, -0x1

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lic/buzzebeeslib/bean/AdBuzzItem;

    move-object/from16 v0, v56

    iget-object v0, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    add-int/lit8 v58, v22, -0x3

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v56

    iget v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->index:I

    move/from16 v56, v0

    move-object/from16 v0, v57

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1291
    const-string v47, ","

    .line 1292
    const/16 v40, 0x0

    .line 1293
    const/16 v18, 0x1

    .line 1294
    goto/16 :goto_37c

    .line 1295
    :cond_5b4
    const/16 v40, 0x1

    .line 1298
    goto/16 :goto_37c

    .end local v6    # "chkFieldChoice":Landroid/widget/CheckBox;
    :cond_5b8
    invoke-virtual/range {v35 .. v35}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_6e6

    .line 1300
    sget v56, Lic/buzzebeeslib/R$id;->tvFieldAnswerBox:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/CheckBox;

    .line 1301
    .local v52, "tvFieldAnswerBox":Landroid/widget/CheckBox;
    sget v56, Lic/buzzebeeslib/R$id;->layoutInfoAnswerEdt:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    .line 1302
    .local v25, "layoutInfoAnswerEdt":Landroid/widget/RelativeLayout;
    invoke-virtual/range {v52 .. v52}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v56

    if-eqz v56, :cond_641

    .line 1303
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "{answer:"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    add-int/lit8 v58, v17, -0x1

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lic/buzzebeeslib/bean/AdBuzzItem;

    move-object/from16 v0, v56

    iget-object v0, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    add-int/lit8 v58, v22, -0x3

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v56

    iget v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->index:I

    move/from16 v56, v0

    move-object/from16 v0, v57

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", choice_input :\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\"}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1304
    const-string v47, ","

    .line 1305
    const/16 v40, 0x0

    .line 1306
    const/16 v18, 0x1

    .line 1308
    :cond_641
    invoke-virtual/range {v25 .. v25}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_6d6

    .line 1309
    sget v56, Lic/buzzebeeslib/R$id;->etFieldInputAnswer:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 1310
    .local v9, "etFieldInputAnswer":Landroid/widget/EditText;
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->length()I

    move-result v56

    if-lez v56, :cond_6d6

    .line 1311
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "{answer:"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    add-int/lit8 v58, v17, -0x1

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lic/buzzebeeslib/bean/AdBuzzItem;

    move-object/from16 v0, v56

    iget-object v0, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    add-int/lit8 v58, v22, -0x3

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v56

    iget v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->index:I

    move/from16 v56, v0

    move-object/from16 v0, v57

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", choice_input :\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\"}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1312
    const-string v47, ","

    .line 1313
    const/16 v40, 0x0

    .line 1314
    const/16 v18, 0x1

    .line 1317
    .end local v9    # "etFieldInputAnswer":Landroid/widget/EditText;
    :cond_6d6
    invoke-virtual/range {v52 .. v52}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v56

    if-nez v56, :cond_37c

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-eqz v56, :cond_37c

    .line 1318
    const/16 v40, 0x1

    .line 1321
    goto/16 :goto_37c

    .end local v25    # "layoutInfoAnswerEdt":Landroid/widget/RelativeLayout;
    .end local v52    # "tvFieldAnswerBox":Landroid/widget/CheckBox;
    :cond_6e6
    invoke-virtual/range {v27 .. v27}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_7ad

    .line 1322
    sget v56, Lic/buzzebeeslib/R$id;->chkFieldChoice:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 1323
    .restart local v6    # "chkFieldChoice":Landroid/widget/CheckBox;
    sget v56, Lic/buzzebeeslib/R$id;->layoutInfoChoiceEdt:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/RelativeLayout;

    .line 1324
    .local v28, "layoutInfoChoiceEdt":Landroid/widget/RelativeLayout;
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v56

    if-eqz v56, :cond_76b

    .line 1325
    const/16 v21, 0x1

    .line 1326
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    add-int/lit8 v58, v17, -0x1

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lic/buzzebeeslib/bean/AdBuzzItem;

    move-object/from16 v0, v56

    iget-object v0, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    add-int/lit8 v58, v22, -0x3

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v56

    iget v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->index:I

    move/from16 v56, v0

    move-object/from16 v0, v57

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1327
    const-string v43, ""

    .line 1328
    const-string v42, ","

    .line 1329
    const-string v47, ","

    .line 1330
    const/16 v40, 0x0

    .line 1331
    const/16 v18, 0x1

    .line 1333
    :cond_76b
    invoke-virtual/range {v28 .. v28}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_79d

    .line 1334
    sget v56, Lic/buzzebeeslib/R$id;->etFieldInputChoice:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 1335
    .local v10, "etFieldInputChoice":Landroid/widget/EditText;
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->length()I

    move-result v56

    if-lez v56, :cond_79d

    .line 1336
    const-string v43, ""

    .line 1337
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1338
    const/16 v40, 0x0

    .line 1339
    const/16 v18, 0x1

    .line 1342
    .end local v10    # "etFieldInputChoice":Landroid/widget/EditText;
    :cond_79d
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v56

    if-nez v56, :cond_37c

    invoke-virtual/range {v28 .. v28}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-eqz v56, :cond_37c

    .line 1343
    const/16 v40, 0x1

    .line 1345
    goto/16 :goto_37c

    .end local v6    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v28    # "layoutInfoChoiceEdt":Landroid/widget/RelativeLayout;
    :cond_7ad
    invoke-virtual/range {v26 .. v26}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_82a

    .line 1346
    sget v56, Lic/buzzebeeslib/R$id;->chkFieldCheckbox:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 1347
    .local v5, "chkFieldCheckbox":Landroid/widget/CheckBox;
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v56

    if-eqz v56, :cond_826

    .line 1348
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    add-int/lit8 v58, v17, -0x1

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lic/buzzebeeslib/bean/AdBuzzItem;

    move-object/from16 v0, v56

    iget-object v0, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    add-int/lit8 v58, v22, -0x3

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v56

    iget v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->index:I

    move/from16 v56, v0

    move-object/from16 v0, v57

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1349
    const-string v44, ""

    .line 1350
    const-string v41, ","

    .line 1351
    const-string v47, ","

    .line 1352
    const/16 v40, 0x0

    .line 1353
    const/16 v18, 0x1

    .line 1354
    goto/16 :goto_37c

    .line 1355
    :cond_826
    const/16 v40, 0x1

    .line 1358
    goto/16 :goto_37c

    .end local v5    # "chkFieldCheckbox":Landroid/widget/CheckBox;
    :cond_82a
    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_899

    .line 1359
    sget v56, Lic/buzzebeeslib/R$id;->etFieldInput:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 1360
    .local v8, "etFieldInput":Landroid/widget/EditText;
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v56

    const-string v57, ""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_895

    .line 1361
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1362
    const-string v50, ""

    .line 1363
    const-string v49, ","

    .line 1364
    const-string v47, ","

    .line 1365
    const/16 v40, 0x0

    .line 1366
    const/16 v18, 0x1

    .line 1367
    goto/16 :goto_37c

    .line 1368
    :cond_895
    const/16 v40, 0x1

    .line 1370
    goto/16 :goto_37c

    .end local v8    # "etFieldInput":Landroid/widget/EditText;
    :cond_899
    invoke-virtual/range {v38 .. v38}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_908

    .line 1371
    sget v56, Lic/buzzebeeslib/R$id;->etFieldInputTime:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1372
    .local v8, "etFieldInput":Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v56

    const-string v57, ""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_904

    .line 1373
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1374
    const-string v50, ""

    .line 1375
    const-string v49, ","

    .line 1376
    const-string v47, ","

    .line 1377
    const/16 v40, 0x0

    .line 1378
    const/16 v18, 0x1

    .line 1379
    goto/16 :goto_37c

    .line 1380
    :cond_904
    const/16 v40, 0x1

    .line 1382
    goto/16 :goto_37c

    .end local v8    # "etFieldInput":Landroid/widget/TextView;
    :cond_908
    invoke-virtual/range {v23 .. v23}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_977

    .line 1383
    sget v56, Lic/buzzebeeslib/R$id;->etFieldInputDate:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1384
    .restart local v8    # "etFieldInput":Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v56

    const-string v57, ""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_973

    .line 1385
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1386
    const-string v50, ""

    .line 1387
    const-string v49, ","

    .line 1388
    const-string v47, ","

    .line 1389
    const/16 v40, 0x0

    .line 1390
    const/16 v18, 0x1

    .line 1391
    goto/16 :goto_37c

    .line 1392
    :cond_973
    const/16 v40, 0x1

    .line 1394
    goto/16 :goto_37c

    .end local v8    # "etFieldInput":Landroid/widget/TextView;
    :cond_977
    invoke-virtual/range {v33 .. v33}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v56

    if-nez v56, :cond_37c

    .line 1395
    sget v56, Lic/buzzebeeslib/R$id;->etFieldTextArea:I

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    .line 1396
    .local v16, "etFieldTextArea":Landroid/widget/EditText;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v56

    const-string v57, ""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_9e2

    .line 1397
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1398
    const-string v50, ""

    .line 1399
    const-string v49, ","

    .line 1400
    const-string v47, ","

    .line 1401
    const/16 v40, 0x0

    .line 1402
    const/16 v18, 0x1

    .line 1403
    goto/16 :goto_37c

    .line 1404
    :cond_9e2
    const/16 v40, 0x1

    goto/16 :goto_37c

    .line 1415
    .end local v16    # "etFieldTextArea":Landroid/widget/EditText;
    .end local v23    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v24    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v26    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v27    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v29    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v30    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v31    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v32    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v33    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v34    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .end local v35    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v37    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v38    # "layoutTime":Landroid/widget/RelativeLayout;
    .end local v54    # "view_field_row":Landroid/view/View;
    :cond_9e6
    const-string v56, ""

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_a13

    if-eqz v21, :cond_a13

    .line 1416
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, "],check_box_input :\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\"}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1417
    goto/16 :goto_20c

    .line 1418
    :cond_a13
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v57, ",{check_box:[],check_box_input :\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "\"}"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_20c

    .line 1438
    .end local v22    # "j":I
    .end local v36    # "layoutRootSurvey":Landroid/widget/LinearLayout;
    .end local v41    # "str_checkbox_comma":Ljava/lang/String;
    .end local v42    # "str_checkbox_input_comma":Ljava/lang/String;
    .end local v43    # "str_checkbox_input_prefix":Ljava/lang/String;
    .end local v44    # "str_checkbox_prefix":Ljava/lang/String;
    .end local v45    # "str_choice_input_comma":Ljava/lang/String;
    .end local v46    # "str_choice_input_prefix":Ljava/lang/String;
    .end local v48    # "str_image_prefix":Ljava/lang/String;
    .end local v49    # "str_input_comma":Ljava/lang/String;
    .end local v50    # "str_input_prefix":Ljava/lang/String;
    .end local v51    # "str_scan_prefix":Ljava/lang/String;
    .end local v55    # "view_pager_survey":Landroid/view/View;
    :catch_a34
    move-exception v7

    .line 1439
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_46
.end method

.method public actionSubmitValid(I)Ljava/lang/String;
    .registers 43
    .param p1, "position"    # I

    .prologue
    .line 1452
    const-string v5, ""

    .line 1453
    .local v5, "alertText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static/range {v38 .. v38}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v37

    .line 1454
    .local v37, "view_pager_survey":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    sub-int v39, v39, p1

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/AdBuzzItem;

    .line 1455
    .local v3, "adBuzzItem":Lic/buzzebeeslib/bean/AdBuzzItem;
    sget v38, Lic/buzzebeeslib/R$id;->layoutRootSurvey:I

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    .line 1456
    .local v32, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v32, :cond_42

    .line 1457
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_38
    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v38

    move/from16 v0, v19

    move/from16 v1, v38

    if-lt v0, v1, :cond_43

    .line 1692
    .end local v19    # "j":I
    :cond_42
    :goto_42
    return-object v5

    .line 1458
    .restart local v19    # "j":I
    :cond_43
    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    .line 1459
    .local v36, "view_field_row":Landroid/view/View;
    sget v38, Lic/buzzebeeslib/R$id;->layoutQuestion:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout;

    .line 1460
    .local v30, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v30, :cond_14b

    .line 1461
    sget v38, Lic/buzzebeeslib/R$id;->layoutInfoChoice:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 1462
    .local v23, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v38, Lic/buzzebeeslib/R$id;->layoutInfoCheckbox:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 1463
    .local v22, "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    sget v38, Lic/buzzebeeslib/R$id;->layoutInfoInput:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout;

    .line 1464
    .local v26, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v38, Lic/buzzebeeslib/R$id;->layoutDate:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 1465
    .local v20, "layoutDate":Landroid/widget/RelativeLayout;
    sget v38, Lic/buzzebeeslib/R$id;->layoutTime:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout;

    .line 1466
    .local v34, "layoutTime":Landroid/widget/RelativeLayout;
    sget v38, Lic/buzzebeeslib/R$id;->layoutScanCodeInput:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/RelativeLayout;

    .line 1467
    .local v33, "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    sget v38, Lic/buzzebeeslib/R$id;->layoutImageInput:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 1468
    .local v21, "layoutImageInput":Landroid/widget/RelativeLayout;
    sget v38, Lic/buzzebeeslib/R$id;->layoutInfoTextArea:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/RelativeLayout;

    .line 1469
    .local v29, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    sget v38, Lic/buzzebeeslib/R$id;->layoutQuestionwithBox:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout;

    .line 1470
    .local v31, "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    sget v38, Lic/buzzebeeslib/R$id;->layoutInfoRate:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 1471
    .local v28, "layoutInfoRate":Landroid/widget/LinearLayout;
    sget v38, Lic/buzzebeeslib/R$id;->layoutInfoEmotion:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 1472
    .local v25, "layoutInfoEmotion":Landroid/widget/LinearLayout;
    sget v38, Lic/buzzebeeslib/R$id;->layoutInfoLocation:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 1473
    .local v27, "layoutInfoLocation":Landroid/widget/LinearLayout;
    invoke-virtual/range {v33 .. v33}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_15b

    .line 1474
    sget v38, Lic/buzzebeeslib/R$id;->etFieldInputCode:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1475
    .local v12, "etFieldInputCode":Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-nez v38, :cond_14f

    .line 1476
    iget-object v0, v3, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v39, v19, -0x3

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->required:Z

    move/from16 v38, v0

    if-eqz v38, :cond_140

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1481
    :cond_140
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    .line 1457
    .end local v12    # "etFieldInputCode":Landroid/widget/TextView;
    .end local v20    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v21    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v22    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v23    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v25    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v26    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v27    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v28    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v29    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v31    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v33    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v34    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_14b
    :goto_14b
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_38

    .line 1484
    .restart local v12    # "etFieldInputCode":Landroid/widget/TextView;
    .restart local v20    # "layoutDate":Landroid/widget/RelativeLayout;
    .restart local v21    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .restart local v22    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .restart local v23    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .restart local v25    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .restart local v26    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .restart local v27    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .restart local v28    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .restart local v29    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .restart local v31    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .restart local v33    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .restart local v34    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto :goto_14b

    .line 1486
    .end local v12    # "etFieldInputCode":Landroid/widget/TextView;
    :cond_15b
    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_1ca

    .line 1487
    sget v38, Lic/buzzebeeslib/R$id;->etFieldInputImage:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1488
    .local v13, "etFieldInputImage":Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-nez v38, :cond_1be

    .line 1489
    iget-object v0, v3, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v39, v19, -0x3

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->required:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1b2

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1494
    :cond_1b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto :goto_14b

    .line 1497
    :cond_1be
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto :goto_14b

    .line 1499
    .end local v13    # "etFieldInputImage":Landroid/widget/TextView;
    :cond_1ca
    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_212

    .line 1500
    sget v38, Lic/buzzebeeslib/R$id;->etFieldInputRate:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1501
    .local v16, "etFieldInputRate":Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v38

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_1f9

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1505
    :cond_1f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_14b

    .line 1508
    .end local v16    # "etFieldInputRate":Landroid/widget/TextView;
    :cond_212
    invoke-virtual/range {v25 .. v25}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_25a

    .line 1509
    sget v38, Lic/buzzebeeslib/R$id;->etFieldInputMode:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1510
    .local v15, "etFieldInputMode":Landroid/widget/TextView;
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v38

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_241

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1514
    :cond_241
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_14b

    .line 1517
    .end local v15    # "etFieldInputMode":Landroid/widget/TextView;
    :cond_25a
    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_2a2

    .line 1518
    sget v38, Lic/buzzebeeslib/R$id;->etFieldInputLocation:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1519
    .local v14, "etFieldInputLocation":Landroid/widget/TextView;
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v38

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_289

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1523
    :cond_289
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_14b

    .line 1526
    .end local v14    # "etFieldInputLocation":Landroid/widget/TextView;
    :cond_2a2
    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_3cf

    .line 1527
    sget v38, Lic/buzzebeeslib/R$id;->tvFieldAnswer:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 1528
    .local v8, "chkFieldChoice":Landroid/widget/CheckBox;
    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v38

    if-eqz v38, :cond_3b6

    .line 1529
    iget-object v0, v3, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->force_correct_answer:Z

    move/from16 v38, v0

    if-eqz v38, :cond_376

    new-instance v39, Ljava/lang/StringBuilder;

    iget-object v0, v3, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v40, v19, -0x3

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v38

    iget v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->index:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    iget-object v0, v3, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->answer:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_376

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->survey_wrong_answer:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->incorrectTime:I
    invoke-static/range {v38 .. v38}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$24(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v39

    add-int/lit8 v39, v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$2(Lic/buzzebeeslib/activity/SurveyFragmentActivity;I)V

    .line 1532
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1533
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->incorrectTime:I
    invoke-static/range {v39 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$24(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    const-string v39, "OK"

    new-instance v40, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$21;

    invoke-direct/range {v40 .. v41}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$21;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual/range {v38 .. v40}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1542
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1543
    .local v4, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1547
    .end local v4    # "alert":Landroid/app/AlertDialog;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_376
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$2(Lic/buzzebeeslib/activity/SurveyFragmentActivity;I)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    iget-object v0, v3, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v40, v19, -0x3

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->direct_choice:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    iput-object v0, v1, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->strNextPage:Ljava/lang/String;

    goto/16 :goto_42

    .line 1554
    :cond_3b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_14b

    .line 1558
    .end local v8    # "chkFieldChoice":Landroid/widget/CheckBox;
    :cond_3cf
    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_42d

    .line 1559
    sget v38, Lic/buzzebeeslib/R$id;->chkFieldCheckbox:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 1561
    .local v7, "chkFieldCheckbox":Landroid/widget/CheckBox;
    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v38

    if-eqz v38, :cond_3f4

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1565
    :cond_3f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    .line 1569
    const-string v38, "OAT"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, " actionSubmitValidtvFieldCheckbox= "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14b

    .line 1570
    .end local v7    # "chkFieldCheckbox":Landroid/widget/CheckBox;
    :cond_42d
    invoke-virtual/range {v31 .. v31}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_512

    .line 1571
    sget v38, Lic/buzzebeeslib/R$id;->tvFieldAnswerBox:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/CheckBox;

    .line 1572
    .local v35, "tvFieldAnswerBox":Landroid/widget/CheckBox;
    sget v38, Lic/buzzebeeslib/R$id;->etFieldInputAnswer:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 1573
    .local v10, "etFieldInputAnswer":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const-string v39, "input_method"

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 1574
    .local v18, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v10}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1575
    invoke-virtual/range {v35 .. v35}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v38

    if-eqz v38, :cond_4a3

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v39, v0

    iget-object v0, v3, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v40, v19, -0x3

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->direct_choice:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    iput-object v0, v1, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->strNextPage:Ljava/lang/String;

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1580
    :cond_4a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    .line 1583
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-lez v38, :cond_4d9

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1587
    :cond_4d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    .line 1592
    const-string v38, "OAT"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, " actionSubmitValidtvFieldAnswer= "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14b

    .line 1593
    .end local v10    # "etFieldInputAnswer":Landroid/widget/EditText;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v35    # "tvFieldAnswerBox":Landroid/widget/CheckBox;
    :cond_512
    invoke-virtual/range {v23 .. v23}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_5e1

    .line 1594
    sget v38, Lic/buzzebeeslib/R$id;->chkFieldChoice:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 1595
    .restart local v8    # "chkFieldChoice":Landroid/widget/CheckBox;
    sget v38, Lic/buzzebeeslib/R$id;->etFieldInputChoice:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 1596
    .local v11, "etFieldInputChoice":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const-string v39, "input_method"

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 1597
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v11}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1599
    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v38

    if-eqz v38, :cond_560

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1603
    :cond_560
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    .line 1607
    sget v38, Lic/buzzebeeslib/R$id;->layoutInfoChoiceEdt:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout;

    .line 1608
    .local v24, "layoutInfoChoiceEdt":Landroid/widget/RelativeLayout;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_5bf

    .line 1609
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-lez v38, :cond_5a8

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1613
    :cond_5a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    .line 1618
    :cond_5bf
    const-string v38, "OAT"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, " actionSubmitValidchkFieldChoice= "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14b

    .line 1619
    .end local v8    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v11    # "etFieldInputChoice":Landroid/widget/EditText;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v24    # "layoutInfoChoiceEdt":Landroid/widget/RelativeLayout;
    :cond_5e1
    invoke-virtual/range {v26 .. v26}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_758

    .line 1620
    sget v38, Lic/buzzebeeslib/R$id;->etFieldInput:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 1621
    .local v9, "etFieldInput":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const-string v39, "input_method"

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 1622
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v9}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1623
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-nez v38, :cond_682

    .line 1624
    iget-object v0, v3, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v39, v19, -0x3

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->required:Z

    move/from16 v38, v0

    if-eqz v38, :cond_655

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1629
    :cond_655
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    .line 1646
    :cond_660
    const-string v38, "OAT"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, " actionSubmitValidetFieldInput= "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14b

    .line 1632
    :cond_682
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    .line 1633
    invoke-virtual {v9}, Landroid/widget/EditText;->getInputType()I

    move-result v38

    const/16 v39, 0x20

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_6bc

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->validateEmail(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_6bc

    .line 1635
    const-string v5, "Email invalid"

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1640
    :cond_6bc
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v39

    iget-object v0, v3, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v40, v19, -0x3

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v38

    iget v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->min_length:I

    move/from16 v38, v0

    move/from16 v0, v39

    move/from16 v1, v38

    if-ge v0, v1, :cond_660

    .line 1641
    new-instance v39, Ljava/lang/StringBuilder;

    const-string v38, "Please input "

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v40, v19, -0x3

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " minimun "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    iget-object v0, v3, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v40, v19, -0x3

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v38

    iget v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->min_length:I

    move/from16 v38, v0

    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1647
    .end local v9    # "etFieldInput":Landroid/widget/EditText;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_758
    invoke-virtual/range {v34 .. v34}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_7e6

    .line 1648
    sget v38, Lic/buzzebeeslib/R$id;->etFieldInputTime:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1649
    .local v9, "etFieldInput":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const-string v39, "input_method"

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 1650
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v9}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1651
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-nez v38, :cond_7d9

    .line 1652
    iget-object v0, v3, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v39, v19, -0x3

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->required:Z

    move/from16 v38, v0

    if-eqz v38, :cond_7cc

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1657
    :cond_7cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_14b

    .line 1660
    :cond_7d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_14b

    .line 1662
    .end local v9    # "etFieldInput":Landroid/widget/TextView;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_7e6
    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_874

    .line 1663
    sget v38, Lic/buzzebeeslib/R$id;->etFieldInputDate:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1664
    .restart local v9    # "etFieldInput":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const-string v39, "input_method"

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 1665
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v9}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1666
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-nez v38, :cond_867

    .line 1667
    iget-object v0, v3, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v39, v19, -0x3

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->required:Z

    move/from16 v38, v0

    if-eqz v38, :cond_85a

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    sget v39, Lic/buzzebeeslib/R$string;->msg_alert_survey:I

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_42

    .line 1672
    :cond_85a
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_14b

    .line 1675
    :cond_867
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_14b

    .line 1677
    .end local v9    # "etFieldInput":Landroid/widget/TextView;
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_874
    invoke-virtual/range {v29 .. v29}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v38

    if-nez v38, :cond_14b

    .line 1678
    sget v38, Lic/buzzebeeslib/R$id;->etFieldTextArea:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    .line 1679
    .local v17, "etFieldTextArea":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const-string v39, "input_method"

    invoke-virtual/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 1680
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1681
    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-nez v38, :cond_8c2

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_14b

    .line 1684
    :cond_8c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    goto/16 :goto_14b
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 533
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 500
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq p2, v4, :cond_62

    .line 501
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/AdBuzzItem;

    .line 502
    .local v0, "adBuzzItem":Lic/buzzebeeslib/bean/AdBuzzItem;
    iget-object v4, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    if-eqz v4, :cond_58

    .line 503
    iget-object v4, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Content_type:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 504
    invoke-direct {p0, v0, p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewVideo(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 505
    .local v3, "viewVideo":Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v3, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 506
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-static {v4, p2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity;I)V

    .line 507
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-static {v4, v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$2(Lic/buzzebeeslib/activity/SurveyFragmentActivity;I)V

    .line 508
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lic/buzzebeeslib/control/CustomPager;->setPagingEnabled(Z)V

    .line 527
    .end local v3    # "viewVideo":Landroid/view/View;
    :goto_3d
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gViewRoot:Landroid/view/View;

    return-object v4

    .line 511
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_40
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-static {v4, v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$2(Lic/buzzebeeslib/activity/SurveyFragmentActivity;I)V

    .line 512
    invoke-direct {p0, v0, p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewPhoto(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 513
    .local v1, "viewPhoto":Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v1, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 514
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lic/buzzebeeslib/control/CustomPager;->setPagingEnabled(Z)V

    goto :goto_3d

    .line 518
    .end local v1    # "viewPhoto":Landroid/view/View;
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_58
    invoke-direct {p0, v0, p1, p2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewSurvey(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 519
    .local v2, "viewSurvey":Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v2, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_3d

    .line 522
    .end local v0    # "adBuzzItem":Lic/buzzebeeslib/bean/AdBuzzItem;
    .end local v2    # "viewSurvey":Landroid/view/View;
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_62
    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/AdBuzzItem;

    .line 523
    .restart local v0    # "adBuzzItem":Lic/buzzebeeslib/bean/AdBuzzItem;
    invoke-direct {p0, v0, p1, p2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewDescription(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 524
    .restart local v2    # "viewSurvey":Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v2, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_3d
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 495
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resetSurveyKeyboard(I)V
    .registers 21
    .param p1, "position"    # I

    .prologue
    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static/range {v17 .. v17}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1844
    .local v16, "view_pager_survey":Landroid/view/View;
    sget v17, Lic/buzzebeeslib/R$id;->layoutRootSurvey:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 1845
    .local v14, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v14, :cond_25

    .line 1847
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1d
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_26

    .line 1879
    .end local v8    # "j":I
    :cond_25
    return-void

    .line 1848
    .restart local v8    # "j":I
    :cond_26
    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1849
    .local v15, "view_field_row":Landroid/view/View;
    sget v17, Lic/buzzebeeslib/R$id;->layoutQuestion:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 1850
    .local v12, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v12, :cond_99

    .line 1851
    sget v17, Lic/buzzebeeslib/R$id;->layoutInfoChoice:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 1852
    .local v9, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v17, Lic/buzzebeeslib/R$id;->layoutInfoInput:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 1853
    .local v10, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v17, Lic/buzzebeeslib/R$id;->layoutInfoTextArea:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 1854
    .local v11, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    sget v17, Lic/buzzebeeslib/R$id;->layoutQuestionwithBox:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 1856
    .local v13, "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v17

    if-eqz v17, :cond_99

    .line 1858
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v17

    if-nez v17, :cond_9c

    .line 1859
    sget v17, Lic/buzzebeeslib/R$id;->chkFieldChoice:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1860
    .local v2, "chkFieldChoice":Landroid/widget/CheckBox;
    sget v17, Lic/buzzebeeslib/R$id;->etFieldInputChoice:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1861
    .local v5, "etFieldInputChoice":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    const-string v18, "input_method"

    invoke-virtual/range {v17 .. v18}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 1862
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1847
    .end local v2    # "chkFieldChoice":Landroid/widget/CheckBox;
    .end local v5    # "etFieldInputChoice":Landroid/widget/EditText;
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v9    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v10    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v11    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v13    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    :cond_99
    :goto_99
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 1863
    .restart local v9    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .restart local v10    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .restart local v11    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .restart local v13    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    :cond_9c
    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v17

    if-nez v17, :cond_c8

    .line 1864
    sget v17, Lic/buzzebeeslib/R$id;->etFieldInputAnswer:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1865
    .local v4, "etFieldInputAnswer":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    const-string v18, "input_method"

    invoke-virtual/range {v17 .. v18}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 1866
    .restart local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_99

    .line 1867
    .end local v4    # "etFieldInputAnswer":Landroid/widget/EditText;
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_c8
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v17

    if-nez v17, :cond_f4

    .line 1868
    sget v17, Lic/buzzebeeslib/R$id;->etFieldInput:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1869
    .local v3, "etFieldInput":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    const-string v18, "input_method"

    invoke-virtual/range {v17 .. v18}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 1870
    .restart local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_99

    .line 1871
    .end local v3    # "etFieldInput":Landroid/widget/EditText;
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_f4
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v17

    if-nez v17, :cond_99

    .line 1872
    sget v17, Lic/buzzebeeslib/R$id;->etFieldTextArea:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 1873
    .local v6, "etFieldTextArea":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    const-string v18, "input_method"

    invoke-virtual/range {v17 .. v18}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 1874
    .restart local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_99
.end method
