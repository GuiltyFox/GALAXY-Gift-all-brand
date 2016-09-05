.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$13;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V
    .registers 2

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$13;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1604
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1605
    packed-switch v0, :pswitch_data_30

    .line 1617
    :goto_9
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1618
    return v1

    .line 1607
    :pswitch_d
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1608
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$13;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_9

    .line 1612
    :pswitch_1e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1613
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$13;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->l:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_9

    .line 1605
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_d
        :pswitch_1e
    .end packed-switch
.end method
