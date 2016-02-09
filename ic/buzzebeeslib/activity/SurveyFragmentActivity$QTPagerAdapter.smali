.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$QTPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SurveyFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QTPagerAdapter"
.end annotation


# instance fields
.field private arrImg:[Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;[Ljava/lang/String;)V
    .registers 4
    .param p2, "arrImg"    # [Ljava/lang/String;

    .prologue
    .line 2576
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$QTPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 2577
    invoke-virtual {p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$QTPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 2578
    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$QTPagerAdapter;->arrImg:[Ljava/lang/String;

    .line 2579
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 2583
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 2584
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .registers 2
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 2588
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 2592
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$QTPagerAdapter;->arrImg:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 2598
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$QTPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lic/buzzebeeslib/R$layout;->qt_content:I

    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 2599
    .local v6, "imageLayout":Landroid/view/View;
    sget v0, Lic/buzzebeeslib/R$id;->imgGiftWelcome:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2600
    .local v2, "imgQT":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2601
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$QTPagerAdapter;->arrImg:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_34

    .line 2602
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2603
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$QTPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$21(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$QTPagerAdapter;->arrImg:[Ljava/lang/String;

    aget-object v1, v1, p2

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2608
    :goto_2e
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "view":Landroid/view/ViewGroup;
    invoke-virtual {p1, v6, v5}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 2609
    return-object v6

    .line 2605
    .restart local p1    # "view":Landroid/view/ViewGroup;
    :cond_34
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2e
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 2615
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2620
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 2624
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .registers 2
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 2629
    return-void
.end method
