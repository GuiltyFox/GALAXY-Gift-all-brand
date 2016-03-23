.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$QTPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SurveyFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QTPagerAdapter"
.end annotation


# instance fields
.field private arrImg:[Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;[Ljava/lang/String;)V
    .registers 4
    .param p2, "arrImg"    # [Ljava/lang/String;

    .prologue
    .line 3566
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$QTPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 3567
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$QTPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 3568
    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$QTPagerAdapter;->arrImg:[Ljava/lang/String;

    .line 3569
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 3573
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 3574
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .registers 2
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 3578
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 3582
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$QTPagerAdapter;->arrImg:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 8
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 3588
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$QTPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/bzbs/lib/survey/R$layout;->qt_content:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3589
    .local v0, "imageLayout":Landroid/view/View;
    sget v2, Lcom/bzbs/lib/survey/R$id;->imgGiftWelcome:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3590
    .local v1, "imgQT":Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3591
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$QTPagerAdapter;->arrImg:[Ljava/lang/String;

    array-length v2, v2

    if-ge p2, v2, :cond_3f

    .line 3592
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3593
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$QTPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$QTPagerAdapter;->arrImg:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget v3, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 3598
    :goto_39
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "view":Landroid/view/ViewGroup;
    invoke-virtual {p1, v0, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 3599
    return-object v0

    .line 3595
    .restart local p1    # "view":Landroid/view/ViewGroup;
    :cond_3f
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_39
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 3605
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 3610
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 3614
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .registers 2
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 3619
    return-void
.end method
