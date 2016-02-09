.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$8;
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$8;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$8;->val$activityRootView:Landroid/widget/RelativeLayout;

    .line 2170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    .line 2173
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2174
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$8;->val$activityRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2176
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$8;->val$activityRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 2177
    .local v0, "heightDiff":I
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$8;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-static {v2, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$25(Lic/buzzebeeslib/activity/MarketReviewList2Activity;I)V

    .line 2178
    const/16 v2, 0x64

    if-le v0, v2, :cond_40

    .line 2180
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$8;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentImage:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$26(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2181
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$8;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentSticker:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$27(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2182
    const-string v2, "OAT"

    const-string v3, "K.Open"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    :goto_3f
    return-void

    .line 2185
    :cond_40
    const-string v2, "OAT"

    const-string v3, "K.Close"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method
