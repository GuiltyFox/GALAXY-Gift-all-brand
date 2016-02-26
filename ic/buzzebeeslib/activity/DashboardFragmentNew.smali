.class public Lic/buzzebeeslib/activity/DashboardFragmentNew;
.super Landroid/support/v4/app/Fragment;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;,
        Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;,
        Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;,
        Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_dashboard"


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private final LOGCATLC:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private booleanCancelRunnable:Z

.field private gDashboardAdapter:Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gFont:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gImageHeight:I

.field private gImageWidth:I

.field private gIsUpdateViewForUser:Z

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mLeak:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 57
    const-string v0, "lib.dashboard.fragment.lc"

    iput-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->LOGCATLC:Ljava/lang/String;

    .line 58
    const-string v0, "lib.dashboard"

    iput-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->LOGCAT:Ljava/lang/String;

    .line 60
    const-class v0, Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Lic/buzzebeeslib/holder/DashboardNewHolder;

    invoke-direct {v0}, Lic/buzzebeeslib/holder/DashboardNewHolder;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    .line 82
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->booleanCancelRunnable:Z

    .line 361
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gIsUpdateViewForUser:Z

    .line 56
    return-void
.end method

.method private InitialDashboardItemBig(Lic/buzzebeeslib/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 18
    .param p1, "dashboardItem"    # Lic/buzzebeeslib/bean/DashboardItem;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "is_top"    # Z
    .param p5, "is_bottom"    # Z

    .prologue
    .line 740
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 741
    .local v7, "inflater":Landroid/view/LayoutInflater;
    sget v0, Lic/buzzebeeslib/R$layout;->bz_dashboard_item_big:I

    invoke-virtual {v7, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 743
    .local v10, "viewDashboardItem":Landroid/view/View;
    if-eqz p4, :cond_1e

    .line 744
    sget v0, Lic/buzzebeeslib/R$idDashboardItem;->viewTop:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 745
    .local v11, "viewTop":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 747
    .end local v11    # "viewTop":Landroid/view/View;
    :cond_1e
    if-eqz p5, :cond_2a

    .line 748
    sget v0, Lic/buzzebeeslib/R$idDashboardItem;->viewBottom:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 749
    .local v9, "viewBottom":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 752
    .end local v9    # "viewBottom":Landroid/view/View;
    :cond_2a
    sget v0, Lic/buzzebeeslib/R$idDashboardItem;->imgPhoto:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 753
    .local v2, "imgPhoto":Landroid/widget/ImageView;
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p1}, Lic/buzzebeeslib/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 755
    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/DashboardFragmentNew$3;

    invoke-direct {v1, p0, v2}, Lic/buzzebeeslib/activity/DashboardFragmentNew$3;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 768
    invoke-virtual {p1}, Lic/buzzebeeslib/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 770
    sget v0, Lic/buzzebeeslib/R$idDashboardItem;->tvCaption:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 771
    .local v8, "tvCaption":Landroid/widget/TextView;
    iget-object v0, p1, Lic/buzzebeeslib/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v0, :cond_94

    iget-object v0, p1, Lic/buzzebeeslib/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 772
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/kit55p.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 773
    .local v6, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 774
    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 775
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 776
    iget-object v0, p1, Lic/buzzebeeslib/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    .end local v6    # "fontDefault":Landroid/graphics/Typeface;
    :goto_8b
    new-instance v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$4;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/DashboardFragmentNew$4;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Lic/buzzebeeslib/bean/DashboardItem;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    return-object v10

    .line 778
    :cond_94
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8b
.end method

.method private InitialDashboardItemBigPager(Lic/buzzebeeslib/bean/DashboardItem;ZZ)Landroid/view/View;
    .registers 18
    .param p1, "dashboardItem"    # Lic/buzzebeeslib/bean/DashboardItem;
    .param p2, "is_top"    # Z
    .param p3, "is_bottom"    # Z

    .prologue
    .line 794
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 795
    .local v6, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dashboard_item_big_pager:I

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 796
    .local v12, "viewDashboardItem":Landroid/view/View;
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->pagerPhoto:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager;

    .line 798
    .local v10, "pagerPhoto":Landroid/support/v4/view/ViewPager;
    if-eqz p2, :cond_27

    .line 799
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->viewTop:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 800
    .local v13, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 802
    .end local v13    # "viewTop":Landroid/view/View;
    :cond_27
    if-eqz p3, :cond_33

    .line 803
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->viewBottom:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 804
    .local v11, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 807
    .end local v11    # "viewBottom":Landroid/view/View;
    :cond_33
    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/DashboardFragmentNew$5;

    invoke-direct {v3, p0, v10}, Lic/buzzebeeslib/activity/DashboardFragmentNew$5;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 821
    new-instance v9, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lic/buzzebeeslib/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    invoke-direct {v9, p0, v2, v3}, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 822
    .local v9, "objDashboardItemPagerAdapter":Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;
    invoke-virtual {v10, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 824
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->layoutPagerPrev:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 825
    .local v8, "layoutPagerPrev":Landroid/widget/RelativeLayout;
    new-instance v2, Lic/buzzebeeslib/activity/DashboardFragmentNew$6;

    invoke-direct {v2, p0, v10}, Lic/buzzebeeslib/activity/DashboardFragmentNew$6;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 842
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->layoutPagerNext:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 843
    .local v7, "layoutPagerNext":Landroid/widget/RelativeLayout;
    new-instance v2, Lic/buzzebeeslib/activity/DashboardFragmentNew$7;

    invoke-direct {v2, p0, v10}, Lic/buzzebeeslib/activity/DashboardFragmentNew$7;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 861
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;

    invoke-direct {v1, p0, v10}, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    .line 862
    .local v1, "taskSlideImage":Ljava/util/TimerTask;
    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 864
    return-object v12
.end method

.method private InitialDashboardItemMedium(Lic/buzzebeeslib/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 18
    .param p1, "dashboardItem"    # Lic/buzzebeeslib/bean/DashboardItem;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z
    .param p4, "is_top"    # Z
    .param p5, "is_bottom"    # Z

    .prologue
    .line 896
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 897
    .local v7, "inflater":Landroid/view/LayoutInflater;
    sget v0, Lic/buzzebeeslib/R$layout;->bz_dashboard_item_medium:I

    invoke-virtual {v7, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 899
    .local v10, "viewDashboardItem":Landroid/view/View;
    if-eqz p4, :cond_1e

    .line 900
    sget v0, Lic/buzzebeeslib/R$idDashboardItem;->viewTop:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 901
    .local v11, "viewTop":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 903
    .end local v11    # "viewTop":Landroid/view/View;
    :cond_1e
    if-eqz p5, :cond_2a

    .line 904
    sget v0, Lic/buzzebeeslib/R$idDashboardItem;->viewBottom:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 905
    .local v9, "viewBottom":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 908
    .end local v9    # "viewBottom":Landroid/view/View;
    :cond_2a
    sget v0, Lic/buzzebeeslib/R$idDashboardItem;->imgPhoto:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 909
    .local v2, "imgPhoto":Landroid/widget/ImageView;
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p1}, Lic/buzzebeeslib/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 911
    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/DashboardFragmentNew$8;

    invoke-direct {v1, p0, v2}, Lic/buzzebeeslib/activity/DashboardFragmentNew$8;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 924
    invoke-virtual {p1}, Lic/buzzebeeslib/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 926
    sget v0, Lic/buzzebeeslib/R$idDashboardItem;->tvCaption:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 927
    .local v8, "tvCaption":Landroid/widget/TextView;
    iget-object v0, p1, Lic/buzzebeeslib/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v0, :cond_94

    iget-object v0, p1, Lic/buzzebeeslib/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 928
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/kit55p.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 929
    .local v6, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 930
    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 931
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 932
    iget-object v0, p1, Lic/buzzebeeslib/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    .end local v6    # "fontDefault":Landroid/graphics/Typeface;
    :goto_8b
    new-instance v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$9;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/DashboardFragmentNew$9;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Lic/buzzebeeslib/bean/DashboardItem;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    return-object v10

    .line 934
    :cond_94
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8b
.end method

.method private InitialDashboardItemMediumPager(Lic/buzzebeeslib/bean/DashboardItem;ZZ)Landroid/view/View;
    .registers 18
    .param p1, "dashboardItem"    # Lic/buzzebeeslib/bean/DashboardItem;
    .param p2, "is_top"    # Z
    .param p3, "is_bottom"    # Z

    .prologue
    .line 950
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 951
    .local v6, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dashboard_item_medium_pager:I

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 952
    .local v12, "viewDashboardItem":Landroid/view/View;
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->pagerPhoto:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager;

    .line 954
    .local v10, "pagerPhoto":Landroid/support/v4/view/ViewPager;
    if-eqz p2, :cond_27

    .line 955
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->viewTop:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 956
    .local v13, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 958
    .end local v13    # "viewTop":Landroid/view/View;
    :cond_27
    if-eqz p3, :cond_33

    .line 959
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->viewBottom:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 960
    .local v11, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 963
    .end local v11    # "viewBottom":Landroid/view/View;
    :cond_33
    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/DashboardFragmentNew$10;

    invoke-direct {v3, p0, v10}, Lic/buzzebeeslib/activity/DashboardFragmentNew$10;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 977
    new-instance v9, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lic/buzzebeeslib/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    invoke-direct {v9, p0, v2, v3}, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 978
    .local v9, "objDashboardItemPagerAdapter":Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardItemPagerAdapter;
    invoke-virtual {v10, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 980
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->layoutPagerPrev:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 981
    .local v8, "layoutPagerPrev":Landroid/widget/RelativeLayout;
    new-instance v2, Lic/buzzebeeslib/activity/DashboardFragmentNew$11;

    invoke-direct {v2, p0, v10}, Lic/buzzebeeslib/activity/DashboardFragmentNew$11;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 998
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->layoutPagerNext:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 999
    .local v7, "layoutPagerNext":Landroid/widget/RelativeLayout;
    new-instance v2, Lic/buzzebeeslib/activity/DashboardFragmentNew$12;

    invoke-direct {v2, p0, v10}, Lic/buzzebeeslib/activity/DashboardFragmentNew$12;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1016
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1017
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;

    invoke-direct {v1, p0, v10}, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V

    .line 1018
    .local v1, "taskSlideImage":Ljava/util/TimerTask;
    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1020
    return-object v12
.end method

.method private InitialDashboardItemSmall(Lic/buzzebeeslib/bean/DashboardItem;Lic/buzzebeeslib/bean/DashboardItem;ZZ)Landroid/view/View;
    .registers 25
    .param p1, "dashboardItemA"    # Lic/buzzebeeslib/bean/DashboardItem;
    .param p2, "dashboardItemB"    # Lic/buzzebeeslib/bean/DashboardItem;
    .param p3, "is_top"    # Z
    .param p4, "is_bottom"    # Z

    .prologue
    .line 1024
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 1025
    .local v12, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dashboard_item_small:I

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 1027
    .local v18, "viewDashboardItem":Landroid/view/View;
    if-eqz p3, :cond_23

    .line 1028
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->viewTop:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 1029
    .local v19, "viewTop":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1031
    .end local v19    # "viewTop":Landroid/view/View;
    :cond_23
    if-eqz p4, :cond_33

    .line 1032
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->viewBottom:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 1033
    .local v17, "viewBottom":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    .end local v17    # "viewBottom":Landroid/view/View;
    :cond_33
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->layoutItemA:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 1037
    .local v13, "layoutItemA":Landroid/widget/RelativeLayout;
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->imgPhotoA:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1038
    .local v4, "imgPhotoA":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1040
    invoke-virtual {v4}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/DashboardFragmentNew$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v4, v1}, Lic/buzzebeeslib/activity/DashboardFragmentNew$13;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/widget/ImageView;Lic/buzzebeeslib/bean/DashboardItem;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1060
    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1062
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->tvCaptionA:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1063
    .local v15, "tvCaptionA":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v2, v0, Lic/buzzebeeslib/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v2, :cond_14e

    move-object/from16 v0, p1

    iget-object v2, v0, Lic/buzzebeeslib/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14e

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/kit55p.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 1065
    .local v11, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1066
    invoke-virtual {v15}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1067
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1068
    move-object/from16 v0, p1

    iget-object v2, v0, Lic/buzzebeeslib/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    .end local v11    # "fontDefault":Landroid/graphics/Typeface;
    :goto_ae
    new-instance v2, Lic/buzzebeeslib/activity/DashboardFragmentNew$14;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lic/buzzebeeslib/activity/DashboardFragmentNew$14;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Lic/buzzebeeslib/bean/DashboardItem;)V

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->layoutItemB:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 1082
    .local v14, "layoutItemB":Landroid/widget/RelativeLayout;
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->imgPhotoB:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1084
    .local v7, "imgPhotoB":Landroid/widget/ImageView;
    if-eqz p2, :cond_15d

    .line 1085
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p2 .. p2}, Lic/buzzebeeslib/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    sget v9, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1087
    invoke-virtual {v7}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/DashboardFragmentNew$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v7, v1}, Lic/buzzebeeslib/activity/DashboardFragmentNew$15;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/widget/ImageView;Lic/buzzebeeslib/bean/DashboardItem;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Lic/buzzebeeslib/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1111
    sget v2, Lic/buzzebeeslib/R$idDashboardItem;->tvCaptionB:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1112
    .local v16, "tvCaptionB":Landroid/widget/TextView;
    move-object/from16 v0, p2

    iget-object v2, v0, Lic/buzzebeeslib/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v2, :cond_155

    move-object/from16 v0, p2

    iget-object v2, v0, Lic/buzzebeeslib/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_155

    .line 1113
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/kit55p.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 1114
    .restart local v11    # "fontDefault":Landroid/graphics/Typeface;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1115
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1116
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1117
    move-object/from16 v0, p2

    iget-object v2, v0, Lic/buzzebeeslib/bean/DashboardItem;->line1:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    .end local v11    # "fontDefault":Landroid/graphics/Typeface;
    :goto_13d
    new-instance v2, Lic/buzzebeeslib/activity/DashboardFragmentNew$16;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lic/buzzebeeslib/activity/DashboardFragmentNew$16;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Lic/buzzebeeslib/bean/DashboardItem;)V

    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1135
    .end local v16    # "tvCaptionB":Landroid/widget/TextView;
    :goto_14d
    return-object v18

    .line 1070
    .end local v7    # "imgPhotoB":Landroid/widget/ImageView;
    .end local v14    # "layoutItemB":Landroid/widget/RelativeLayout;
    :cond_14e
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ae

    .line 1119
    .restart local v7    # "imgPhotoB":Landroid/widget/ImageView;
    .restart local v14    # "layoutItemB":Landroid/widget/RelativeLayout;
    .restart local v16    # "tvCaptionB":Landroid/widget/TextView;
    :cond_155
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13d

    .line 1132
    .end local v16    # "tvCaptionB":Landroid/widget/TextView;
    :cond_15d
    const/4 v2, 0x4

    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_14d
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/DashboardFragmentNew;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->processJsonDashboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/DashboardFragmentNew;)Lic/buzzebeeslib/holder/DashboardNewHolder;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/DashboardFragmentNew;Lic/buzzebeeslib/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 7

    .prologue
    .line 895
    invoke-direct/range {p0 .. p5}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->InitialDashboardItemMedium(Lic/buzzebeeslib/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/DashboardFragmentNew;Lic/buzzebeeslib/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
    .registers 7

    .prologue
    .line 739
    invoke-direct/range {p0 .. p5}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->InitialDashboardItemBig(Lic/buzzebeeslib/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/DashboardFragmentNew;)V
    .registers 1

    .prologue
    .line 627
    invoke-direct {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->loadDashboard()V

    return-void
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/DashboardFragmentNew;Lic/buzzebeeslib/bean/DashboardItem;)V
    .registers 2

    .prologue
    .line 1138
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->handleDashboardItem(Lic/buzzebeeslib/bean/DashboardItem;)V

    return-void
.end method

.method private bindingEvent()V
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v0, v0, Lic/buzzebeeslib/holder/DashboardNewHolder;->listDashboard:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRefreshComplete()V

    .line 349
    return-void
.end method

.method private handleDashboardItem(Lic/buzzebeeslib/bean/DashboardItem;)V
    .registers 11
    .param p1, "dashboardItem"    # Lic/buzzebeeslib/bean/DashboardItem;

    .prologue
    .line 1139
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_7

    .line 1209
    :cond_6
    :goto_6
    return-void

    .line 1144
    :cond_7
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "campaign"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1145
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1146
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "campaign_id"

    iget v6, p1, Lic/buzzebeeslib/bean/DashboardItem;->id:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1147
    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 1148
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2f
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bzbs_campaign"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1149
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1150
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "campaign_id"

    iget v6, p1, Lic/buzzebeeslib/bean/DashboardItem;->id:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1151
    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 1152
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_57
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bzbs_campaign_ads"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 1153
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1154
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "campaign_id"

    iget v6, p1, Lic/buzzebeeslib/bean/DashboardItem;->id:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1155
    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 1156
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_7f
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 1157
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/MarketPlaceActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1158
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "cat"

    iget-object v6, p1, Lic/buzzebeeslib/bean/DashboardItem;->cat:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1160
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a8
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1162
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "link"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 1163
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p1, Lic/buzzebeeslib/bean/DashboardItem;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1164
    .local v4, "openUrlIntent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1165
    .end local v4    # "openUrlIntent":Landroid/content/Intent;
    :cond_d6
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "openapp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13b

    .line 1167
    :try_start_e4
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p1, Lic/buzzebeeslib/bean/DashboardItem;->and_ns:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1168
    .local v0, "LaunchApp":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_f5} :catch_f7

    goto/16 :goto_6

    .line 1169
    .end local v0    # "LaunchApp":Landroid/content/Intent;
    :catch_f7
    move-exception v2

    .line 1171
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_f8
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "market://details?id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p1, Lic/buzzebeeslib/bean/DashboardItem;->and_ns:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V
    :try_end_117
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f8 .. :try_end_117} :catch_119

    goto/16 :goto_6

    .line 1172
    :catch_119
    move-exception v1

    .line 1173
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://play.google.com/store/apps/details?id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p1, Lic/buzzebeeslib/bean/DashboardItem;->and_ns:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1176
    .end local v1    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_13b
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bzbs_market"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 1177
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/MarketPlaceActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1178
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1179
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_15d
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "menu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1181
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "newsfeeds"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1183
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "activities"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1185
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "friends"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1187
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bzbs_fanpage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1189
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "badges"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1191
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "marketplace"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1193
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkins"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1195
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "my_profile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1197
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "qr_code"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1199
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "inapps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1201
    iget-object v5, p1, Lic/buzzebeeslib/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "about_us"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_6
