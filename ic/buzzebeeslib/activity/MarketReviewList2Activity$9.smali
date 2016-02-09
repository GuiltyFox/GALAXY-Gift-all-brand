.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$9;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity;->initialLayoutComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

.field private final synthetic val$activityRootView:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Landroid/widget/RelativeLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$9;->val$activityRootView:Landroid/widget/RelativeLayout;

    .line 2190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .prologue
    .line 2192
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$9;->val$activityRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$9;->val$activityRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 2195
    .local v0, "heightDiff":I
    const-string v2, "OAT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ScreenHeight= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gScreenHeight:I
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$28(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", KeyboardHeight= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    const/16 v2, 0x96

    if-le v0, v2, :cond_63

    .line 2197
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lic/buzzebeeslib/LibUserLogin;->SetKeyboardHeight(Landroid/content/Context;I)Z

    .line 2198
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getStatusBarHeight()I

    move-result v3

    sub-int v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2199
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentImage:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$26(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2200
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentSticker:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$27(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2203
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_63
    return-void
.end method