.end method

.method private initScreenSize()V
    .registers 3

    .prologue
    .line 340
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 341
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 345
    return-void
.end method

.method private loadDashboard()V
    .registers 5

    .prologue
    .line 628
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 629
    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v1, v1, Lic/buzzebeeslib/holder/DashboardNewHolder;->pbLoadingDashboard:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_14

    .line 630
    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v1, v1, Lic/buzzebeeslib/holder/DashboardNewHolder;->pbLoadingDashboard:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 633
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/main/dashboard?app_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lic/buzzebeeslib/LibConst;->DASHBOARD_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "url":Ljava/lang/String;
    const-string v1, "lib.dashboard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dashboard_load= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/4 v1, 0x0

    new-instance v2, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;)V

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 637
    .end local v0    # "url":Ljava/lang/String;
    :cond_4c
    return-void
.end method

.method private loadDashboardFromCatch()V
    .registers 7

    .prologue
    .line 612
    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v1, v1, Lic/buzzebeeslib/holder/DashboardNewHolder;->imgLoading:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 614
    const-string v1, "bzbs_dashboard_items_402705486466922"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v1, v4}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "catch_dashboard_items":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 616
    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->processJsonDashboard(Ljava/lang/String;)V

    .line 618
    const-string v1, "bzbs_dashboard_items_402705486466922"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v1, v4}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    .line 619
    .local v2, "times_sec":J
    const-wide/16 v4, 0xe10

    cmp-long v1, v2, v4

    if-lez v1, :cond_30

    .line 620
    invoke-direct {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->loadDashboard()V

    .line 625
    .end local v2    # "times_sec":J
    :cond_30
    :goto_30
    return-void

    .line 623
    :cond_31
    invoke-direct {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->loadDashboard()V

    goto :goto_30
.end method

.method private processJsonDashboard(Ljava/lang/String;)V
    .registers 15
    .param p1, "jsonText"    # Ljava/lang/String;

    .prologue
    .line 687
    :try_start_0
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 688
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v7, "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/DashboardItem;>;"
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 691
    .local v10, "jsonArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_11
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v9, v0, :cond_2f

    .line 700
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v0, v0, Lic/buzzebeeslib/holder/DashboardNewHolder;->imgLoading:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v0, v0, Lic/buzzebeeslib/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 703
    const/4 v9, 0x0

    :goto_28
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2b} :catch_58

    move-result v0

    if-lt v9, v0, :cond_5f

    .line 737
    .end local v7    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/DashboardItem;>;"
    .end local v9    # "i":I
    .end local v10    # "jsonArray":Lorg/json/JSONArray;
    :cond_2e
    :goto_2e
    return-void

    .line 693
    .restart local v7    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/DashboardItem;>;"
    .restart local v9    # "i":I
    .restart local v10    # "jsonArray":Lorg/json/JSONArray;
    :cond_2f
    :try_start_2f
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 694
    .local v11, "jsonDashboard":Lorg/json/JSONObject;
    new-instance v0, Lic/buzzebeeslib/bean/DashboardItem;

    invoke-direct {v0, v11}, Lic/buzzebeeslib/bean/DashboardItem;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_3b} :catch_3e

    .line 691
    .end local v11    # "jsonDashboard":Lorg/json/JSONObject;
    :goto_3b
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 695
    :catch_3e
    move-exception v8

    .line 696
    .local v8, "e":Lorg/json/JSONException;
    :try_start_3f
    const-string v0, "lib.dashboard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(processJsonDashboard):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_57} :catch_58

    goto :goto_3b

    .line 734
    .end local v7    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/DashboardItem;>;"
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v9    # "i":I
    .end local v10    # "jsonArray":Lorg/json/JSONArray;
    :catch_58
    move-exception v8

    .line 735
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v0, "Invalid dashboard data format!"

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_2e

    .line 704
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v7    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/DashboardItem;>;"
    .restart local v9    # "i":I
    .restart local v10    # "jsonArray":Lorg/json/JSONArray;
    :cond_5f
    :try_start_5f
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/DashboardItem;

    .line 706
    .local v1, "dashboardItem":Lic/buzzebeeslib/bean/DashboardItem;
    const/4 v4, 0x0

    .line 707
    .local v4, "is_top":Z
    const/4 v5, 0x0

    .line 708
    .local v5, "is_bottom":Z
    if-nez v9, :cond_6a

    const/4 v4, 0x1

    .line 709
    :cond_6a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v9, v0, :cond_73

    const/4 v5, 0x1

    .line 711
    :cond_73
    iget-object v0, v1, Lic/buzzebeeslib/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "small"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 712
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/DashboardItem;

    .line 713
    .local v6, "dashboardItemNext":Lic/buzzebeeslib/bean/DashboardItem;
    iget-object v0, v6, Lic/buzzebeeslib/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "small"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 714
    add-int/lit8 v9, v9, 0x1

    .line 715
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v0, v0, Lic/buzzebeeslib/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v6, v4, v5}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->InitialDashboardItemSmall(Lic/buzzebeeslib/bean/DashboardItem;Lic/buzzebeeslib/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 703
    .end local v6    # "dashboardItemNext":Lic/buzzebeeslib/bean/DashboardItem;
    :goto_a4
    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    .line 717
    .restart local v6    # "dashboardItemNext":Lic/buzzebeeslib/bean/DashboardItem;
    :cond_a7
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v0, v0, Lic/buzzebeeslib/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v4, v5}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->InitialDashboardItemSmall(Lic/buzzebeeslib/bean/DashboardItem;Lic/buzzebeeslib/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_a4

    .line 719
    .end local v6    # "dashboardItemNext":Lic/buzzebeeslib/bean/DashboardItem;
    :cond_b4
    iget-object v0, v1, Lic/buzzebeeslib/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 720
    iget-object v0, v1, Lic/buzzebeeslib/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "campaign_rotate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 721
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v0, v0, Lic/buzzebeeslib/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v4, v5}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->InitialDashboardItemMediumPager(Lic/buzzebeeslib/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_a4

    .line 723
    :cond_dc
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v12, v0, Lic/buzzebeeslib/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->InitialDashboardItemMedium(Lic/buzzebeeslib/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_a4

    .line 726
    :cond_eb
    iget-object v0, v1, Lic/buzzebeeslib/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "campaign_rotate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 727
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v0, v0, Lic/buzzebeeslib/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v4, v5}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->InitialDashboardItemBigPager(Lic/buzzebeeslib/bean/DashboardItem;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_a4

    .line 729
    :cond_105
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v12, v0, Lic/buzzebeeslib/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->InitialDashboardItemBig(Lic/buzzebeeslib/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_113
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_113} :catch_58

    goto :goto_a4
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 334
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 337
    return-void
.end method

.method private setPointsFromCatchAndRefresh()V
    .registers 3

    .prologue
    .line 374
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 397
    :goto_6
    return-void

    .line 377
    :cond_7
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private switchPagerByCat(Ljava/lang/String;)V
    .registers 3
    .param p1, "cat"    # Ljava/lang/String;

    .prologue
    .line 1212
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1219
    :cond_6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 222
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_16

    .line 223
    invoke-direct {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->bindingEvent()V

    .line 225
    :cond_16
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    iput-boolean v8, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->booleanCancelRunnable:Z

    .line 111
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/kit55p.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gFont:Landroid/graphics/Typeface;

    .line 114
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->setRetainInstance(Z)V

    .line 121
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 124
    iget-object v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    const-string v7, "UA-42649771-1"

    invoke-virtual {v6, v7}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 127
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v6

    const/16 v7, 0x1e

    invoke-virtual {v6, v7}, Lcom/google/analytics/tracking/android/GAServiceManager;->setDispatchPeriod(I)V

    .line 135
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gHandler:Landroid/os/Handler;

    .line 138
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 139
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 141
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "cache_dashboard"

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 143
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 144
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 145
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gScreenHeight:I

    .line 146
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gScreenWidth:I

    .line 148
    iget v5, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gScreenWidth:I

    .line 149
    .local v5, "width":I
    iget v2, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gScreenHeight:I

    .line 151
    .local v2, "height":I
    if-le v2, v5, :cond_cf

    .end local v2    # "height":I
    :goto_9f
    div-int/lit8 v3, v2, 0x2

    .line 152
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 154
    iget-object v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 155
    iget-object v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v6, v8}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 157
    iget v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gScreenWidth:I

    iput v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gImageWidth:I

    .line 158
    iget v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gImageWidth:I

    mul-int/lit16 v6, v6, 0xc8

    div-int/lit16 v6, v6, 0x12c

    iput v6, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gImageHeight:I

    .line 159
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_cf
    move v2, v5

    .line 151
    goto :goto_9f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    sget v4, Lic/buzzebeeslib/R$layout;->bz_dashboard_new:I

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    .line 173
    new-instance v4, Lic/buzzebeeslib/holder/DashboardNewHolder;

    invoke-direct {v4}, Lic/buzzebeeslib/holder/DashboardNewHolder;-><init>()V

    iput-object v4, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    .line 174
    iget-object v5, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v4, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    sget v6, Lic/buzzebeeslib/R$id;->listDashboard:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/control/PullToRefreshListView;

    iput-object v4, v5, Lic/buzzebeeslib/holder/DashboardNewHolder;->listDashboard:Lic/buzzebeeslib/control/PullToRefreshListView;

    .line 175
    invoke-direct {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->initScreenSize()V

    .line 177
    if-eqz p3, :cond_26

    .line 178
    invoke-direct {p0, p3}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 181
    :cond_26
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$layout;->bz_dashboard_row_new:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 182
    .local v1, "headerView":Landroid/view/View;
    iget-object v4, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v4, v4, Lic/buzzebeeslib/holder/DashboardNewHolder;->listDashboard:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v4, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 184
    iget-object v5, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    sget v4, Lic/buzzebeeslib/R$idDashboard;->imgLoading:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lic/buzzebeeslib/holder/DashboardNewHolder;->imgLoading:Landroid/widget/ImageView;

    .line 185
    iget-object v5, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    sget v4, Lic/buzzebeeslib/R$idDashboard;->layoutDashboardItem:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v5, Lic/buzzebeeslib/holder/DashboardNewHolder;->layoutDashboardItem:Landroid/widget/LinearLayout;

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v2, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;

    invoke-direct {v4, p0, v2}, Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gDashboardAdapter:Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;

    .line 189
    iget-object v4, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v4, v4, Lic/buzzebeeslib/holder/DashboardNewHolder;->listDashboard:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v5, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gDashboardAdapter:Lic/buzzebeeslib/activity/DashboardFragmentNew$DashboardAdapter;

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iget-object v4, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    iget-object v4, v4, Lic/buzzebeeslib/holder/DashboardNewHolder;->listDashboard:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v5, Lic/buzzebeeslib/activity/DashboardFragmentNew$1;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew$1;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;)V

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnRefreshListener(Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;)V

    .line 200
    :try_start_75
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/DSNSKW_.TTF"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 201
    .local v0, "fontHeader":Landroid/graphics/Typeface;
    iget-object v4, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    sget v5, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 202
    .local v3, "tvPageHeader":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_90} :catch_93

    .line 207
    .end local v0    # "fontHeader":Landroid/graphics/Typeface;
    .end local v3    # "tvPageHeader":Landroid/widget/TextView;
    :goto_90
    iget-object v4, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    return-object v4

    .line 203
    :catch_93
    move-exception v4

    goto :goto_90
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 291
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 295
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 296
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 297
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->booleanCancelRunnable:Z

    .line 280
    iput-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;

    .line 281
    iput-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mLeak:Landroid/view/View;

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gIsUpdateViewForUser:Z

    .line 287
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 301
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 305
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 255
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 260
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 261
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 264
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 245
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lic/buzzebeeslib/LibConst;->APP_CONTEXT:Landroid/content/Context;

    .line 246
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 249
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0, v2}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 250
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->updateViewForUser()V

    .line 251
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 321
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 233
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 268
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 272
    return-void
.end method

.method public refreshDashboard()V
    .registers 1

    .prologue
    .line 608
    invoke-direct {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->loadDashboard()V

    .line 609
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/DashboardFragmentNew$2;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/DashboardFragmentNew$2;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method

.method public updateViewForUser()V
    .registers 2

    .prologue
    .line 364
    invoke-direct {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->setPointsFromCatchAndRefresh()V

    .line 366
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gIsUpdateViewForUser:Z

    if-nez v0, :cond_a

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew;->gIsUpdateViewForUser:Z

    .line 370
    :cond_a
    invoke-direct {p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->loadDashboardFromCatch()V

    .line 371
    return-void
.end method
